# install i3wm, alacritty and other required packages
sudo apt install picom i3 pulseaudio pavucontrol blueman xclip feh -y
#sudo apt install alacritty -y
sudo apt install kitty -y
sudo apt install polybar rofi light -y
# to give permission run light without sudoers
sudo chmod +s /usr/bin/light
sudo apt install gnome-tweaks gnome-shell-extension-manager -y
# for gtk dark mode detection
sudo apt install lxappearance qt5ct -y
sudo apt-get install gnome-sushi -y
#add policykit
sudo apt-get install policykit-1-gnome -y

wget https://github.com/erebe/greenclip/releases/download/v4.2/greenclip -P ~/.dotfiles/executables/
chmod +x ~/.dotfiles/executables/greenclip
