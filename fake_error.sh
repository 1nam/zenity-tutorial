#!/bin/bash

# 1nam my example of a fake-error. using bash and zenity.
# run the script and type: debug to see zanity GUI
# or bash else Loop an error message using command yes.
# note: bash is case sensitive use lower case.

# bash debug starts
read -p "For debug-info please type debug: " raw
if [ $raw == "debug" ]
then
#bash ends

# zenity GUI starts
zenity --error \
--text="/var/log/syslog Debug-info no errors!"
# zenity ends

# bash Loop starts
else
yes '''[Debug-error/var/log/syslog not found!] "CTRL + C = STOP!'''
fi
# bash ends

# terminal is Awesome!
# fun way to add GUI to bash by using zenity!
