# install i3wm, alacritty and other required packages
sudo dnf install -y picom alacritty i3 pulseaudio 
sudo dnf install -y pavucontrol 
sudo dnf install -y blueman feh 
sudo dnf install -y polybar rofi light
# to give permission run light without sudoers
sudo chmod +s /usr/bin/light
# for gtk dark mode detection
sudo dnf install -y lxappearance qt5ct
# sudo dnf install gnome-sushi gtk-chtheme -y
sudo dnf install -y dunst xclip xdotool
sudo dnf install -y polkit-gnome 
sudo dnf install -y mpd --allowerasing
