#!/bin/bash

#source ~/.profile
#workon barcode



cd ~/pixy2/build/get_raw_frame
sudo ./get_raw_frame
cd ~

#python barcode_scanner_image.py --image ./pixy2/build/get_raw_frame/out.ppm

python barcode_scanner_image.py --image ~/barcode_example.png > ~/barcode_output.txt


