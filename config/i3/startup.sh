#!/bin/bash

source ./toggletouchpad.sh
setxkbmap -option 'grp:alt_shift_toggle' us,el -option caps:escape           [23:13:09]
nm-applet &
pasystray &
blueman-applet &

