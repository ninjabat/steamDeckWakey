#!/bin/bash

# Ensure you have the wireless adapter that comes with Xbox Controller to be able to pair them together instead of Bluetooth.
# Enter Desktop mode on the Steam Deck and go to the Terminal.

# set root password if you haven't
sudo passwd

# Enable editing the read-only image for Steam OS with this command:
sudo steamos-readonly disable

# Initialize the keyring for Pacman:
sudo pacman-key --init

# Populate the Pacman keyring with the default Arch Linux keys:
sudo pacman-key --populate archlinux

# Update and Upgrade all packages:
sudo pacman -Syu

# Ensure you have all the dependencies required to be able to proceed with the next steps:
sudo pacman -S dkms cabextract linux-neptune-headers

# Enter this line to download xone into the home directory from github:
git clone https://github.com/medusalix/xone

# Go into the xone directory by typing cd xone and install xone:
sudo ./install.sh --release

# Finally get the firmware needed to make the Xbox Controller pair with wireless adapter:
sudo xone-get-firmware.sh

# re-enable read-only of the image
sudo steamos-readonly enable
