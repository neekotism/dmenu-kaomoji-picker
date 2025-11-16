#!/bin/bash

cd ~/Scripts || exit

selected_kaomoji=$(<kaomojis.txt dmenu -p "Select a kaomoji:")

if [[ -n "$selected_kaomoji" ]]; then
    echo -n "$selected_kaomoji" | xclip -selection clipboard
fi
