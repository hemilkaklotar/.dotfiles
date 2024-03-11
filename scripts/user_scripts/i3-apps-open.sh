#!/usr/bin/env bash
commands=(
    "2;kitty -e tmux"
    "3;code"
    "4;flatpak run com.spotify.Client"
    "4;flatpak run org.mozilla.Thunderbird"
    "5;flatpak run io.github.shiftey.Desktop"
    "6;flatpak run md.obsidian.Obsidian"
    "7;flatpak run com.slack.Slack"
    "7;flatpak run com.discordapp.Discord"
    "7;flatpak run io.github.mimbrero.WhatsAppDesktop"
    "1;google-chrome"
)

# Iterate over the array and execute the commands
for cmd in "${commands[@]}"; do
    # Split the array element into workspace and command
    IFS=';' read -r -a parts <<< "$cmd"

    # Extract workspace number and command
    workspace="${parts[0]}"
    app_command="${parts[1]}"

    # Run the i3-msg command with the specified workspace and command
    i3-msg "workspace $workspace; exec $app_command; workspace $workspace"

    # Sleep for 3 seconds between each command
    sleep 3
done

