#!/usr/bin/env bash
# Turns the display of desktop icons on or off each time it is run
# restarts Finder to apply settings

state=$(defaults read com.apple.finder CreateDesktop)
target=""

if [ "$state" == "true" -o "$state" == "" ]
then
   target="false"
else
   target="true"
fi

defaults write com.apple.finder CreateDesktop $target
killall Finder  # must restart Finder for setting to take effect
