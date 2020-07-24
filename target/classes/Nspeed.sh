#!/bin/bash
# export TERM=linux 
 ethn=$1
 RX_pre=$(cat /proc/net/dev | grep $ethn | sed 's/:/ /g' | awk '{print $2}')
 sleep 1
 RX_next=$(cat /proc/net/dev | grep $ethn | sed 's/:/ /g' | awk '{print $2}')
 clear
 RX=$((${RX_next}-${RX_pre}))
 RX=$(echo $RX | awk '{print $1/1024}')
 echo -e "$RX"