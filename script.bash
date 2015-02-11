#!/bin/bash
#slideshow script

cd /home/pi/pics/

#sleep 15

export DISPLAY=:0.0

qiv -f -R -t -i -m -T /home/pi/pics/jamie.jpg &

experiment
funtion experiment{
  while true; do
   sudo wget http://site.com/image.jpg
   sudo mv jamie.jpg.1 jamie.jpg
    sleep 3600
  done
}
