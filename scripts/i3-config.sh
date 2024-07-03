#!/usr/bin/env bash
############################################
#            Install i3 based apps         #
############################################

mkdir -p ~/.local/bin

if [[ ! -z $(which dnf) ]]; then
 
  sudo dnf install -y polybar 
  sudo dnf install -y picom
  # sudo dnf install -y kitty
  sudo dnf install -y alacritty
  sudo dnf install -y kvantum
  sudo dnf install -y i3
  sudo dnf install -y pulseaudio
  sudo dnf install -y pavucontrol
  sudo dnf install -y blueman 
  sudo dnf install -y feh
  sudo dnf install -y rofi 
  sudo dnf install -y light
  sudo chmod +s /usr/bin/light # to give permission run light without sudoers
  sudo dnf install -y lxappearance # for gtk dark mode detection
  sudo dnf install -y qt6ct
  sudo dnf install -y dunst 
  sudo dnf install -y xclip 
  sudo dnf install -y xdotool
  sudo dnf install -y redshift
  sudo dnf install -y polkit-gnome
  sudo dnf install -y lxpolkit
  sudo dnf install -y mpd --allowerasing
  sudo dnf install -y maim 
  sudo dnf install -y xrandr

elif [[ ! -z $(which apt-get) ]]; then

  sudo apt install -y polybar 
  sudo apt install -y picom 
  sudo apt install -y i3 
  sudo apt install -y pulseaudio 
  sudo apt install -y pavucontrol 
  sudo apt install -y blueman 
  sudo apt install -y xclip 
  sudo apt install -y feh
  sudo apt install -y mpd
  sudo apt install -y maim
  sudo apt install -y dunst
  sudo apt install -y xdotool
  sudo apt install -y alacritty
  sudo apt install -y rofi 
  sudo apt install -y light
  sudo chmod +s /usr/bin/light # NOTE: to give permission run light without sudoers
  sudo apt install -y gnome-tweaks 
  sudo apt install -y gnome-shell-extension-manager
  sudo apt install -y lxappearance # NOTE: for gtk dark mode detection
  sudo apt install -y qt6ct
  sudo apt install -y redshift
  sudo apt install gnome-sushi -y
  sudo apt install policykit-1-gnome -y # NOTE:add policykit
  sudo apt install lxpolkit -y
  sudo apt -y --reinstall install libnotify-bin notify-osd
  
  # NOTE: Installing Kvantum
  sudo add-apt-repository ppa:papirus/papirus
  sudo apt update
  sudo apt install qt6-style-kvantum qt6-style-kvantum-themes
fi

# NOTE: ADDED: Fastcompmgr replacement to picom for performance perspective
wget https://github.com/tycho-kirchner/fastcompmgr/releases/latest/download/fastcompmgr -P ~/.local/bin/
chmod +x ~/.local/bin/fastcompmgr

# NOTE: installing greenclip
wget https://github.com/erebe/greenclip/releases/latest/download/greenclip -P ~/.local/bin/
chmod +x ~/.local/bin/greenclip

# NOTE: installing i3-restore
git clone https://github.com/jdholtz/i3-restore.git ~/.local/bin/i3-restore
pip install -r ~/.local/bin/i3-restore/requirements.txt

# NOTE: installing i3-reurrect
git clone git@github.com:JonnyHaystack/i3-resurrect.git ~/Documents/i3-resurrect
pip3 install --user ~/Documents/i3-resurrect/

# NOTE: installing betterlockscreen
# source ~/.dotfiles/scripts/betterlockscreen.sh
