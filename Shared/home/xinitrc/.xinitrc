#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# Sets QT to use QGtkStyle
export QT_QPA_PLATFORMTHEME=gtk2

# Loads terminal colors
xrdb ~/.Xresources

./.fehbg

# Disable PC Speaker
xset -b

sxhkd -m -1 &
exec bspwm
