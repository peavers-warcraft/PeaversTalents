#!/bin/bash

# Get the addon name from the current directory
ADDON_NAME=$(basename "$PWD")
echo "Deploying $ADDON_NAME..."

# Define the WoW addon directory based on the OS
if [[ "$OSTYPE" == "darwin"* ]]; then
    WOW_ADDON_DIR="$HOME/Applications/World of Warcraft/_retail_/Interface/AddOns/$ADDON_NAME"
    
    # Fallback locations if the primary doesn't exist
    if [ ! -d "$WOW_ADDON_DIR" ]; then
        WOW_ADDON_DIR="/Applications/World of Warcraft/_retail_/Interface/AddOns/$ADDON_NAME"
    fi
fi

# Create the directory if it doesn't exist
mkdir -p "$WOW_ADDON_DIR"

# Copy files
cp -r ./* "$WOW_ADDON_DIR/"

echo "$ADDON_NAME has been deployed to $WOW_ADDON_DIR"