# prepare the images
magick -gravity center -background red -fill blue -size 100x800 -font /System/Library/Fonts/MarkerFelt.ttc caption:"800x100" images/text100x800.png
magick -gravity center -background red -fill blue -size 800x100 -font /System/Library/Fonts/MarkerFelt.ttc caption:"100x800" images/text800x100.png
magick -gravity center -background red -fill blue -size 800x800 -font /System/Library/Fonts/MarkerFelt.ttc caption:"800x800" images/text800x800.png

# resize to fixed resolution
convert images/text100x800.png -resize 100x100!  images/resize100x800Fixed.webp 
convert images/text800x100.png -resize 100x100!  images/resize800x100Fixed.webp 
convert images/text800x800.png -resize 100x100!  images/resize800x800Fixed.webp 

# resize to target resolution, respect the origin ratio
convert images/text100x800.png -resize 100x100   images/resize100x800Loose.webp 
convert images/text800x100.png -resize 100x100   images/resize800x100Loose.webp 
convert images/text800x800.png -resize 100x100   images/resize800x800Loose.webp 