#!/usr/bin/env bash

folder_path="$HOME/.dotfiles/scripts/dev-setup/"

# NOTE: Check if the folder exists
if ! [ -d "$folder_path" ]; then
  echo "Error: Folder '$folder_path' does not exist."
  exit 1
fi

# NOTE: Find all executable files (scripts) and store them in an array
scripts=($(find "$folder_path" -type f -executable))

# NOTE: Array to store user responses
responses=()

# NOTE: Iterate over each script, prompt for execution, and store responses
for script in "${scripts[@]}"; do
  script_name=$(basename "$script")
  read -p "Do you want to run the script: $script_name ? (y/n)" response
  responses+=("$response")
done

# NOTE: Execute scripts based on user responses
for ((i=0; i<${#scripts[@]}; i++)); do
  if [ "${responses[$i]}" = "y" ] || [ "${responses[$i]}" = "Y" ]; then
    echo "Running script: ${scripts[$i]}"
    "${scripts[$i]}"
  else
    echo "Skipping script: ${scripts[$i]}"
  fi
done

echo "Finished running all scripts in '$folder_path'."
