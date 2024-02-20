#!/usr/bin/zsh

i3-msg 'workspace 1; exec google-chrome;workspace 1'
sleep 3
i3-msg 'workspace 2; exec kitty -e tmux;workspace 2' 
sleep 3
i3-msg 'workspace 3; exec code;workspace 3'
sleep 3
i3-msg 'workspace 4; exec flatpak run com.spotify.Client;workspace 4'
sleep 3
i3-msg 'workspace 5; exec flatpak run io.github.shiftey.Desktop;workspace 5'
sleep 3
i3-msg 'workspace 6; exec flatpak run md.obsidian.Obsidian;workspace 6'
sleep 3
i3-msg 'workspace 7; exec flatpak run com.slack.Slack;workspace 7'
sleep 3
i3-msg 'workspace 7; exec flatpak run com.discordapp.Discord;workspace 7'
sleep 3
i3-msg 'workspace 7; exec flatpak run io.github.mimbrero.WhatsAppDesktop;workspace 7'
sleep 3
i3-msg 'workspace 4; exec flatpak run org.mozilla.Thunderbird;workspace 4'
sleep 3
