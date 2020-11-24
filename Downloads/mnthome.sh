#!/bin/bash

echo Freigabepunkt
read freigabe

if [ -d "/home/incenargo/$freigabe" ];
then 
	echo no mkdir
	sudo mount -t cifs -o user=multi //192.168.0.13/$freigabe /home/incenargo/$freigabe
else 
	echo mkdir then mnt
	sudo mkdir /home/incenargo/$freigabe && sudo mount -t cifs -o user=multi //192.168.0.13/$freigabe /home/incenargo/$freigabe

fi
