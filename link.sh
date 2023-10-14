# remove existing file
rm -rf ~/.config/i3/config
rm -rf ~/.zshrc
rm -rf ~/.profile
rm -rf ~/.bashrc



ln -s ~/.dotfiles/i3/config ~/.config/i3/config
ln -s ~/.dotfiles/.zshrc ~/
ln -s ~/.dotfiles/.profile ~/
ln -s ~/.dotfiles/.bashrc ~/
