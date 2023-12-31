# install i3wm, alacritty and other required packages
sudo dnf install picom alacritty i3 pulseaudio pavucontrol blueman xclip feh -y
sudo dnf install polybar rofi light -y
# to give permission run light without sudoers
sudo chmod +s /usr/bin/light
sudo dnf install gnome-tweaks gnome-shell-extension-manager -y
# for gtk dark mode detection
sudo dnf install lxappearance gtk-chtheme -y
sudo dnf install gnome-sushi -y

#add policykit
sudo dnf install policykit-1-gnome -y

