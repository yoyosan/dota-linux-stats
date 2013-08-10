#!/bin/bash
function repeatchar {
	if [ -z $3 ]; then
		echo -n '    '
	fi
	for i in `seq "$1"`;
	do
		echo -n $2
	done
	echo
}
function debug {
	repeatchar $1 $2 $4
	if [ -z $4 ]; then
		echo -n '    '
	fi
	echo '    ' $3
	repeatchar $1 $2 $4
}

while true; do
	debug 100 '=' "`date`" off
	echo
	debug 50 '-' 'Process info'
	echo
	ps -C "dota_linux" -F
	echo
	debug 50 '-' 'top info'
	echo
	top -n 1 -bcH | head -n 10
	echo
	debug 50 '-' 'IO info'
	echo
	iostat -dkx /dev/sda6
	repeatchar 100 '=' off
	echo
	sleep 1
done
