#!/usr/bin/zsh
# Refresh xrdb
xrdb ~/.Xresources
# Terminate already running polybars
killall -q polybar
# Wait until processes have shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
# Launch Polybar
polybar --config=$HOME/.config/polybar/config.ini myBar -r &
