#!/usr/bin/env bash
########################################
#         SF Mono / Pro               #
########################################
# Example ( "FiraCode" "GeistMono" )
FONT_NAMES=( "CascadiaCode" )
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

# Installing microsoft fonts
#
#
if [[ ! -z $(which dnf) ]]; then
  sudo dnf install mscore-fonts-all -y
elif [[ ! -z $(which apt-get) ]]; then
  sudo apt-get -y install msttcorefonts
fi
