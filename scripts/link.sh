# remove existing file and folders
rm -rf ~/.config/i3
mkdir ~/.config/i3
rm -rf ~/.config/i3/config
rm -f ~/.zshrc
rm -f ~/.profile
rm -rf ~/.config/picom
mkdir ~/.config/picom
rm -rf ~/.config/alacritty
mkdir ~/.config/alacritty
rm -rf ~/.config/i3status
mkdir ~/.config/i3status
rm -rf ~/.config/picom/picom.conf
rm -f ~/.Xresources
rm -f ~/.gitconfig
rm -f ~/.xinitrc

ln -s ~/.dotfiles/i3/config ~/.config/i3/config
ln -s ~/.dotfiles/.zshrc ~/
ln -s ~/.dotfiles/.profile ~/
# ln -s ~/.dotfiles/.bashrc ~/
ln -s ~/.dotfiles/picom/picom.conf ~/.config/picom/picom.conf
ln -s ~/.dotfiles/alacritty/alacritty.yml ~/.config/alacritty/
ln -s ~/.dotfiles/.Xresources ~/.Xresources
ln -s ~/.dotfiles/.gitconfig ~/
ln -s  ~/.dotfiles/i3/i3status/config ~/.config/i3status/
ln -s ~/.dotfiles/.xinitrc ~/
