convert -version
# Version: ImageMagick 7.1.0-43 Q16-HDRI aarch64 20237 https://imagemagick.org
# Copyright: (C) 1999 ImageMagick Studio LLC
# License: https://imagemagick.org/script/license.php
# Features: Cipher DPC HDRI Modules OpenMP(5.0)
# Delegates (built-in): bzlib fontconfig freetype gslib heic jng jp2 jpeg lcms lqr ltdl lzma openexr png ps raw tiff webp xml zlib
# Compiler: gcc (4.2)
# generate static image
magick -gravity center -background red -fill blue -size 800x800 -font /System/Library/Fonts/MarkerFelt.ttc caption:"800x800" images/text800x800.png

# generate animated image for test
convert   -crop 10x800 images/text800x800.png +repage images/animated.webp

# corp and resize to webp directly, seems blur here
convert  images/animated.webp  -coalesce -repage 0x0   -resize 30% -crop 200x200!+21+21             images/corpAnimated.webp
convert  images/animated.webp  -coalesce -repage 0x0   -resize 30% -crop 200x200!+21+21 -quality 99 images/corpAnimatedQ99.webp

# corp and resize to gif, no blur here. 
convert  images/animated.webp  -coalesce -repage 0x0   -resize 30% -crop 200x200!+21+21             images/corpAnimated.gif


# use gif2webp to convert webp again, no blur, too.
gif2webp images/corpAnimated.gif -o images/corpAnimated.cwebp.webp