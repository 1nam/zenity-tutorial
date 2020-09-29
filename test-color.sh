#!/bin/sh

# 1nam testing bash and zenity

# if yes you choose a color echos the color code.
# elif no strings good bye...
# if yes or no is not typed you get an error.

read -p "would you like to choose a color? " raw
if [ $raw == "yes" ]
then

# if yes zenity starts the GUI

COLOR=`zenity --color-selection --show-palette`

case $? in
         0)
		echo "You selected $COLOR.";;
         1)
                echo "No color selected.";;
        -1)
                echo "An unexpected error has occurred.";;
esac

# zenity ends.

elif [ $raw == "no" ]
then
echo "Good Bye..."
fi
