#!/bin/bash
if [ -S /tmp/kitty-u${UID} ]; then
  kitty @ --to unix:/tmp/kitty-u${UID} resize-os-window --action toggle-minimized
else
  kitty --class=kitty --start-as=fullscreen --listen-on=unix:/tmp/kitty-u${UID} -1 --detach
fi
