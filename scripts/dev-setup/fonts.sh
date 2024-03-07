#!/usr/bin/env bash
########################################
#         SF Mono / Pro               #
########################################
git clone https://github.com/epk/SF-Mono-Nerd-Font.git ~/.fonts/sf
git clone https://github.com/sahibjotsaggu/San-Francisco-Pro-Fonts.git ~/.fonts/sf/pro

#########################################
#         Geist Mono by Vercel         #
########################################
# Specify the URL of the latest release
RELEASE_URL="https://github.com/vercel/geist-font/releases/latest/download"

# Function to check if a directory exists
directory_exists() {
  [ -d "$1" ]
}

# Install Geist Mono Font if not already installed
if ! directory_exists "$HOME/.fonts/Geist.Mono"; then
  wget "${RELEASE_URL}/Geist.Mono.zip" -O /tmp/geistmono.zip
  unzip /tmp/geistmono.zip -d ~/.fonts/
  echo "Geist Mono Font Installed Successfully."
else
  echo "Geist Mono Font already Installed skipping the step"
fi

# Clean up temporary files
rm -f /tmp/geistmono.zip

