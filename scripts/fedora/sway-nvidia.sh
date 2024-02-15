sudo dnf install -y sway waybar
git clone https://github.com/crispyricepc/sway-nvidia
sudo install -Dm755 sway-nvidia/sway-nvidia.sh "/usr/local/bin/sway-nvidia"
sudo install -Dm644 sway-nvidia/sway-nvidia.desktop "/usr/share/wayland-sessions/sway-nvidia.desktop"
sudo install -Dm644 sway-nvidia/wlroots-env-nvidia.sh "/usr/local/share/wlroots-nvidia/wlroots-env-nvidia.sh"
