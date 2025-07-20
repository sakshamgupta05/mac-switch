#!/usr/bin/env bash

# Script to install toggle-magic-mouse.sh to ~/bin with MAC address replacement

# Check if MAC address argument is provided
if [[ $# -eq 0 ]]; then
    echo "Error: MAC address argument is required"
    echo "Usage: $0 <mac_address>"
    echo "Example: $0 'AA:BB:CC:DD:EE:FF'"
    exit 1
fi

MAC_ADDRESS="$1"

# Create ~/bin directory if it doesn't exist
mkdir -p ~/bin

# Define source and destination paths
SOURCE_SCRIPT="toggle-magic-mouse.sh"
DEST_SCRIPT="$HOME/bin/toggle-magic-mouse.sh"

# Check if source script exists
if [[ ! -f "$SOURCE_SCRIPT" ]]; then
    echo "Error: Source script '$SOURCE_SCRIPT' not found in current directory"
    exit 1
fi

# Copy the script and replace the MAC address placeholder
sed "s/<<MAC_ADDRESS>>/$MAC_ADDRESS/g" "$SOURCE_SCRIPT" > "$DEST_SCRIPT"

# Make the destination script executable
chmod +x "$DEST_SCRIPT"

echo "Successfully installed toggle-magic-mouse.sh to $DEST_SCRIPT"
echo "MAC address placeholder replaced with: $MAC_ADDRESS"
echo ""
echo "You can now run the script from anywhere using:"
echo "  toggle-magic-mouse.sh"
echo ""
echo "Or add ~/bin to your PATH if not already added:"
echo "  export PATH=\"\$HOME/bin:\$PATH\"" 