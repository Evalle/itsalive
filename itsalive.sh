#!/bin/bash

NETWORK=$1

itsalive()
{
    ping -c 1 $1 > /dev/null
    [ $? -eq 0 ] && echo Node with IP: $i is up.
}

for i in $NETWORK{1..255} 
do
    itsalive $i & disown
done
