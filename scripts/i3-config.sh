# install i3wm, alacritty and other required packages
sudo apt install picom alacritty i3 pulseaudio pavucontrol blueman xclip feh -y
sudo apt install polybar rofi light -y
# to give permission run light without sudoers
sudo chmod +s /usr/bin/light
#sudo apt install gnome-tweaks gnome-shell-extension-manager -y
# for gtk dark mode detection
#sudo apt install lxappearance gtk-chtheme light -y
#sudo apt-get install gnome-sushi -y

#add policykit
#sudo apt-get install policykit-1-gnome -y