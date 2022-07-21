# generate static image
magick -gravity center -background red -fill blue -size 800x800 -font /System/Library/Fonts/MarkerFelt.ttc caption:"800x800" images/text800x800.png
# generate animated 
convert   -crop 10x800 images/text800x800.png +repage images/animated.webp
# extract first frame
convert images/animated.webp[0]  images/first.webp