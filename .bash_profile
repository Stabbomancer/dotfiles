if [[ -f ~/.bashrc ]] ; then
    . ~/.bashrc
fi

if [[ -t 0 && $(tty) == /dev/tty1 && ! $DISPLAY ]]; then
	export XCURSOR_SIZE=24
	exec dbus-launch --exit-with-session start-hyprland
fi
