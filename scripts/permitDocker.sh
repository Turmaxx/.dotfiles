#!/bin/bash 
sudo groupadd docker
sudo usermod -aG docker $USER

# System will need a reboot
reboot
