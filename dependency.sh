# updating the packages and repository
sudo apt update && sudo apt upgrade

sudo apt install zsh -y

# installing flatpak
sudo apt install flatpak
sudo apt install gnome-software-plugin-flatpak
# add flatpak repo
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
bash ~/.zshrc

# installing curl and ripgrep for neovim
sudo apt install curl ripgrep -y

# install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#install nvm and latest node version
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash # change the version number as per current version
bash ~/.zshrc
nvm install --lts

# install i3wm, tmux, alacritty and other required packages
sudo apt install gnome-tweaks picom alacritty tmux i3 zsh light pulseaudio pavucontrol -y
sudo apt install gnome-shell-extension-manager blueman htop neofetch xclip python3-pip feh python3-venv -y

#neovim installation
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage --appimage-extract
./squashfs-root/AppRun --version
# Optional: exposing nvim globally.
sudo mv squashfs-root /
sudo ln -s /squashfs-root/AppRun /usr/bin/nvim

## installing nvchad
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 

# install slack using flatpak
flatpak install flathub com.slack.Slack

# installing vlc video player using flatpak 
flatpak install flathub org.videolan.VLC

flatpak install flathub com.visualstudio.code

flatpak install flathub com.jetbrains.PyCharm-Community

flatpak install flathub com.brave.Browser

flatpak install flathub md.obsidian.Obsidian

flatpak install flathub com.spotify.Client

flatpak install flathub org.telegram.desktop

flatpak install flathub com.obsproject.Studio

flatpak install flathub fr.handbrake.ghb

flatpak install flathub io.github.shiftey.Desktop

flatpak install flathub com.discordapp.Discord

flatpak install flathub us.zoom.Zoom

flatpak install flathub io.github.mimbrero.WhatsAppDesktop

flatpak install flathub com.bitwarden.desktop

flatpak install flathub com.getpostman.Postman

flatpak install flathub com.mongodb.Compass

flatpak install flathub com.jetbrains.IntelliJ-IDEA-Community

flatpak install flathub com.redis.RedisInsight

# remove unneccessary packages
sudo apt autoclean
sudo apt autoremove

