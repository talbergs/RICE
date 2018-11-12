#!/bin/sh
# loadin that environment here
source $HOME/.profile
# patches nvidia driver into i3
xrandr --auto
# compositor for transparency
xcompmgr -f -c -O 0.1 -I 0.05 &
# touchpad natural scroll, tap feature and acceleration
xinput set-prop "SYNA2B46:00 06CB:CD5F Touchpad" "libinput Natural Scrolling Enabled" 1
xinput set-prop "SYNA2B46:00 06CB:CD5F Touchpad" "libinput Tapping Enabled" 1
xinput set-prop "SYNA2B46:00 06CB:CD5F Touchpad" "libinput Accel Speed" 0.5

# increase keypress repeat,delay and speed
xset r rate 275 50

# shosen caps-lock behaviour and previous session keyboard
i3.keyboard 1

# ima set wallpapper from previous session
$HOME/.fehbg

# notifier view
dunst &

# drop
dropbox &

# clipboard history
clipmenud &

# it hides cursor
unclutter &

# chosen wtm
exec i3
