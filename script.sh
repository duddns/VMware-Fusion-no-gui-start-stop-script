#!/bin/bash

function start() {
    echo "start Ubuntu on VMware"
    /Applications/VMware\ Fusion.app/Contents/Library/vmrun -T fusion start ~/Documents/Virtual\ Machines/Ubuntu\ 64-bit.vmwarevm/Ubuntu\ 64-bit.vmx nogui
}

function stop() {
    echo "stop Ubuntu on VMware"
    /Applications/VMware\ Fusion.app/Contents/Library/vmrun -T fusion stop ~/Documents/Virtual\ Machines/Ubuntu\ 64-bit.vmwarevm/Ubuntu\ 64-bit.vmx nogui
}


if [ "start" = "$1" ] ;
then
    start
elif [ "stop" = "$1" ] ;
then
    stop
else
    echo "usage: $0 { start | stop }"
    exit
fi
