#!/usr/bin/env bash

cd /opt
SCID=$(ls | grep "connect" | sed 's/\.app//g' | cut -d'-' -f2)

#Unload screenconnect
sudo launchctl unload /Library/LaunchDaemons/connectwisecontrol-$SCID.plist
sudo launchctl unload /Library/LaunchAgents/connectwisecontrol-$SCID-onlogin.plist
sudo launchctl unload /Library/LaunchAgents/connectwisecontrol-$SCID-prelogin.plist

#Kill client
sudo pkill "CT Sapphire Client"

#Remove app and launchD and launchAgents
sudo rm -rf /opt/connectwisecontrol-$SCID.app
sudo rm -rf /Library/LaunchDaemons/connectwisecontrol-$SCID.plist
sudo rm -rf /Library/LaunchAgents/connectwisecontrol-$SCID-onlogin.plist
sudo rm -rf /Library/LaunchAgents/connectwisecontrol-$SCID-prelogin.plist

#Remove script
sleep 10
sudo rm -- "$0"
