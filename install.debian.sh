#!/bin/bash

# delete from here (to disable the root check)
if [ `whoami` == 'root' ]
  then
    echo "You cannot be root to do this. You will be asked for root password when needed. If you are running vscode as root for some reason, edit this file and delete the denoted region"
    exit
fi
# to here

cp -prv spiketools/ ~/
# FIXME: at least python 3.7 is required. 
# However, this command will install an older python on certain systems
# (e.g. Ubuntu 18.04)
sudo apt-get install python3 python3-pip python3-venv
sudo adduser $USER dialout
cd ~/spiketools/
python3 -m venv venv
. venv/bin/activate
pip3 install -r requirements.txt
echo "All done!"
