#!/usr/bin/env bash

# install all dependacies for debian or fedora based system
$HOME/.dotfiles/scripts/dependency.sh

# To install apps from flatpak preconfigured
# $HOME/.dotfiles/scripts/flatpak-apps.sh

# To install i3 dwm and its based apps for fedora or debian
$HOME/.dotfiles/scripts/i3-config.sh

# To install sway dwm with nvidia uncomment below line
# $HOME/.dotfiles/scripts/sway-nvidia.sh

# install all developer dependency for zsh plugins,language setups, fonts and more.
$HOME/.dotfiles/scripts/dev-dep.sh

# link all the config to the os config
$HOME/.dotfiles/scripts/link.sh

