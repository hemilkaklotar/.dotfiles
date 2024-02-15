
# installing flatpak
sudo dnf install flatpak -y
# add flatpak repo
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

source ~/.zshrc
# install slack using flatpak
flatpak install -y --noninteractive flathub com.slack.Slack

# installing vlc video player using flatpak
flatpak install -y --noninteractive flathub org.videolan.VLC

flatpak install -y --noninteractive flathub com.visualstudio.code

flatpak install -y --noninteractive flathub com.brave.Browser

flatpak install -y --noninteractive flathub md.obsidian.Obsidian

flatpak install -y --noninteractive flathub com.spotify.Client

flatpak install -y --noninteractive flathub org.telegram.desktop

flatpak install -y --noninteractive flathub com.obsproject.Studio

flatpak install -y --noninteractive flathub fr.handbrake.ghb

flatpak install -y --noninteractive flathub io.github.shiftey.Desktop

flatpak install -y --noninteractive flathub com.discordapp.Discord

flatpak install -y --noninteractive flathub us.zoom.Zoom

flatpak install -y --noninteractive flathub io.github.mimbrero.WhatsAppDesktop

flatpak install -y --noninteractive flathub com.bitwarden.desktop

flatpak install -y --noninteractive flathub com.getpostman.Postman

flatpak install -y --noninteractive flathub com.mongodb.Compass

flatpak install -y --noninteractive flathub org.inkscape.Inkscape

flatpak install -y --noninteractive flathub org.gimp.GIMP

flatpak install -y --noninteractive flathub org.mozilla.Thunderbird

flatpak install -y --noninteractive flathub com.github.IsmaelMartinez.teams_for_linux
