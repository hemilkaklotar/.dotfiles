# updating the packages and repository
sudo apt update && sudo apt upgrade

sudo apt install zsh -y

# installing flatpak
sudo apt install flatpak -y
sudo apt install gnome-software-plugin-flatpak -y
# add flatpak repo
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
source ~/.bashrc

# installing curl and ripgrep for neovim
sudo apt install curl ripgrep -y

# install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#install nvm and latest node version
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash # change the version number as per current version
source ~/.bashrc
nvm install --lts

# install i3wm, tmux, alacritty and other required packages
sudo apt install gnome-tweaks picom alacritty tmux i3 zsh light pulseaudio pavucontrol -y
sudo apt install gnome-shell-extension-manager blueman htop neofetch xclip python3-pip feh python3-venv -y

# for gtk dark mode detection
sudo apt install lxappearance gtk-chtheme -y
sudo apt-get install gnome-sushi -y

#neovim installation
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage --appimage-extract
./squashfs-root/AppRun --version
# Optional: exposing nvim globally.
sudo mv squashfs-root /
sudo ln -s /squashfs-root/AppRun /usr/bin/nvim

#add policykit
sudo apt-get install -y policykit-1-gnome

## installing nvchad
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 

# install slack using flatpak
flatpak install -y --noninteractive flathub com.slack.Slack

# installing vlc video player using flatpak 
flatpak install -y --noninteractive flathub org.videolan.VLC

flatpak install -y --noninteractive flathub com.visualstudio.code

flatpak install -y --noninteractive flathub com.jetbrains.PyCharm-Community

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

flatpak install -y --noninteractive flathub com.jetbrains.IntelliJ-IDEA-Community

flatpak install -y --noninteractive flathub com.redis.RedisInsight

# remove unneccessary packages
sudo apt autoclean
sudo apt autoremove

# to give permission run light without sudoers
sudo chmod +s /usr/bin/light
