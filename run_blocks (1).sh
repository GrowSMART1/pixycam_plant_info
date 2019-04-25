#!/usr/sh

cd ~/uhubctl/
sudo ./uhubctl -a 1 -p 3 -l 1-1
sleep 0.5
sudo ./uhubctl -a 1 -p 3 -l 1-1.1
sleep 0.5
sudo ./uhubctl -a 1 -p 2 -l 1-1.1
sleep 0.5

cd ~
./scan_barcode.sh
sleep 1

cd ~/uhubctl/
sudo ./uhubctl -a 0 -p 3 -l 1-1

sleep 1


sudo python ~/pixy2/build/python_demos/get_blocks_python_demo.py
cd ~/uhubctl/
sudo ./uhubctl -a 0 -p 3 -l 1-1.1

sleep 0.5
sudo python ~/pixy2/build/python_demos/get_blocks_python_demo.py

sleep 2
sudo ./uhubctl -a 1 -p 3 -l 1-1

sleep 0.5
sudo ./uhubctl -a 0 -p 2 -l 1-1.1

sleep 0.5
sudo ./uhubctl -a 1 -p 3 -l 1-1.1

sleep 0.5
sudo ./uhubctl -a 1 -p 2 -l 1-1.1


