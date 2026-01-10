#!/bin/bash
KITTY_ROOT=/home/khaotik/build/kitty
THIS_DIR="${KITTY_ROOT}/shell-integration/bash"
KITTY_EXE="${KITTY_ROOT}"/kitty/launcher/kitty
if [ -S /tmp/kitty-u${UID} ]; then
  ${KITTY_EXE} @ --to unix:/tmp/kitty-u${UID} resize-os-window --action toggle-minimized
else
  ${KITTY_EXE} --class=kitty --start-as=fullscreen --listen-on=unix:/tmp/kitty-u${UID} -1 --detach

fi
