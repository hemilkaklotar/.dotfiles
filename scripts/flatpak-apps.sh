#!/usr/bin/env bash
# installing flatpak
if [[ ! -z $(which dnf) ]]; then
  sudo dnf install flatpak -y

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


elif [[ ! -z $(which apt-get) ]]; then
  sudo apt install flatpak -y
  sudo apt install gnome-software-plugin-flatpak -y
fi

# add flatpak repo
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

source ~/.zshrc
# install slack using flatpak
flatpak install -y --user --noninteractive flathub com.slack.Slack

# installing vlc video player using flatpak
flatpak install -y --user --noninteractive flathub org.videolan.VLC

flatpak install -y --user --noninteractive flathub com.visualstudio.code

flatpak install -y --user --noninteractive flathub com.jetbrains.PyCharm-Community

flatpak install -y --user --noninteractive flathub com.brave.Browser

flatpak install -y --user --noninteractive flathub md.obsidian.Obsidian

flatpak install -y --user --noninteractive flathub com.spotify.Client

flatpak install -y --user --noninteractive flathub org.telegram.desktop

flatpak install -y --user --noninteractive flathub com.obsproject.Studio

flatpak install -y --user --noninteractive flathub fr.handbrake.ghb

flatpak install -y --user --noninteractive flathub io.github.shiftey.Desktop

flatpak install -y --user --noninteractive flathub com.discordapp.Discord

flatpak install -y --user --noninteractive flathub us.zoom.Zoom

flatpak install -y --user --noninteractive flathub io.github.mimbrero.WhatsAppDesktop

flatpak install -y --user --noninteractive flathub com.bitwarden.desktop

flatpak install -y --user --noninteractive flathub com.getpostman.Postman

flatpak install -y --user --noninteractive flathub com.mongodb.Compass

flatpak install -y --user --noninteractive flathub com.jetbrains.IntelliJ-IDEA-Community


