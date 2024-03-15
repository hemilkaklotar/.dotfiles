#!/usr/bin/env bash

# NOTE:updating the packages and repository
sudo dnf -y update && sudo dnf -y upgrade
mkdir -p ~/.local/bin

sudo dnf install -y zsh

# NOTE:installing curl and ripgrep for neovim
sudo dnf install -y curl
sudo dnf install -y ripgrep

# NOTE: install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# NOTE: system monitoring and resources
sudo dnf install -y btop
sudo dnf install -y fastfetch

# NOTE: music and player
sudo dnf install -y mpd
sudo dnf install -y mpc
sudo dnf install -y ncmpcpp
sudo dnf install -y playerctl

# NOTE: night light for x11 
sudo dnf install -y redshift

# NOTE: Tmux
sudo dnf install -y tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# NOTE:neovim installation
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage --appimage-extract
./squashfs-root/AppRun --version
sudo mv squashfs-root /
sudo ln -s /squashfs-root/AppRun /usr/bin/nvim
rm -rf ./nvim.appimage
rm -rf ./squashfs-root

# NOTE: battery saver for laptops
sudo dnf install tlp -y
sudo systemctl enable tlp.service
sudo systemctl mask power-profiles-daemon.service
sudo systemctl mask systemd-rfkill.service
sudo systemctl mask systemd-rfkill.socket
sudo systemctl mask systemd-rfkill.socket
sudo dnf install tlp-rdw -y
sudo dnf install smartmontools -y

sudo dnf -y clean all
sudo dnf -y autoremove

