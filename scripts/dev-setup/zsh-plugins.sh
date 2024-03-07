#!/usr/bin/env bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

if [[ ! -z $(which dnf) ]]; then
  sudo dnf install -y eza zoxide
  sudo dnf install -y ranger
  sudo dnf install -y fzf
elif [[ ! -z $(which apt-get) ]]; then
  sudo apt  install -y ranger
  sudo apt install -y zoxide
  cargo install eza
  sudo apt install -y fzf
fi
