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

# Loads terminal colors
xrdb ~/.Xresources

# Set keymap to programmer's dvorak
setxkbmap dvp -option caps:swapescape

# Disable PC Speaker
xset -b
