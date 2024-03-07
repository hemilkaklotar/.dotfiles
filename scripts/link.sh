mkdir -p ~/.local/bin
mkdir -p ~/.config
# sym link the config files to the user config
ln -sf ~/.dotfiles/configs/* ~/.config/
ln -sf ~/.dotfiles/.zshrc ~/
ln -sf ~/.dotfiles/.profile ~/
ln -sf ~/.dotfiles/.Xresources ~/.Xresources
ln -sf ~/.dotfiles/.gitconfig ~/
ln -sf ~/.dotfiles/.xinitrc ~/
ln -sf ~/.dotfiles/tmux/.* ~/
ln -sf ~/.dotfiles/scripts/user_scripts/* ~/.local/bin/
