#!/usr/bin/env bash

# Define the scripts directory path
scripts_dir="$HOME/.dotfiles/scripts"

# Define an array of script paths relative to the scripts directory
scripts=(
    "dependency.sh"
    "flatpak-apps.sh"
    "i3-config.sh"
    "sway-nvidia.sh"
    "dev-dep.sh"
    "link.sh"
)

# Define prompts for each script
prompts=(
    "Do you want to install all dependencies for your Debian or Fedora based system? (y/n): "
    "Do you want to install apps from flatpak? (y/n): "
    "Do you want to install i3 dwm and its based apps for Fedora or Debian? (y/n): "
    "Do you want to install sway dwm with NVIDIA? (y/n): "
    "Do you want to install all developer dependencies for zsh plugins, language setups, fonts, and more? (y/n): "
    "Do you want to link all the config to the OS config? (y/n): "
)

# Array to store user responses
responses=()

# Iterate over each prompt and gather user responses
for prompt in "${prompts[@]}"; do
    read -p "$prompt" answer
    responses+=("$answer")
done

# Iterate over each response and execute the corresponding script if the answer is 'y' or 'Y'
for ((i=0; i<${#responses[@]}; i++)); do
    if [ "${responses[$i]}" == "y" ] || [ "${responses[$i]}" == "Y" ]; then
        bash "$scripts_dir/${scripts[$i]}"
    fi
done
