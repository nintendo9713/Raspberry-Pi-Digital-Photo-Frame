#!/bin/bash
#slideshow script

cd /home/pi/pics/

#needed for starting first run at 1
touch jamie0.jpg

experiment () {
        while true; do
                #download picture
                sudo wget http://jesseardonne.com/images/jamie.jpg
                #transfer to unique file name using index
                mv jamie.jpg jamie$i.jpg
                #compare pictures
                if diff jamie$i.jpg jamie$((i-1)).jpg >/dev/null ; then
                        echo SAME
                        rm jamie$i.jpg
                else
                        echo DIFF
                        ((i++))
                        echo $i > i.txt
                fi
                sleep 10
         done
}

if [ ! -f /home/pi/pics/i.txt ]
         then
                #this is only for the first time it's ever run.
                echo 1 > i.txt
fi

export DISPLAY=:0.0
i=$(< i.txt)
qiv -f -R -s -r -d 10 -t -i -m -T /home/pi/pics/*.jpg & experiment
