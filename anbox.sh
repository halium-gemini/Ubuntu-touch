#!/bin/sh
cd ~
sudo mount -o remount,rw /
sudo apt update
sudo apt install -y anbox-ubuntu-touch
mkdir anbox-data
sudo wget -q --show-progress -O /home/phablet/anbox-data/android.img http://cdimage.ubports.com/anbox-images/android-armhf-64binder.img
touch /home/phablet/anbox-data/.enable
mkdir /home/phablet/anbox-data/data
sudo chmod -R o+wrx /home/phablet/anbox-data/data
sudo start -q anbox-container
start -q anbox-session
echo "please wait some minutes and reboot the device (if android apps don't show in the app list try to wait and reboot again)!"
