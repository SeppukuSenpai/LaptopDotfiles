#! /usr/bin/env zsh
options="one
two
three"
theme=${1:-$HOME/.config/rofi/rofi.rasi}
selection=$(echo -e "${options}" | rofi -dmenu -config $theme)
case "${selection}" in
  "one")
    notify-send "run_rofi.sh" "one";;
  "two")
    notify-send "run_rofi.sh" "two";;
  "three")
    notify-send "run_rofi.sh" "three";;
esac
