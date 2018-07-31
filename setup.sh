#!/bin/bash
# Convenient setup.sh script written by Claude Pageau

ver="1.0"
APP_DIR='filebrowse'  # Default folder install location

cd ~
if [ -d "$APP_DIR" ] ; then
  STATUS="Upgrade"
  echo "Upgrade $APP_DIR Files"
else
  echo "New $APP_DIR Install"
  STATUS="New Install"
  mkdir -p $APP_DIR
  echo "$APP_DIR Folder Created"
fi

cd $APP_DIR
INSTALL_PATH=$( pwd )

# Remember where this script was launched from
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "-------------------------------------------------------------"
echo "      FileBrowser.sh Demo script"
echo "-------------------------------------------------------------"
echo " Downloading Files"
wget -O Readme.md -q --show-progress https://raw.github.com/pageauc/FileBrowser/master/Readme.md
if [ $? -ne 0 ] ;  then
  wget -O filebrowse.sh https://raw.github.com/pageauc/FileBrowser/master/filebrowse.sh
else
  wget -O filebrowse.sh -q --show-progress https://raw.github.com/pageauc/FileBrowser/master/filebrowse.sh
  wget -O Readme.md -q --show-progress https://raw.github.com/pageauc/FileBrowser/master/Readme.md
fi

chmod +x *sh

echo "$STATUS Complete to $INSTALL_PATH"
echo "-----------------------------------------------
This Demo whiptail filebrowse menu can be used in your own bash scripts
to return a user selected file name.

Configuration
Use nano to edit filebrowse.sh

    cd ~/filebrowse
    nano filebrowse.sh

Edit the variables below for your requirements

menutitle="File Selection Menu"
startdir="/home/pi"
filext='jpg'

ctrl-x y to save and exit nano editor

To Run demo filebrowse.sh

    cd ~/filebrowse
    ./filebrowse.sh

1 Select Back to navigate to a previous directory.
2 Select a directory entry to navigate to that folder and display list of files/folders.
3 Select a file name that matches the filext variable. If file type is valid
  the file name will be returned
4 You can include this code in your own project
-----------------------------------------------"

echo "Good Luck Claude ..."
echo "Bye"