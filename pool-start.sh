#!/bin/bash

echo ""
echo "Raven Pool Starting..."
echo ""
cd ~/rvn-kawpow-pool
source ~/.bashrc
source /etc/os-release

## who am i? ##
SCRIPTNAME="$(readlink -f ${BASH_SOURCE[0]})"
BASEDIR="~/rvn-kawpow-pool"

## Okay, print it ##
echo "Script name : $SCRIPTNAME"
echo "Current working dir : $PWD"
echo "Script location path (dir) : $BASEDIR"
echo ""
sudo setcap 'cap_net_bind_service=+ep' ~/.nvm/versions/node/v8.1.4/bin/node

screen -S pool node init.js

renice -n -18 -p $(pidof node)
renice -n -18 -p $(pidof nodejs)

echo ""
echo "Done!"
echo ""

exit 0
