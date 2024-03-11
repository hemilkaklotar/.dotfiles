#!/usr/bin/env bash
############################################
#            Install i3 based apps         #
############################################

if [[ ! -z $(which dnf) ]]; then
  mkdir -p ~/.local/bin
  # sudo dnf install -y alacritty
  # sudo dnf install -y polybar 
  # sudo dnf install gnome-sushi gtk-chtheme -y
  sudo dnf install -y picom
  sudo dnf install -y kitty
  sudo dnf install -y i3
  sudo dnf install -y pulseaudio
  sudo dnf install -y pavucontrol
  sudo dnf install -y blueman 
  sudo dnf install -y feh
  sudo dnf install -y rofi 
  sudo dnf install -y light
  sudo chmod +s /usr/bin/light # to give permission run light without sudoers
  sudo dnf install -y lxappearance # for gtk dark mode detection
  sudo dnf install -y qt5ct
  sudo dnf install -y dunst 
  sudo dnf install -y xclip 
  sudo dnf install -y xdotool
  sudo dnf install -y redshift
  sudo dnf install -y polkit-gnome
  sudo dnf install -y lxpolkit
  sudo dnf install -y mpd --allowerasing
  sudo dnf install -y maim 
  sudo dnf install -y xrandr
  wget https://github.com/erebe/greenclip/releases/download/v4.2/greenclip -P ~/.local/bin
  chmod +x ~/.local/bin/greenclip

elif [[ ! -z $(which apt-get) ]]; then

  # sudo apt install -y polybar 
  # sudo apt install -y alacritty
  sudo apt install -y picom 
  sudo apt install -y i3 
  sudo apt install -y pulseaudio 
  sudo apt install -y pavucontrol 
  sudo apt install -y blueman 
  sudo apt install -y xclip 
  sudo apt install -y feh
  sudo apt install -y mpd
  sudo apt install -y maim
  sudo apt install -y arandr
  sudo apt install -y dunst
  sudo apt install -y xdotool
  sudo apt install kitty -y
  sudo apt install -y rofi 
  sudo apt install -y light
  sudo chmod +s /usr/bin/light # to give permission run light without sudoers
  sudo apt install -y gnome-tweaks 
  sudo apt install -y gnome-shell-extension-manager
  sudo apt install -y lxappearance # for gtk dark mode detection
  sudo apt install -y qt5ct
  sudo apt install -y redshift
  sudo apt-get install gnome-sushi -y
  sudo apt-get install policykit-1-gnome -y #add policykit
  sudo apt-get install lxpolkit -y
  wget https://github.com/erebe/greenclip/releases/download/v4.2/greenclip -P ~/.local/bin/
  chmod +x ~/.local/bin/greenclip
  sudo apt-get -y --reinstall install libnotify-bin notify-osd

fi

# installing betterlockscreen
source ~/.dotfiles/scripts/betterlockscreen.sh
