#!/usr/bin/env bash

#  NOTE:updating the packages and repository
sudo apt update -y && sudo apt upgrade -y

sudo apt install zsh -y

source ~/.bashrc

#  NOTE:installing curl and ripgrep for neovim
sudo apt install curl -y 
sudo apt install ripgrep -y
sudo apt install playerctl -y

#  NOTE:install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#  NOTE:system monitoring and resources
sudo apt install btop -y
sudo add-apt-repository ppa:zhangsongcui3371/fastfetch -y
sudo apt update -y
sudo apt install fastfetch -y

#  NOTE: Tmux and tmux plugins
sudo apt install tmux -y
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

#  NOTE:neovim installation
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage --appimage-extract
./squashfs-root/AppRun --version
sudo mv squashfs-root /
sudo ln -s /squashfs-root/AppRun /usr/bin/nvim
rm -rf ./nvim.appimage
rm -rf ./squashfs-root

#  NOTE:remove unneccessary packages
sudo apt autoclean -y
sudo apt autoremove -y
