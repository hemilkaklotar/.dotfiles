############################################
#            Install i3 based apps         #
############################################

if [[ ! -z $(which dnf) ]]; then
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

elif [[ ! -z $(which apt-get) ]]; then

  # install i3wm, alacritty and other required packages
  sudo apt install picom i3 pulseaudio pavucontrol blueman xclip feh -y
  sudo apt install alacritty -y
  # sudo apt install kitty -y
  sudo apt install polybar rofi light -y
  # to give permission run light without sudoers
  sudo chmod +s /usr/bin/light
  sudo apt install gnome-tweaks gnome-shell-extension-manager -y
  # for gtk dark mode detection
  sudo apt install lxappearance qt5ct -y
  sudo apt-get install gnome-sushi -y
  #add policykit
  sudo apt-get install policykit-1-gnome -y
  sudo apt-get install lxpolkit -y
  wget https://github.com/erebe/greenclip/releases/download/v4.2/greenclip -P ~/.local/bin/
  chmod +x ~/.local/bin/greenclip

fi

# installing betterlockscreen
source ~/.dotfiles/scripts/betterlockscreen.sh