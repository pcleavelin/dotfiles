#!/usr/bin/env bash

# Kill previously running scripts if they exist
ps -aux | grep scripts/wallpaper.sh | grep -v grep | awk '{ print $2 }' | xargs -r kill -9

while :; do
    nitrogen --set-auto --random ~/Pictures/Wallpapers --head=0
    sleep 30m
done
