#!/usr/bin/env sh

if [[ $1 == "" ]] #Where "$1" is the positional argument you want to validate 
 then
 echo "Arguments required: <ssid> <password>"
 exit 0
fi
if [[ $2 == "" ]] #Where "$1" is the positional argument you want to validate 
 then
 echo "Arguments required: <ssid> <password>"
 exit 0
fi

nmcli d wifi connect $1 password $2
