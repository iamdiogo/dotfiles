#!/bin/bash

[[ -f ~/.profile ]] && . ~/.profile
[[ -f ~/.bashrc ]] && . ~/.bashrc

if [[ "$(tty)" = "/dev/tty1" ]]; then
	startx
fi

if [[ "$(tty)" = "/dev/tty2" ]]; then
	startx ~/.xinitrc_gnome
fi
