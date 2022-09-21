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
find itlwm/firmware/ -type f ! -name 'iwm-3160-*' -delete


# generate firmware
xcodebuild -project itlwm.xcodeproj -target fw_gen -configuration Release -sdk macosx

# build the kexts
## 1. itlwm.kext
xcodebuild -project itlwm.xcodeproj -target itlwm -configuration Release -sdk macosx

## 3. AirportItlwm Monterey
xcodebuild -project itlwm.xcodeproj -target AirportItlwm-Monterey -configuration Release -sdk macosx


# Location of Kexts
echo "You kexts are in build/Release!!"
echo " "
