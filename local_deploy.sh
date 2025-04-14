#!/bin/bash

# Define the WoW addon path for macOS
WOW_ADDON_PATH="/Applications/World of Warcraft/_retail_/Interface/AddOns/PeaversTalents"

# Get the current directory
CURRENT_DIR=$(pwd)

# Create the destination directory if it doesn't exist
if [ ! -d "$WOW_ADDON_PATH" ]; then
    mkdir -p "$WOW_ADDON_PATH"
fi

# Use rsync to synchronize directories (equivalent to robocopy /MIR)
# -a: archive mode (preserves permissions, etc.)
# -v: verbose
# -h: human-readable sizes
# --delete: delete files in destination that aren't in source (like /MIR)
rsync -avh --delete "$CURRENT_DIR/" "$WOW_ADDON_PATH/"

# Display completion message
echo "Directories synchronized successfully. Target directory now mirrors the source."
