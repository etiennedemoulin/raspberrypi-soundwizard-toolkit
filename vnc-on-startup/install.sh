#!/bin/bash

sudo apt update
sudo apt install -y tightvncserver
echo "Connect via macos with cmd+k, vnc://raspberrypi.local:5901"
sudo cp tightvncserver.service /etc/systemd/system/vncserver.service
sudo chmod 644 /etc/systemd/system/vncserver.service
sudo systemctl start vncserver
sudo systemctl enable vncserver
confirm "Would you like to reboot now ?" && sudo reboot
