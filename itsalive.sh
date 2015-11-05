#!/bin/bash

NETWORK=$1

itsalive()
{
    ping -c 1 $1 > /dev/null
    [ $? -eq 0 ] && echo Node with IP: $i is alive!
}

for i in $NETWORK.{1..254} 
do
    itsalive $i & disown
done
