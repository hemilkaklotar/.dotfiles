# remove existing file
rm -rf ~/.config/i3/config
rm -rf ~/.zshrc
rm -rf ~/.profile
rm -rf ~/.bashrc
rm -rf ~/.config/picom/picom.conf


ln -s ~/.dotfiles/i3/config ~/.config/i3/config
ln -s ~/.dotfiles/.zshrc ~/
ln -s ~/.dotfiles/.profile ~/
ln -s ~/.dotfiles/.bashrc ~/
ln -s ~/.dotfiles/picom/picom.conf ~/.config/picom/picom.conf
ln -s ~/.dotfiles/alacritty/config ~/.config/alacritty/alacritty.conf
ln -s ~/.dotfiles/.Xresources ~/.Xresources
