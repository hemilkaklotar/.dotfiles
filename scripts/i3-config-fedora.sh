# install i3wm, alacritty and other required packages
sudo dnf install -y picom alacritty i3 pulseaudio 
sudo dnf install -y pavucontrol 
sudo dnf install -y blueman feh 
sudo dnf install -y polybar rofi light
# to give permission run light without sudoers
# sudo chmod +s /usr/bin/light
sudo dnf install -y gnome-tweaks 
sudo dnf install -y gnome-shell-extension-manager 
# for gtk dark mode detection
sudo dnf install -y lxappearance qt5ct
# sudo dnf install gnome-sushi gtk-chtheme -y
sudo dnf install -y dunst xclip xdotool
sudo dnf install -y policykit-1-gnome 
sudo dnf install -y mpd --allowerasing
