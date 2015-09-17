#!/bin/bash

#slideshow script

cd /home/pi/pics/

#sleep 15

export DISPLAY=:0.0

qiv -f -R -s -r -d 10 -t -i -m -T /home/pi/pics/*.jpg

# Originally pulled a picture from my website to add but the Pi had an unreliable internet connection
