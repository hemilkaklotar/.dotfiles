#!/usr/bin/env bash

#  NOTE:updating the packages and repository
sudo apt update -y && sudo apt upgrade -y

sudo apt install zsh -y

source ~/.bashrc

#  NOTE:installing curl and ripgrep for neovim
sudo apt install curl -y 
sudo apt install ripgrep -y
sudo apt install playerctl -y
sudo apt install stow -y
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

# NOTE: Input remapper 
input_remapper_url=$(curl -s "https://api.github.com/repos/sezanzeb/input-remapper/releases/latest" | jq -r '.assets[] | select(.name | endswith(".deb")) | .browser_download_url')
# Check if download URL is not empty
if [ ! -z "$input_remapper_url" ]; then
    wget -P /tmp "$input_remapper_url"
    sudo dpkg -i "/tmp/$(basename "$input_remapper_url")"
    rm "/tmp/$(basename "$input_remapper_url")"
fi

#  NOTE:remove unneccessary packages
sudo apt autoclean -y
sudo apt autoremove -y
