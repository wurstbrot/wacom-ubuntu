#!/bin/bash

xsetwacom list devices | sed 's/     .*//g' | while read line; 
do
  xsetwacom set "$line" MapToOutput 1920x1080+3440+0
done
