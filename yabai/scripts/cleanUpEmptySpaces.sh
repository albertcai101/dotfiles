#!/usr/bin/env bash
# Check for fullscreen spaces before taking any action
if [ $(yabai -m query --spaces | jq -re 'map(select(."is-native-fullscreen" == true)) | length') -eq 0 ]; then
    # Re-check for fullscreen windows after the delay
    if [ $(yabai -m query --spaces | jq -re 'map(select(."is-native-fullscreen" == true)) | length') -eq 0 ]; then
        yabai -m query --spaces --display | \
            jq -re 'map(select(."is-native-fullscreen" == false)) | length > 1' \
            && yabai -m query --spaces | \
                jq -re 'map(select(."windows" == [] and ."has-focus" == false).index) | reverse | .[] ' | \
                xargs -I % sh -c 'yabai -m space % --destroy'
    fi
fi
