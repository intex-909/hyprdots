#!/bin/bash

[ -z $1 ] && exit

wallpaper="$1"
filename="${1%.*}"
ext="${1##*\.}"

blurred_wallpaper="$2"

if [ -z $blurred_wallpaper ]; then
  blurred_wallpaper="${filename}_blurred.${ext}"
fi

magick $wallpaper -resize 75% -blur "50x30" $blurred_wallpaper
