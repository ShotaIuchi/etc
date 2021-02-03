convert -fuzz "90%" -fill "#00bcd4" -opaque "#000000" ic_place_org.png ic_place_tint.png
for (( i = 0; i < 50; i++ )) {
    dsp=$1+1
    convert -font Helvetica -size 48x48 -fill "#FF0000" -background none -pointsize 24 -gravity center caption:$((i+1)) n$i.png
    composite -compose over ./n$i.png ./ic_place_tint.png ./ic_place_$i.png

}
