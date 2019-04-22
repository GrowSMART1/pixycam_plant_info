#!/usr/env/python3

import serial

ser = serial.Serial('/dev/ttyACM0', 9600)
ser.write(b'3')
