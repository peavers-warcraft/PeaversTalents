# Auto-deploy script for WoW addons (Windows)
# Detects addon name from current directory and copies to WoW installation

# Get addon name from current directory
$ADDON_NAME = Split-Path -Leaf $PWD

Write-Host "Deploying addon: $ADDON_NAME" -ForegroundColor Green

# Possible WoW installation locations on Windows
$WOW_PATHS = @(
    "${env:ProgramFiles(x86)}\World of Warcraft"
    "${env:ProgramFiles}\World of Warcraft" 
    "${env:ProgramFiles(x86)}\World of Warcraft\_retail_"
    "${env:ProgramFiles}\World of Warcraft\_retail_"
    "${env:ProgramFiles(x86)}\World of Warcraft\_classic_"
    "${env:ProgramFiles}\World of Warcraft\_classic_"
    "C:\World of Warcraft"
    "C:\World of Warcraft\_retail_"
    "C:\World of Warcraft\_classic_"
    "C:\Program Files (x86)\World of Warcraft"
    "C:\Program Files\World of Warcraft"
    "$env:LOCALAPPDATA\Battle.net\World of Warcraft"
)

# Track if any deployment succeeded
$Deployed = $false

# Function to deploy to a specific WoW path
function Deploy-ToPath {
    param($WowPath)
    
    $InterfacePath = Join-Path $WowPath "Interface\AddOns"
    $TargetPath = Join-Path $InterfacePath $ADDON_NAME
    
    if (-not (Test-Path $InterfacePath)) {
        return $false
    }
    
    Write-Host "Found WoW installation at: $WowPath" -ForegroundColor Yellow
    
    # Remove existing addon if present
    if (Test-Path $TargetPath) {
        Write-Host "Removing existing addon..." -ForegroundColor Yellow
        Remove-Item -Path $TargetPath -Recurse -Force
    }
    
    # Copy addon files
    Write-Host "Copying addon files..." -ForegroundColor Yellow
    Copy-Item -Path . -Destination $TargetPath -Recurse -Force
    
    # Remove deployment scripts and git files from target
    Remove-Item -Path "$TargetPath\local_deploy.sh" -ErrorAction SilentlyContinue
    Remove-Item -Path "$TargetPath\local_deploy.ps1" -ErrorAction SilentlyContinue
    Remove-Item -Path "$TargetPath\.git" -Recurse -Force -ErrorAction SilentlyContinue
    Remove-Item -Path "$TargetPath\.gitignore" -ErrorAction SilentlyContinue
    
    Write-Host "✓ Deployed to: $TargetPath" -ForegroundColor Green
    return $true
}

# Try each possible WoW path
foreach ($WowPath in $WOW_PATHS) {
    if (Test-Path $WowPath) {
        if (Deploy-ToPath $WowPath) {
            $Deployed = $true
        }
    }
}

# Check if any deployment succeeded
if (-not $Deployed) {
    Write-Host "✗ Error: Could not find WoW installation" -ForegroundColor Red
    Write-Host "Tried the following locations:" -ForegroundColor Yellow
    foreach ($Path in $WOW_PATHS) {
        Write-Host "  - $Path"
    }
    exit 1
}

Write-Host "✓ Deployment complete!" -ForegroundColor Green
Write-Host "Remember to reload your UI in-game with /reload" -ForegroundColor Yellow