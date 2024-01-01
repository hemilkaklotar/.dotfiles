# updating the packages and repository
sudo dnf update && sudo dnf upgrade

sudo dnf install zsh -y

# source ~/.bashrc

# installing curl and ripgrep for neovim
sudo dnf install curl ripgrep -y

# install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#install nvm and latest node version
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash # change the version number as per current version
source ~/.bashrc
nvm install --lts

sudo dnf install tmux htop neofetch python3-pip python3-venv -y
#neovim installation
# curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
# chmod u+x nvim.appimage
# ./nvim.appimage --appimage-extract
# ./squashfs-root/AppRun --version
# # Optional: exposing nvim globally.
# sudo mv squashfs-root /
# sudo ln -s /squashfs-root/AppRun /usr/bin/nvim
# rm -rf ./nvim.appimage
# rm -rf ./squashfs-root

# remove unneccessary packages
sudo dnf autoclean
sudo dnf autoremove
