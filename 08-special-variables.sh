#!/bin/bash 

echo "all cmd line args:$@"
echo "No of cmd line args:$#"
echo "Prog name:$0"

echo "current working dir:$PWD"
echo "home:$HOME"
echo "USER:$USER"
echo "hostname:$HOSTNAME"

sleep 10
echo "current PID:$$"
echo "last background pid:$!"
echo "last command success 0 or other:$?"
