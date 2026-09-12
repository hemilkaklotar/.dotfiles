#!/usr/bin/env sh

# Toggle screen recording with wf-recorder
# Usage: record.sh [-a] [-g "<geometry>"]

sound=""
geometry=""
while [ $# -gt 0 ]; do
    case "$1" in
        -a) sound="-a" ;;
        -g) shift; geometry="--geometry=$1" ;;
    esac
    shift
done

if pgrep -x wf-recorder >/dev/null 2>&1; then
    pkill -INT -x wf-recorder
    notify-send -u normal -a 'Screen recorder' 'Recording saved' "Saved to ~/Videos" -i video-display-symbolic
    exit 0
fi

mkdir -p "$HOME/Videos"
file="$HOME/Videos/recording-$(date +%Y%m%d-%H%M%S).mp4"
nohup wf-recorder $sound $geometry --file="$file" >/dev/null 2>&1 &
notify-send -u low -a 'Screen recorder' 'Recording started' "Output: $file" -i media-record-symbolic
