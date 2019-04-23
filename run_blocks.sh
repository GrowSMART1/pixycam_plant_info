#!/usr/sh


sudo python ~/pixy2/build/python_demos/get_blocks_python_demo.py
cd ~/uhubctl/
sudo ./uhubctl -a 0 -p 3 -l 1-1.1
