#!/bin/bash
# find path for IntelliJ preferences directory (can be multiple)
I=$(find ~/Library/Preferences -type d -name IntelliJIdea* -o -type d -name IdeaIC*)

# execute `curl` to save keymap
for temp in $I; do
	X="$I/keymaps/Keymap_Xcode.xml"
	echo Installing as $X
	curl "https://raw.githubusercontent.com/Pitzcarraldo/IntelliJ-IDEA-Xcode-Keymap/master/Keymap_Xcode.xml" > "$X"
done
