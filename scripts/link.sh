# remove existing file and folders
rm -rf ~/.config/i3
rm -f ~/.zshrc
rm -f ~/.profile
rm -rf ~/.config/picom
rm -rf ~/.config/alacritty
rm -rf ~/.config/i3status
rm -rf ~/.config/picom/picom.conf
rm -f ~/.Xresources
rm -f ~/.gitconfig
rm -f ~/.xinitrc

# sym link the config files to the user config
ln -s ~/.dotfiles/configs/* ~/.config/
ln -s ~/.dotfiles/.zshrc ~/
ln -s ~/.dotfiles/.profile ~/
ln -s ~/.dotfiles/.Xresources ~/.Xresources
ln -s ~/.dotfiles/.gitconfig ~/
ln -s ~/.dotfiles/.xinitrc ~/
