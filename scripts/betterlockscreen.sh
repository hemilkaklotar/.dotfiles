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
  sudo apt install -y automake
  sudo apt install -y cairo-devel
  sudo apt install -y fontconfig
  sudo apt install -y gcc
  sudo apt install -y libev-devel
  sudo apt install -y libjpeg-turbo-devel
  sudo apt install -y libXinerama
  sudo apt install -y libxkbcommon-devel
  sudo apt install -y libxkbcommon-x11-devel
  sudo apt install -y libXrandr
  sudo apt install -y pam-devel
  sudo apt install -y pkgconf
  sudo apt install -y xcb-util-image-devel
  sudo apt install -y xcb-util-xrm-devel
  sudo apt install -y xset
  sudo apt install -y ImageMagick
  sudo apt install -y xdpyinfo
fi

git clone https://github.com/Raymo111/i3lock-color.git
cd i3lock-color
./install-i3lock-color.sh

wget https://raw.githubusercontent.com/betterlockscreen/betterlockscreen/main/install.sh -O - -q | sudo bash -s system

