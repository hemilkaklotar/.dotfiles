#!/usr/bin/env bash
# installing flatpak
if [[ ! -z $(which dnf) ]]; then
  sudo dnf install flatpak -y

  # NOTE:  Figma Linux Installation # Get the latest release URL
  RELEASE_URL=$(curl -sL "https://api.github.com/repos/Figma-Linux/figma-linux/releases/latest" | grep "browser_download_url.*_x86_64.rpm" | cut -d '"' -f 4)
  # INFO: Download the latest release
  wget "$RELEASE_URL" -O /tmp/figma-linux.rpm
  sudo dnf install /tmp/figma-linux.rpm
  sudo rm /tmp/figma-linux.rpm

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
    "com.jetbrains.PyCharm-Community"
    "md.obsidian.Obsidian"
    "com.spotify.Client"
    "org.telegram.desktop"
    "com.obsproject.Studio"
    "fr.handbrake.ghb"
    "io.github.shiftey.Desktop"
    "com.discordapp.Discord"
    "us.zoom.Zoom"
    "io.github.mimbrero.WhatsAppDesktop"
    "com.bitwarden.desktop"
    "com.getpostman.Postman"
    "com.mongodb.Compass"
    "org.mozilla.Thunderbird"
)

# NOTE: Iterate over the array and install each Flatpak application
for app in "${flatpak_apps[@]}"; do
    flatpak install -y --noninteractive flathub "$app"
done

echo "Flatpak applications installation completed."


# NOTE: Kanata key remapper installation
mkdir -p "$HOME/.local/bin"
rm -rf "$HOME/.local/bin/kanata"
wget -O "$HOME/.local/bin/kanata" "https://github.com/jtroo/kanata/releases/latest/download/kanata"
chmod +x $HOME/.local/bin/kanata


