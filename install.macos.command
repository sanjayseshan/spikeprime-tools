#!/bin/bash

# delete from here (to disable the root check)
if [ `whoami` == 'root' ]
  then
    echo "You cannot be root to do this. If you are running vscode as root for some reason, edit this file and delete the denoted region"
    exit
fi
# to here

DIRNAME=`dirname "$0"`

cp -prv $DIRNAME/spiketools ~/
cd ~/spiketools/
sudo pip3 install -r requirements.txt
echo "All done!"
