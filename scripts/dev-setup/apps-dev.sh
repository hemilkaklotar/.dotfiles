#!/usr/bin/zsh

##########################
#
#  Figma Linux Installation
#
##########################
# Get the latest release URL
RELEASE_URL=$(curl -sL "https://api.github.com/repos/Figma-Linux/figma-linux/releases/latest" | grep "browser_download_url.*_x86_64.rpm" | cut -d '"' -f 4)

# Download the latest release
wget "$RELEASE_URL" -O /tmp/figma-linux.rpm

sudo dnf install /tmp/figma-linux.rpm

sudo rm /tmp/figma-linux.rpm

