#!/bin/bash

# This will reinstall the xorg nouveau drivers
sudo apt-get install --reinstall xserver-xorg-video-intel xserver-xorg-core
sudo dpkg-reconfigure xserver-xorg
