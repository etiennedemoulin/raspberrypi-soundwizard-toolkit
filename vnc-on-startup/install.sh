#!/bin/bash

sudo apt update
sudo apt install -y tightvncserver
/usr/bin/tightvncserver
echo "Connect via macos with cmd+k, vnc://raspberrypi.local:5901"
cp tightvncserver.service /etc/systemd/system/vncserver.service
sudo chmod 755 /etc/init.d/tightvncserver
sudo update-rc.d tightvncserver defaults

yes | sudo reboot
