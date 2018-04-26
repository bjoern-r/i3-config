#!/bin/sh
if (xrandr --listactivemonitors | grep eDP-1); then
	#i3lock -c 000000 -i ~/Pictures/wallpaper/5ccc5e0f258ff34f.png
	i3lock -c 000000 -i ~/Pictures/wallpaper/lockscreen_nb.png
else
	[ $(date +%H%M) -ge 1815 ] && DPMS=" -d"
	i3lock -i ~/Pictures/wallpaper/23520575262_34d522db9e_o.png $DPMS
fi

[ x"$1" = "xsuspend" ] && systemctl suspend
