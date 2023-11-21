#!/bin/bash

sudo apt update
sudo apt install -y tightvncserver
sudo cp tightvncserver.service /etc/systemd/system/vncserver@.service
sudo chmod 644 /etc/systemd/system/vncserver@.service
sudo systemctl start vncserver@1.service
sudo systemctl enable vncserver@1.service
# confirm "Would you like to reboot now ?" && sudo reboot

echo "Connect via macos with cmd+k, vnc://raspberrypi.local:5901"
