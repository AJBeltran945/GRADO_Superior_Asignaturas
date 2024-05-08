#!/bin/bash

echo -n "Introdueix la URL del lloc web a comprovar: "
read url
sleep 1

if ping -q -c 2 -W 1 $url > /dev/null; then
    echo "Aquest lloc web està en línia"
    break
else
	while true; do
		echo "Aquest lloc web està offline"
		sleep 2
	done
fi