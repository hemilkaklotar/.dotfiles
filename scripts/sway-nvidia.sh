#!/usr/bin/env bash
if [[ ! -z $(which dnf) ]]; then
  sudo dnf install -y sway waybar
elif [[ ! -z $(which apt) ]]; then
  sudo apt install -y sway waybar
fi
git clone https://github.com/crispyricepc/sway-nvidia
sudo install -Dm755 sway-nvidia/sway-nvidia.sh "/usr/local/bin/sway-nvidia"
sudo install -Dm644 sway-nvidia/sway-nvidia.desktop "/usr/share/wayland-sessions/sway-nvidia.desktop"
sudo install -Dm644 sway-nvidia/wlroots-env-nvidia.sh "/usr/local/share/wlroots-nvidia/wlroots-env-nvidia.sh"
