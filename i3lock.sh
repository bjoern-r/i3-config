#!/bin/sh
xrandr --listactivemonitors > /tmp/i3lock_info
if (xrandr --listactivemonitors | grep eDP-1); then
	i3lock -c 000000 -i ~/Pictures/wallpaper/lockscreen_nb.png
else
	[ $(date +%H%M) -ge 1815 ] && [ x"$1" != "xsuspend" ] && DPMS=" -d"
	i3lock -c 000000 -i ~/Pictures/wallpaper/lockscreen_desktop.png $DPMS
fi

[ x"$1" = "xsuspend" ] && systemctl suspend
