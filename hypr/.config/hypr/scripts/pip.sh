#!/usr/bin/env sh

# Toggle picture-in-picture mode for the focused window

info=$(hyprctl activewindow -j 2>/dev/null) || exit 0
[ "$info" = "Invalid" ] && exit 0

floating=$(echo "$info" | jq -r '.floating')
pinned=$(echo "$info" | jq -r '.pinned')

if [ "$floating" = "true" ] && [ "$pinned" = "true" ]; then
    hyprctl dispatch pin
    hyprctl dispatch togglefloating
    exit 0
fi

mon=$(hyprctl monitors -j | jq -r '.[] | select(.focused == true)')
mon_w=$(echo "$mon" | jq -r '.width')
mon_h=$(echo "$mon" | jq -r '.height / (.scale // 1)' | cut -d. -f1)

w=$((mon_w * 20 / 100))
h=$((w * 9 / 16))
margin_x=$((mon_w * 2 / 100))
margin_y=$((mon_h * 3 / 100))
x=$((mon_w - w - margin_x))
y=$((mon_h - h - margin_y))

hyprctl dispatch togglefloating
hyprctl dispatch resizeactive exact $w $h
hyprctl dispatch moveactive exact $x $y
hyprctl dispatch pin
