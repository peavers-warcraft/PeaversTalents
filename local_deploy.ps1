# Get the current directory
$currentDir = Get-Location
$currentDirPath = $currentDir.Path

# Extract the folder name from the current path
$folderName = Split-Path -Path $currentDirPath -Leaf

# Construct the WoW addon path using the folder name
$wowAddonPath = "C:\Program Files (x86)\World of Warcraft\_retail_\Interface\AddOns\$folderName"

# Ensure paths don't have quotes which can cause issues with robocopy
$wowAddonPathNormalized = $wowAddonPath

# Create the destination directory if it doesn't exist
if (!(Test-Path -Path $wowAddonPathNormalized)) {
    New-Item -ItemType Directory -Path $wowAddonPathNormalized -Force
}

# Use robocopy to synchronize directories
$result = robocopy $currentDirPath $wowAddonPathNormalized /MIR /FFT /Z /W:1 /R:1

# Display completion message
Write-Host "Directories synchronized successfully. Target directory now mirrors the source."
Write-Host "Addon deployed to: $wowAddonPathNormalized"
