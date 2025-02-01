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

        # Get GitHub repository from environment
        self.github_repo = os.environ.get('GITHUB_REPOSITORY')
        if not self.github_repo:
            raise EnvironmentError("GITHUB_REPOSITORY environment variable not set")

        # Setup API tokens
        self.github_token = os.environ.get('GITHUB_TOKEN')
        self.cf_api_key = os.environ.get('CF_API_KEY')
        if not self.github_token or not self.cf_api_key:
            raise EnvironmentError("GITHUB_TOKEN and CF_API_KEY must be set")

        # CurseForge API configuration
        self.cf_api_url = "https://wow.curseforge.com/api"
        self.cf_project_id = self._get_cf_project_id()  # You'll need to set this up

    def _get_cf_project_id(self) -> int:
        """Get CurseForge project ID from environment or config."""
        project_id = os.environ.get('CF_PROJECT_ID')
        if not project_id:
            raise EnvironmentError("CF_PROJECT_ID environment variable not set")
        return int(project_id)

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

    def _create_github_release(self, version: str, release_notes: Optional[str]):
        """Create a GitHub release using the API."""
        headers = {
            'Authorization': f'token {self.github_token}',
            'Accept': 'application/vnd.github.v3+json'
        }

        # Create release
        release_data = {
            'tag_name': f'PeaversTalents-{version}',
            'name': f'PeaversTalents {version}',
            'body': release_notes or f'Release version {version}',
            'draft': False,
            'prerelease': False
        }

        response = requests.post(
            f'https://api.github.com/repos/{self.github_repo}/releases',
            headers=headers,
            json=release_data
        )
        response.raise_for_status()

        # Upload release asset
        release = response.json()
        zip_file = self._create_release_zip(version)

        with open(zip_file, 'rb') as f:
            upload_headers = {
                'Authorization': f'token {self.github_token}',
                'Content-Type': 'application/zip'
            }
            upload_url = release['upload_url'].replace(
                '{?name,label}', f'?name={zip_file}'
            )
            response = requests.post(
                upload_url,
                headers=upload_headers,
                data=f
            )
            response.raise_for_status()

        return zip_file

    def _upload_to_curseforge(self, version: str, zip_file: str):
        """Upload the release to CurseForge using their API."""
        headers = {
            'X-Api-Token': self.cf_api_key
        }

        # Prepare upload metadata
        metadata = {
            'changelog': f'Release version {version}',
            'changelogType': 'markdown',
            'displayName': f'PeaversTalents {version}',
            'gameVersions': [10200],  # WoW Retail version ID
            'releaseType': 'release'
        }

        # Upload file
        files = {
            'file': open(zip_file, 'rb'),
            'metadata': (None, json.dumps(metadata))
        }

        response = requests.post(
            f'{self.cf_api_url}/projects/{self.cf_project_id}/upload-file',
            headers=headers,
            files=files
        )
        response.raise_for_status()

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

        # Push changes
        self._run_git_command(['push', 'origin', 'HEAD:master'])

        # Create GitHub release and get ZIP file
        zip_file = self._create_github_release(str(new_version), release_notes)

        # Upload to CurseForge
        self._upload_to_curseforge(str(new_version), zip_file)

        # Clean up ZIP file
        try:
            os.remove(zip_file)
        except OSError:
            print(f"Warning: Could not remove temporary file {zip_file}")

        return new_version

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
        print(f"Successfully released version {new_version}")
    except Exception as e:
        print(f"Error during release process: {e}")
        sys.exit(1)

if __name__ == "__main__":
    main()
