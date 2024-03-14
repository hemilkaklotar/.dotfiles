#!/usr/bin/env bash

# updating the packages and repository
sudo apt update && sudo apt upgrade

sudo apt install zsh -y

source ~/.bashrc

# installing curl and ripgrep for neovim
sudo apt install curl -y 
sudo apt install ripgrep -y
sudo apt install playerctl -y

# install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sudo apt install htop -y
sudo apt install neofetch -y

#TMUX
sudo apt install tmux -y
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

#neovim installation
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage --appimage-extract
./squashfs-root/AppRun --version
sudo mv squashfs-root /
sudo ln -s /squashfs-root/AppRun /usr/bin/nvim
rm -rf ./nvim.appimage
rm -rf ./squashfs-root

# remove unneccessary packages
sudo apt autoclean
sudo apt autoremove
