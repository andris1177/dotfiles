#!/bin/bash

# Directory to save screenshots
screenshot_dir="/data/photos-videos/screenshots"

# Filename for the screenshot
filename="$screenshot_dir/screenshot_$(date +"%Y-%m-%d_%H-%M-%S").png"

# Use grim and slurp for region selection
grim -g "$(slurp)" "$filename"

# Copy the screenshot to clipboard
wl-copy < "$filename"
