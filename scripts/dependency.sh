#!/usr/bin/env bash
if [[ ! -z $(which dnf) ]]; then
  source ~/.dotfiles/scripts/dependency-fedora.sh
elif [[ ! -z $(which apt) ]]; then
  source ~/.dotfiles/scripts/dependency-debian.sh
fi
