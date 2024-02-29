# updating the packages and repository
sudo dnf -y update && sudo dnf -y upgrade

sudo dnf install -y zsh

# source ~/.bashrc

# installing curl and ripgrep for neovim
sudo dnf install -y curl ripgrep playerctl

# install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sudo dnf install -y tmux htop neofetch python3-pip python3-venv 
# flatremix theme for fedora gnome
sudo dnf install -y gnome-shell-theme-flat-remix
sudo dnf install -y mpd 
sudo dnf install -y mpc 
sudo dnf install -y ncmpcpp
sudo dnf install -y redshift
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
# remove unneccessary packages
mkdir -p ~/.local/bin

# battery saver for laptops 
sudo dnf install tlp -y
sudo systemctl enable tlp.service
sudo systemctl mask power-profiles-daemon.service
sudo systemctl mask systemd-rfkill.service
sudo systemctl mask systemd-rfkill.socket
sudo systemctl mask systemd-rfkill.socket
sudo dnf install tlp-rdw -y
sudo dnf install smartmontools -y

sudo dnf -y autoclean
sudo dnf -y autoremove

