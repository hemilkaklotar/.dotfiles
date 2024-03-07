# updating the packages and repository
sudo apt update && sudo apt upgrade

sudo apt install zsh -y

source ~/.bashrc

# installing curl and ripgrep for neovim
sudo apt install curl ripgrep -y
sudo apt install playerctl -y

# install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#install nvm and latest node version
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash # change the version number as per current version
source ~/.bashrc
nvm install --lts

sudo apt install tmux htop neofetch python3-pip python3-venv -y

#neovim installation
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage --appimage-extract
./squashfs-root/AppRun --version
# Optional: exposing nvim globally.
sudo mv squashfs-root /
sudo ln -s /squashfs-root/AppRun /usr/bin/nvim
rm -rf ./nvim.appimage
rm -rf ./squashfs-root
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# echo "[Settings]
# gtk-application-prefer-dark-theme=1" >> ~/.config/gtk-3.0/settings.ini

# remove unneccessary packages
sudo apt autoclean
sudo apt autoremove
