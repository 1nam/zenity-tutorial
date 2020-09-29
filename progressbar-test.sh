#!/bin/bash

# 1nam testing zanity and bash

# show zanity progressbar then make a folder 
# change directory to the new folder
# and make a new document
# then write in document and have terminal read the document

# start with zenity
(
echo "0" ; sleep 1
echo "25" ; sleep 1
echo "50" ; sleep 1
echo "# Finished!" ; sleep 1
echo "100" ; sleep 1
) |
zenity --progress \
  --title="Creating Folder Name: NewFolder" \
  --text="Creating Document xfile: Writing Text." \
  --percentage=0

if [ "$?" = -1 ] ; then
        zenity --error \
          --text="Update canceled."
fi
# bash out the rest.
mkdir NewFolder
cd NewFolder

echo "this text is in Directory NewFolder in Document xfile" > xfile

cat xfile
