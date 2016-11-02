#!/bin/bash
if [ $1 == "" ]; then
echo "Usage: $0 meusite.com"
else
for url in $(cat listadns.txt);
do
host $url.$1 | grep -v "not found" | cut -d " " -f4
done
fi

