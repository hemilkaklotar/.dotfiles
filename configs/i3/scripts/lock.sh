#!/bin/bash
TMPBG=/tmp/screen.png
LOCK=$HOME/.config/i3/scripts/lock.png
RES=$(xrandr | grep 'current' | sed -E 's/.*current\s([0-9]+)\sx\s([0-9]+).*/\1x\2/')
BLUR_VALUE=15
HUE_COLOR=0.8
BRIGHTNESS_VALUE=-0.05
ffmpeg -f x11grab -video_size $RES -y -i $DISPLAY -i $LOCK -filter_complex "hue=s=$HUE_COLOR,boxblur=$BLUR_VALUE:$BLUR_VALUE,overlay=(main_w-overlay_w)/2:(main_h-overlay_h)/2,eq='brightness=$BRIGHTNESS_VALUE'" -vframes 1 $TMPBG -loglevel quiet
i3lock -i $TMPBG
rm $TMPBG
