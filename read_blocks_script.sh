#!/bin/sh
##################################################################
#Turn all cameras on
#cd ~/uhubctl

#sudo ./uhubctl -a 1 -p 3 -l 1-1
#sleep 1

#sudo ./uhubctl -a 1 -p 3 -l 1-1.1
#sleep 1

#sudo ./uhubctl -a 1 -p 2 -l 1-1
#sleep 1
#############################################################################
#Scan Barcode

#./scan_barcode.sh
#sleep 2
#cd ~/uhubctl

#turn barcode camera off after scanning barcode
#switches to middle camera
#sudo ./uhubctl -a 0 -p 3 -l 1-1


########################################################################
#Read blocks ...first camera
#sleep 1

cd ~/pixy2/build/get_blocks_cpp_demo/

sudo ./get_blocks_cpp_demo
#> ~/pixy2/documents/get_blocks.txt && echo " " & 
#python3 ~/read_blocks.py

#sleep 1
#turn moddle camera off
#switches to top camera
#for 2 camera testing comment out
#sudo ./uhubctl -a 0 -p 3 -l 1-1.1

#with 2 cameras only uncomment
#cd ~/uhubctl

#sudo ./uhubctl -a 1 -p 3 -l 1-1
#sudo ./uhubctl -a 0 -p 3 -l 1-1.1

################################################################
#Read blocks ...second camera
#sleep 1
#cd ~/pixy2/build/get_blocks_cpp_demo/
#sudo ./get_blocks_cpp_demo > ~/pixy2/documents/get_blocks.txt && echo " " &
#python3 ~/read_blocks.py

##################################################################
#return to barcode camera
#sleep 1

#turn barcode camera back on
#cd ~/uhubctl

#sudo ./uhubctl -a 1 -p 3 -l 1-1
#sleep 1

#turn middle camera back on
#sudo ./uhubctl -a 1 -p 3 -l 1-1.1
#sleep 1

#trun top camera off
#switches to barcode camera


#for 2 cameras testing comment out
#sudo ./uhubctl -a 0 -p 2 -l 1-1.1

