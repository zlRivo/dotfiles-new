#!/bin/bash
wal "$@"
STATUS=$? # Get pywal return status
[ $STATUS -ne 0 ] && exit "$STATUS" # Check if error
# Call other scripts
~/.scripts/pywal_to_alacritty_toml.sh
~/.scripts/pywal_to_dunst.sh
~/.scripts/pywal_to_rofi.sh

# Restart programs manually (if running)
pidof dunst && ~/.config/dunst/launch.sh

exit 0
