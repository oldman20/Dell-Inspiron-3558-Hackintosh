#!/bin/sh

#  Script.sh
#  
#
#  Created by Trån √ån Çhuç on 16/09/2022.
#  
# remove all local changes
git reset --hard HEAD
rm -rf build

# pull latest code
git pull

# remove generated firmware
rm include/FwBinary.cpp

# remove firmware for other wifi cards - DELETE OR CHANGE TO YOUR CARD
find IntelBluetoothFirmware/fw/ -type f ! -name 'ibt-hw-37.7.10-fw-1.0.1.2d.d.bseq' -delete

# generate firmware
xcodebuild -project IntelBluetoothFirmware.xcodeproj -target fw_gen -configuration Release -sdk macosx

# build the kexts
## IntelBluetoothFirmware
xcodebuild -project IntelBluetoothFirmware.xcodeproj -target IntelBluetoothFirmware -configuration Release -sdk macosx

# Location of Kexts
echo "You kexts are in build/Release!!"
echo " "
