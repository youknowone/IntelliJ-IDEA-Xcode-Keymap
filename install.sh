#!/bin/bash
# find path for IntelliJ preferences directory (can be multiple)
IFS=$'\n' read -rd '' -a I <<< $(find ~/Library/Preferences -type d -name IntelliJIdea* -o -type d -name IdeaIC*)
# execute `curl` to save keymap
for temp in $I; do
        X="$temp/keymaps/Keymap_Xcode.xml"
        echo Installing as $X
        cp ./Keymap_Xcode.xml "$X"
done
