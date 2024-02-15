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


git clone https://github.com/Raymo111/i3lock-color.git
cd i3lock-color
./install-i3lock-color.sh

wget https://raw.githubusercontent.com/betterlockscreen/betterlockscreen/main/install.sh -O - -q | sudo bash -s system

