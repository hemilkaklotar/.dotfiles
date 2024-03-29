#!/usr/bin/env bash
########################################
#         SF Mono / Pro               #
########################################
git clone https://github.com/epk/SF-Mono-Nerd-Font.git ~/.fonts/sf
git clone https://github.com/sahibjotsaggu/San-Francisco-Pro-Fonts.git ~/.fonts/sf/pro


FONT_NAMES=("FiraCode" "JetBrainsMono" "GeistMono")
FONT_URL="https://github.com/ryanoasis/nerd-fonts/releases/latest/download/"

# Check if fonts directory exists
if ! [[ -d "$HOME/.fonts" ]]; then
  mkdir -p "$HOME/.fonts"
fi

# Loop through fonts array
for font_name in "${FONT_NAMES[@]}"; do
  # Download font zip file
  wget -O "/tmp/$font_name.zip" "$FONT_URL$font_name.zip"

  # Create font directory
  mkdir -p "$HOME/.fonts/$font_name"

  # Unzip font to directory
  unzip "/tmp/$font_name.zip" -d "$HOME/.fonts/$font_name"

  # Remove temporary zip file
  rm "/tmp/$font_name.zip"
done
