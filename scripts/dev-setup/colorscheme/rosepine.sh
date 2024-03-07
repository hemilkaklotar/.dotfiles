#!/usr/bin/env bash

# Specify the URL of the latest release
RELEASE_URL="https://github.com/rose-pine/gtk/releases/latest/download/"

# Function to check if a directory exists
directory_exists() {
  [ -d "$1" ]
}

# if ! directory_exists "$HOME/.icons/rose-pine-icons"; then
#  # Download and extract icon pack
#  wget "${RELEASE_URL}rose-pine-icons.tar.gz" -O /tmp/rose-pine-icons.tar.gz
#  tar -xzvf /tmp/rose-pine-icons.tar.gz -C ~/.icons
#  echo "Icon pack installed successfully."
# else
#   echo "Icon pack is already installed. Skipping download and installation."
# fi

# Install GTK3 theme if not already installed
if ! directory_exists "$HOME/.themes/rose-pine-gtk"; then
  wget "${RELEASE_URL}gtk3.tar.gz" -O /tmp/gtk3.tar.gz
  tar -xzvf /tmp/gtk3.tar.gz -C ~/.themes/
  mv ~/.themes/gtk3/* ~/.themes/
  rm -rf ~/.themes/gtk3
  echo "GTK3 theme installed successfully."
else
  echo "GTK3 theme is already installed. Skipping download and installation."
fi

# Install GTK4 theme if not already installed
if ! directory_exists "$HOME/.config/gtk-4.0/Rose-Pine"; then
  wget "${RELEASE_URL}gtk4.tar.gz" -O /tmp/gtk4.tar.gz
  tar -xzvf /tmp/gtk4.tar.gz -C ~/.config/gtk-4.0
  rm -rf ~/.config/gtk-4.0/gtk.css
  mv ~/.config/gtk-4.0/gtk4/rose-pine.css ~/.config/gtk-4.0/gtk.css
  echo "GTK4 theme installed successfully."
else
  echo "GTK4 theme is already installed. Skipping download and installation."
fi

# Apply GTK3 theme manually in settings.ini if not already applied
if ! grep -q "gtk-theme-name=Rose-Pine" "$HOME/.config/gtk-3.0/settings.ini"; then
  echo -e "[Settings]\ngtk-theme-name=Rose-Pine" > ~/.config/gtk-3.0/settings.ini
  echo "GTK3 theme applied successfully. Please restart your applications."
else
  echo "GTK3 theme is already applied in settings.ini. Skipping application."
fi

# Clean up temporary files
rm -f /tmp/gtk3.tar.gz /tmp/gtk4.tar.gz /tmp/rose-pine-icons.tar.gz

