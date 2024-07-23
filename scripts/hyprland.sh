# installing hyperland and its dependency for fedora and debian
if [[ ! -z $(which dnf) ]]; then
  git clone --depth=1 https://github.com/JaKooLit/Fedora-Hyprland.git ~/Fedora-Hyprland
  chmod +x ~/Fedora-Hyprland/install.sh
  ~/Fedora-Hyprland/install.sh
elif [[ ! -z $(which apt) ]]; then
  git clone --depth=1 -b Ubuntu-24.04-LTS https://github.com/JaKooLit/Debian-Hyprland.git ~/Ubuntu-Hyprland
  chmod +x ~/Ubuntu-Hyprland/install.sh
  ~/Ubuntu-Hyprland/install.sh
fi
