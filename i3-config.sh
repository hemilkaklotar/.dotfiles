# install i3wm, alacritty and other required packages
sudo apt install gnome-tweaks picom alacritty i3 light pulseaudio pavucontrol gnome-shell-extension-manager blueman xclip feh -y
# to give permission run light without sudoers
sudo chmod +s /usr/bin/light

# for gtk dark mode detection
sudo apt install lxappearance gtk-chtheme -y
sudo apt-get install gnome-sushi -y

#add policykit
sudo apt-get install policykit-1-gnome -y
