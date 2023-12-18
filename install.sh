# link all the config to the os config
source $HOME/.dotfiles/link.sh

# install all dependacies for the os
source $HOME/.dotfiles/dependency.sh

# install all apps with flatpak
source $HOME/.dotfiles/apps.sh

# install the i3 wm with the necessary dependacies
source $HOME/.dotfiles/i3-config.sh
