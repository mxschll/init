#!/bin/bash

sudo apt update -y

# Ensure computer doesn't go to sleep or lock while installing
gsettings set org.gnome.desktop.screensaver lock-enabled false
gsettings set org.gnome.desktop.session idle-delay 0

# Run installers
initial_dir=$(pwd)
install_dir="./install"
for script in `ls "$install_dir" | sort -t- -k1,1n -k2,2`; do
	pushd "$initial_dir" > /dev/null
	source "$install_dir/$script"
	popd > /dev/null
done

# Upgrade everything that might ask for a reboot last
sudo apt upgrade -y

# Revert to normal idle and lock settings
gsettings set org.gnome.desktop.screensaver lock-enabled true
gsettings set org.gnome.desktop.session idle-delay 300
