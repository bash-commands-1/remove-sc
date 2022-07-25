#!/usr/bin/env bash

cd /opt
SCID=$(ls | grep "connect" | sed 's/\.app//g' | cut -d'-' -f2)

#launchctl unload /Library/LaunchDaemons/connectwisecontrol-$SCID.plist
#launchctl unload /Library/LaunchAgents/connectwisecontrol-$SCID-onlogin.plist
#launchctl unload /Library/LaunchAgents/connectwisecontrol-$SCID-prelogin.plist

#pkill "CT Sapphire Client"

#rm -rf /opt/connectwisecontrol-$SCID.app
#rm -rf /Library/LaunchDaemons/connectwisecontrol-$SCID.plist
#rm -rf /Library/LaunchAgents/connectwisecontrol-$SCID-onlogin.plist
#rm -rf /Library/LaunchAgents/connectwisecontrol-$SCID-prelogin.plist
sleep 10
rm -- "$0"
