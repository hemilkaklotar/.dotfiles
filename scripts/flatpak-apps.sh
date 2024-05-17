#!/usr/bin/env bash
# installing flatpak
if [[ ! -z $(which dnf) ]]; then
  sudo dnf install flatpak -y
  # ask user if they want to install figma
  read -p "Do you want to install Figma? (y/n) " figma_executable
  if [ "$figma_executable" == "y" ] || [ "$figma_executable" == "Y" ]; then
    # NOTE:  Figma Linux Installation # Get the latest release URL
    RELEASE_URL=$(curl -sL "https://api.github.com/repos/Figma-Linux/figma-linux/releases/latest" | grep "browser_download_url.*_x86_64.rpm" | cut -d '"' -f 4)
    # INFO: Download the latest release
    wget "$RELEASE_URL" -O /tmp/figma-linux.rpm
    sudo dnf install /tmp/figma-linux.rpm
    sudo rm /tmp/figma-linux.rpm
  fi
elif [[ ! -z $(which apt-get) ]]; then
  sudo apt install flatpak -y
  sudo apt install gnome-software-plugin-flatpak -y
fi

# NOTE: Adding flatpak repo
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

source ~/.profile
# NOTE: Define an array of Flatpak applications
flatpak_apps=(
    "com.slack.Slack"
    "org.videolan.VLC"
    "md.obsidian.Obsidian"
    "com.spotify.Client"
    "org.telegram.desktop"
    "com.obsproject.Studio"
    "fr.handbrake.ghb"
    "io.github.shiftey.Desktop"
    "com.discordapp.Discord"
    "us.zoom.Zoom"
    "com.bitwarden.desktop"
    "com.mongodb.Compass"
)

# NOTE: Iterate over the array and install each Flatpak application
for app in "${flatpak_apps[@]}"; do
    flatpak install -y --noninteractive flathub "$app"
done

echo "Flatpak applications installation completed."


# NOTE: Kanata key remapper installation
echo "Installing Kanata key remapper..."
# read user input for Kanata installation
read -p "Do you want to install Kanata key remapper? (y/n) " kanata_executable
if [ "$kanata_executable" == "y" ] || [ "$kanata_executable" == "Y" ]; then
    mkdir -p "$HOME/.local/bin"
    rm -rf "$HOME/.local/bin/kanata"
    wget -O "$HOME/.local/bin/kanata" "https://github.com/jtroo/kanata/releases/latest/download/kanata"
    chmod +x $HOME/.local/bin/kanata
    echo "Kanata key remapper installation completed."
else
  echo "Kanata key remapper installation skipped."
fi




