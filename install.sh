#!/bin/sh

if [ $(uname) = "Darwin" ]; then  
  fonts_dir="$HOME/Library/Fonts"
elif [ $(uname) = "Linux" ]; then
  fonts_dir="$HOME/.local/share/fonts"
else
  echo "OS not supported."
  exit 1
fi

for font in **/*.ttf
do
  cp "$font" "$fonts_dir"
done
