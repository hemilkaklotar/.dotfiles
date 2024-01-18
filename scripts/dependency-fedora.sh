# updating the packages and repository
sudo dnf -y update && sudo dnf -y upgrade

sudo dnf install -y zsh

# source ~/.bashrc

# installing curl and ripgrep for neovim
sudo dnf install -y curl ripgrep

# install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sudo dnf install -y tmux htop neofetch python3-pip python3-venv 
# flatremix theme for fedora gnome
sudo dnf install -y gnome-shell-theme-flat-remix
sudo dnf install -y mpd mpc ncmpcpp
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

# remove unneccessary packages
sudo dnf -y autoclean
sudo dnf -y autoremove
