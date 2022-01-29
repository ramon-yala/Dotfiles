#!/bin/bash
#rofi_command="rofi -theme /usr/share/rofi/themes/dracula.rasi"
rofi_command="rofi -theme $HOME/.config/rofi/themes/power.rasi"

uptime=" Seleccione una opción  "

# Options
shutdown="  Shutdown"
reboot="  Reboot"
lock="  Lock"
suspend="  Suspend"
logout="  Logout"

# Variable passed to rofi
options="$lock\n$suspend\n$logout\n$reboot\n$shutdown"

chosen="$(echo -e "$options" | $rofi_command -p "$uptime" -dmenu)"
case $chosen in
    $shutdown)
        systemctl poweroff
        ;;
    $reboot)
        systemctl reboot
        ;;
    $lock)
        betterlockscreen -l dimblur
        ;;
    $suspend)
        mpc -q pause
        amixer set Master mute
        systemctl suspend
        ;;
    $logout)
        bspc quit
        ;;
esac

