# Auto-deploy script for WoW addons (Windows)
$ADDON_NAME = Split-Path -Leaf $PWD
$WOW_PATH = "C:\Program Files (x86)\World of Warcraft\_retail_"
$TARGET_PATH = "$WOW_PATH\Interface\AddOns\$ADDON_NAME"

Write-Host "Deploying $ADDON_NAME to $TARGET_PATH" -ForegroundColor Green

# Use robocopy for fast copying, exclude non-addon files
robocopy . $TARGET_PATH /MIR /XD .git .claude /XF local_deploy.ps1 local_deploy.sh .gitignore /NFL /NDL /NJH /NJS /nc /ns /np

Write-Host "[OK] Done!" -ForegroundColor Green
