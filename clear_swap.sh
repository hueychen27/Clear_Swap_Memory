#!/bin/bash
if [ "$EUID" -ne 0 ]
  then echo "Please run as root."
  exit
fi
echo "Clearing swap memory"
swapoff -a
echo "Wait for 30 seconds."
sleep 30
echo "Enabling swap again."
swapon -a
