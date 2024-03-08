#!/usr/bin/env bash

if [[ ! -z $(which dnf) ]]; then
  sudo dnf install -y autoconf
  sudo dnf install -y automake
  sudo dnf install -y cairo-devel
  sudo dnf install -y fontconfig
  sudo dnf install -y gcc
  sudo dnf install -y libev-devel
  sudo dnf install -y libjpeg-turbo-devel
  sudo dnf install -y libXinerama
  sudo dnf install -y libxkbcommon-devel
  sudo dnf install -y libxkbcommon-x11-devel
  sudo dnf install -y libXrandr
  sudo dnf install -y pam-devel
  sudo dnf install -y pkgconf
  sudo dnf install -y xcb-util-image-devel
  sudo dnf install -y xcb-util-xrm-devel
  sudo dnf install -y xset
  sudo dnf install -y ImageMagick
  sudo dnf install -y xdpyinfo
elif [[ ! -z $(which apt) ]]; then
  sudo apt install -y autoconf
  sudo apt install -y gcc
  sudo apt install -y make
  sudo apt install -y pkg-config
  sudo apt install -y libpam0g-dev
  sudo apt install -y libcairo2-dev
  sudo apt install -y libfontconfig1-dev
  sudo apt install -y libxcb-composite0-dev
  sudo apt install -y libev-dev 
  sudo apt install -y libx11-xcb-dev
  sudo apt install -y libxcb-xkb-dev
  sudo apt install -y libxcb-xinerama0-dev
  sudo apt install -y libxcb-randr0-dev
  sudo apt install -y libxcb-image0-dev 
  sudo apt install -y libxcb-util-dev
  sudo apt install -y libxcb-xrm-dev
  sudo apt install -y libxkbcommon-dev
  sudo apt install -y libxkbcommon-x11-dev
  sudo apt install -y libjpeg-dev
  sudo apt install -y x11-xserver-utils
  sudo apt install -y imagemagick
fi

git clone https://github.com/Raymo111/i3lock-color.git
cd i3lock-color
./install-i3lock-color.sh
cd ../
rm -rf i3lock-color

wget https://raw.githubusercontent.com/betterlockscreen/betterlockscreen/main/install.sh -O - -q | sudo bash -s system

