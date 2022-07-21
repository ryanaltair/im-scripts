# generate static image for test

magick -gravity center -background red -fill blue -size 100x300 -font /System/Library/Fonts/MarkerFelt.ttc caption:"100x300" images/text100x300.png
magick -gravity center -background red -fill blue -size 300x100 -font /System/Library/Fonts/MarkerFelt.ttc caption:"300x100" images/text300x100.png
magick -gravity center -background red -fill blue -size 200x200 -font /System/Library/Fonts/MarkerFelt.ttc caption:"200x200" images/text200x200.png
magick -gravity center -background red -fill blue -size 400x300 -font /System/Library/Fonts/MarkerFelt.ttc caption:"400x300" images/text400x300.png

magick -gravity center -background red -fill blue -size 100x800 -font /System/Library/Fonts/MarkerFelt.ttc caption:"800x100" images/text100x800.png
magick -gravity center -background red -fill blue -size 800x100 -font /System/Library/Fonts/MarkerFelt.ttc caption:"100x800" images/text800x100.png
magick -gravity center -background red -fill blue -size 800x800 -font /System/Library/Fonts/MarkerFelt.ttc caption:"800x800" images/text800x800.png

# generate animated image for test
convert   -crop 10x800 images/text800x800.png +repage images/animated.webp
convert   -crop 10x800 images/text800x800.png +repage images/animated.gif