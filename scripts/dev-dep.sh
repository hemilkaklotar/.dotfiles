#!/usr/bin/env bash

# Check if a folder was provided as an argument
# if [ $# -eq 0 ]; then
#   echo "Please specify a folder path as an argument."
#   exit 1
# fi

# Set the folder path
# folder_path="$1"
folder_path="$HOME/.dotfiles/scripts/dev-setup/"

# Check if the folder exists
if ! [ -d "$folder_path" ]; then
  echo "Error: Folder '$folder_path' does not exist."
  exit 1
fi

# Find all executable files (scripts)
find "$folder_path" -type f -executable -print | while read script; do
  # Execute the script
  echo "Running script: $script"
  "$script"

  # Check for exit status and handle errors (optional)
  # if [ $? -ne 0 ]; then
  #   echo "Error: Script '$script' exited with code $?"
  # fi
done

echo "Finished running all scripts in '$folder_path'."
