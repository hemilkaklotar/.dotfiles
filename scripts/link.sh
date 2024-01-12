# sym link the config files to the user config
ln -sf ~/.dotfiles/configs/* ~/.config/
ln -sf ~/.dotfiles/.zshrc ~/
ln -sf ~/.dotfiles/.profile ~/
ln -sf ~/.dotfiles/.Xresources ~/.Xresources
ln -sf ~/.dotfiles/.gitconfig ~/
ln -sf ~/.dotfiles/.xinitrc ~/
ln -sf ~/.dotfiles/tmux/.* ~/


#mkdir if not exist
mkdir -p ~/.dotfiles/executables

echo 'export DOTFILES="$HOME/.dotfiles"\nexport PATH="$DOTFILES/executables:$PATH"\nexport PATH="$DOTFILES/scripts/user_scripts:$PATH"' >> $HOME/.bashrc
echo 'export DOTFILES="$HOME/.dotfiles"\nexport PATH="$DOTFILES/executables:$PATH"\nexport PATH="$DOTFILES/scripts/user_scripts:$PATH"' >> $HOME/.zshrc

