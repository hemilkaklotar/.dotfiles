# install i3wm, alacritty and other required packages
sudo dnf install -y picom 
#sudo dnf install -y kitty 
sudo dnf install -y i3 
sudo dnf install -y pulseaudio 
sudo dnf install -y alacritty
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
sudo dnf install -y lxpolkit
sudo dnf install -y mpd --allowerasing
sudo dnf install -y maim xrandr
mkdir -p ~/.local/bin
wget https://github.com/erebe/greenclip/releases/download/v4.2/greenclip -P ~/.local/bin
chmod +x ~/.local/bin/greenclip
