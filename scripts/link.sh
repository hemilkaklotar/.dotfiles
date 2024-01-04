# remove existing file and folders
rm -rf ~/.config/i3
rm -f ~/.zshrc
rm -f ~/.profile
rm -rf ~/.config/picom
rm -rf ~/.config/alacritty
rm -rf ~/.config/kitty
rm -rf ~/.config/polybar
rm -rf ~/.config/rofi
rm -rf ~/.config/i3status
rm -rf ~/.config/picom/picom.conf
rm -f ~/.Xresources
rm -f ~/.gitconfig
rm -f ~/.xinitrc
rm -rf ~/.config/nvim

# sym link the config files to the user config
ln -sf ~/.dotfiles/configs/* ~/.config/
ln -sf ~/.dotfiles/.zshrc ~/
ln -sf ~/.dotfiles/.profile ~/
ln -sf ~/.dotfiles/.Xresources ~/.Xresources
ln -sf ~/.dotfiles/.gitconfig ~/
ln -sf ~/.dotfiles/.xinitrc ~/
ln -sf ~/.dotfiles/tmux/.* ~/
