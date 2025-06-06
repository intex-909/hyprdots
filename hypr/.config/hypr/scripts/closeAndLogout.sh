#!/bin/bash

count=$(hyprctl clients -j | jq 'length')

if [ $count -gt 0 ]; then
  hyprctl dispatch killactive
else
  dm-logout -r
fi

