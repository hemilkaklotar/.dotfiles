#!/bin/bash
# script to set random background wallpapers on my GNOME desktop
# set base path
export wallpaper_path=~/Pictures
shopt -s nullglob
# store all the image file names in wallpapers array
wallpapers=(
    "$wallpaper_path"/*.jpg
    "$wallpaper_path"/*.jpeg
    "$wallpaper_path"/*.png
    "$wallpaper_path"/*.bmp
    "$wallpaper_path"/*.svg
)
# get array size
wallpapers_size=${#wallpapers[*]}

while true; do
    # set a random wallpaper
    random_index=$((RANDOM % wallpapers_size))
    gsettings set org.gnome.desktop.background picture-uri-dark "${wallpapers[$random_index]}"
    # sleep for a specified time (e.g., 1 minutes) before changing to the next random wallpaper
    # sleep 1m # for 1 minute
    sleep 30 # for 30 seconds
done

# set wallpapers in incremental order
# index=0
# while [ $index -lt $wallpapers_size ]
# do
#     gsettings set org.gnome.desktop.background picture-uri-dark "${wallpapers[$index]}"
#     # index is maxing out, so reset it
#     if [ $(($index+1)) -eq $wallpapers_size ]
#     then
#         index=0
#     else
#         index=$(($index + 1))
#     fi
#     # keep the wallpaper for the specified time
#     sleep 1m
# done



