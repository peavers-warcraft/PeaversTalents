#!/usr/bin/env python3
import os
import re
import sys
import json
import subprocess
import zipfile
from enum import Enum
from pathlib import Path
from dataclasses import dataclass
from typing import Optional
import requests

class VersionBumpType(Enum):
    PATCH = "patch"
    MINOR = "minor"
    MAJOR = "major"

@dataclass
class Version:
    major: int
    minor: int
    patch: int

    @classmethod
    def from_string(cls, version_str: str) -> 'Version':
        match = re.match(r'^(\d+)\.(\d+)\.(\d+)$', version_str)
        if not match:
            raise ValueError(f"Invalid version format: {version_str}")
        return cls(
            major=int(match.group(1)),
            minor=int(match.group(2)),
            patch=int(match.group(3))
        )

    def bump(self, bump_type: VersionBumpType) -> 'Version':
        if bump_type == VersionBumpType.MAJOR:
            return Version(self.major + 1, 0, 0)
        elif bump_type == VersionBumpType.MINOR:
            return Version(self.major, self.minor + 1, 0)
        else:  # PATCH
            return Version(self.major, self.minor, self.patch + 1)

    def __str__(self) -> str:
        return f"{self.major}.{self.minor}.{self.patch}"

class ReleaseManager:
    def __init__(self, toc_file: str = "PeaversTalents.toc"):
        self.toc_file = toc_file
        self.current_version = self._get_current_version()

    def _get_current_version(self) -> Version:
        """Extract current version from TOC file."""
        try:
            with open(self.toc_file, 'r') as f:
                content = f.read()
                match = re.search(r'## Version: (\d+\.\d+\.\d+)', content)
                if not match:
                    raise ValueError(f"No version found in {self.toc_file}")
                return Version.from_string(match.group(1))
        except FileNotFoundError:
            raise FileNotFoundError(f"TOC file not found: {self.toc_file}")

    def _update_toc_version(self, new_version: Version):
        """Update version in TOC file."""
        with open(self.toc_file, 'r') as f:
            content = f.read()

        new_content = re.sub(
            r'## Version: \d+\.\d+\.\d+',
            f'## Version: {new_version}',
            content
        )

        with open(self.toc_file, 'w') as f:
            f.write(new_content)

    def _run_git_command(self, command: list[str], check: bool = True) -> subprocess.CompletedProcess:
        """Run a git command and return the result."""
        try:
            return subprocess.run(
                ['git'] + command,
                check=check,
                capture_output=True,
                text=True
            )
        except subprocess.CalledProcessError as e:
            print(f"Git command failed: {e.cmd}")
            print(f"Error output: {e.stderr}")
            raise

    def prepare_release(self, bump_type: VersionBumpType, release_notes: Optional[str] = None) -> Version:
        """Prepare a new release by bumping version and creating git tag."""
        # Calculate new version
        new_version = self.current_version.bump(bump_type)

        # Update TOC file
        self._update_toc_version(new_version)

        # Configure git identity using environment variables
        git_name = os.environ.get('GITHUB_ACTOR', 'GitHub Actions')
        git_email = f"{git_name}@users.noreply.github.com"
        self._run_git_command(['config', 'user.name', git_name])
        self._run_git_command(['config', 'user.email', git_email])

        # Create version commit
        self._run_git_command(['add', self.toc_file])
        commit_msg = f"chore: Update TOC version to {new_version}"
        self._run_git_command(['commit', '-m', commit_msg])

        # Create and push tag
        tag_name = f"PeaversTalents-{new_version}"
        tag_message = f"Release {new_version}"
        if release_notes:
            tag_message += f"\n\n{release_notes}"

        self._run_git_command(['tag', '-a', tag_name, '-m', tag_message])

        # Push changes and tag
        self._run_git_command(['push', 'origin', 'HEAD:master'])
        self._run_git_command(['push', 'origin', tag_name])

        return new_version

    def _create_release_zip(self, version: str) -> str:
        """Create a ZIP file for the release."""
        zip_name = f"PeaversTalents-{version}.zip"

        with zipfile.ZipFile(zip_name, 'w', zipfile.ZIP_DEFLATED) as zf:
            # Add all files except .git, .github, and other unnecessary files
            for root, _, files in os.walk('.'):
                if any(part.startswith('.') for part in Path(root).parts):
                    continue

                for file in files:
                    if file.startswith('.') or file == zip_name:
                        continue

                    file_path = os.path.join(root, file)
                    archive_path = os.path.join('PeaversTalents', file_path[2:])
                    zf.write(file_path, archive_path)

        return zip_name

    def upload_to_curseforge(self, version: Version, zip_file: str):
        """Upload the release to CurseForge."""
        if 'CF_API_KEY' not in os.environ:
            raise EnvironmentError("CF_API_KEY environment variable not set")

        cf_token = os.environ['CF_API_KEY']
        project_id = os.environ.get('CF_PROJECT_ID')
        if not project_id:
            raise EnvironmentError("CF_PROJECT_ID environment variable not set")

        # Get game version IDs
        versions_response = requests.get(
            'https://wow.curseforge.com/api/game/versions',
            headers={'X-Api-Token': cf_token}
        )
        versions_response.raise_for_status()
        game_versions = versions_response.json()

        # Find the latest retail version ID
        retail_versions = [v for v in game_versions if v['gameVersionTypeID'] == 517]  # 517 is retail
        if not retail_versions:
            raise ValueError("Could not find any retail game versions")

        # Sort by API version number and take the latest one
        latest_retail = max(retail_versions, key=lambda x: int(x['apiVersion']))
        retail_version_id = latest_retail['id']
        print(f"Using game version: {latest_retail['name']} (API: {latest_retail['apiVersion']})")

        # Prepare the upload request
        metadata = {
            "changelog": "",  # You can add changelog here if needed
            "changelogType": "markdown",
            "displayName": f"PeaversTalents v{version}",
            "gameVersions": [retail_version_id],
            "releaseType": "release"  # or "alpha", "beta"
        }

        files = {
            'file': (zip_file, open(zip_file, 'rb'), 'application/zip'),
            'metadata': (None, json.dumps(metadata))
        }

        # Upload to CurseForge
        response = requests.post(
            f'https://wow.curseforge.com/api/projects/{project_id}/upload-file',
            headers={'X-Api-Token': cf_token},
            files=files
        )

        if not response.ok:
            print(f"Error uploading to CurseForge: {response.status_code}")
            print(response.text)
            raise Exception("Failed to upload to CurseForge")

        print(f"Successfully uploaded version {version} to CurseForge")

def main():
    # Parse command line arguments
    if len(sys.argv) < 2:
        print("Usage: release_manager.py <patch|minor|major> [release notes]")
        sys.exit(1)

    try:
        bump_type = VersionBumpType(sys.argv[1].lower())
    except ValueError:
        print(f"Invalid bump type: {sys.argv[1]}")
        print("Valid options: patch, minor, major")
        sys.exit(1)

    release_notes = ' '.join(sys.argv[2:]) if len(sys.argv) > 2 else None

    try:
        manager = ReleaseManager()
        new_version = manager.prepare_release(bump_type, release_notes)
        zip_file = manager._create_release_zip(str(new_version))
        manager.upload_to_curseforge(new_version, zip_file)
        print(f"Successfully released version {new_version}")
    except Exception as e:
        print(f"Error during release process: {e}")
        sys.exit(1)

if __name__ == "__main__":
    main()
