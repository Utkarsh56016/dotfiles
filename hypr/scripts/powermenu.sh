#!/bin/bash

chosen=$(printf "  Lock\n  Logout\n  Reboot\n  Shutdown\n  Suspend" | \
    wofi --dmenu \
         --prompt "" \
         --lines 5 \
         --width 300 \
         --hide-scroll \
         --no-actions \
         --style ~/.config/wofi/power.css)

case "$chosen" in
    *Lock) hyprlock ;;
    *Logout) hyprctl dispatch exit ;;
    *Reboot) systemctl reboot ;;
    *Shutdown) systemctl poweroff ;;
    *Suspend) systemctl suspend ;;
esac
