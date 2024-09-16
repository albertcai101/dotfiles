#!/bin/bash

sketchybar --add item front_app right \
           --set front_app       background.color=$ACCENT_COLOR \
                                 icon.color=$TEXT_COLOR \
                                 icon.font="sketchybar-app-font:Regular:11.5" \
                                 icon.padding_right=4 \
                                 label.color=$TEXT_COLOR \
                                 script="$PLUGIN_DIR/front_app.sh"            \
           --subscribe front_app front_app_switched
