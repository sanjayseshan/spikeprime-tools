#!/bin/bash

# delete from here (to disable the root check)
if [ `whoami` == 'root' ]
  then
    echo "You cannot be root to do this. You will be asked for root password when needed. If you are running vscode as root for some reason, edit this file and delete the denoted region"
    exit
fi
# to here

cp -prv spiketools/ ~/
sudo apt-get install python3 python3-pip
sudo adduser $USER dialout
cd ~/spiketools/
sudo pip3 install -r requirements.txt
echo "All done!"
