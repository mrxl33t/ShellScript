#!/bin/bash
if [$1 == ""]
then
	echo "Modo de usar: ./pingscript/sh [network]"
	echo "exemplo: ./pingscript.sh 192.168.0"
else
	for x in `seq 1 254`; do
		ping -c 1 $1.$x | grep "64 bytes" | cut -d " " -f4 | sed 's/.$//'
	done
fi
