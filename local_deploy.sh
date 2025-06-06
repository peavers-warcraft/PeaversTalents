#!/bin/bash

# Auto-deploy script for WoW addons (macOS)
# Detects addon name from current directory and copies to WoW installation

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Get addon name from current directory
ADDON_NAME=$(basename "$PWD")

echo -e "${GREEN}Deploying addon: ${YELLOW}$ADDON_NAME${NC}"

# Possible WoW installation locations on macOS
WOW_PATHS=(
    "/Applications/World of Warcraft"
    "/Applications/World of Warcraft/_retail_"
    "/Applications/World of Warcraft/beta"
    "/Applications/World of Warcraft/_classic_"
    "/Applications/Blizzard/World of Warcraft"
    "$HOME/Applications/World of Warcraft"
)

# Track if any deployment succeeded
DEPLOYED=false

# Function to deploy to a specific WoW path
deploy_to_path() {
    local wow_path="$1"
    local interface_path="$wow_path/Interface/AddOns"
    local target_path="$interface_path/$ADDON_NAME"
    
    if [ ! -d "$interface_path" ]; then
        return 1
    fi
    
    echo -e "${GREEN}Found WoW installation at: ${YELLOW}$wow_path${NC}"
    
    # Remove existing addon if present
    if [ -d "$target_path" ]; then
        echo -e "${YELLOW}Removing existing addon...${NC}"
        rm -rf "$target_path"
    fi
    
    # Copy addon files
    echo -e "${YELLOW}Copying addon files...${NC}"
    cp -r . "$target_path"
    
    # Remove deployment scripts and git files from target
    rm -f "$target_path/local_deploy.sh"
    rm -f "$target_path/local_deploy.ps1"
    rm -rf "$target_path/.git"
    rm -f "$target_path/.gitignore"
    
    echo -e "${GREEN}✓ Deployed to: ${YELLOW}$target_path${NC}"
    return 0
}

# Try each possible WoW path
for wow_path in "${WOW_PATHS[@]}"; do
    if [ -d "$wow_path" ]; then
        if deploy_to_path "$wow_path"; then
            DEPLOYED=true
        fi
    fi
done

# Check if any deployment succeeded
if [ "$DEPLOYED" = false ]; then
    echo -e "${RED}✗ Error: Could not find WoW installation${NC}"
    echo -e "${YELLOW}Tried the following locations:${NC}"
    for path in "${WOW_PATHS[@]}"; do
        echo "  - $path"
    done
    exit 1
fi

echo -e "${GREEN}✓ Deployment complete!${NC}"
echo -e "${YELLOW}Remember to reload your UI in-game with /reload${NC}"