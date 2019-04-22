#! /usr/bin/python3

#cd /home/pi/pixy2/build/get_blocks_cpp_demo
#sudo ./get_blocks_cpp_demo > /home/pi/pixy2/documents/get_blocks.txt 
import serial

ser = serial.Serial('/dev/ttyACM0', 9600)
#ser.write(b'3')


file = open("/home/pi/pixy2/documents/get_blocks.txt")
filelist = []

i = 0
sixthline = ""
for line in file:
    line = line.strip("\n")
    i = i+1

    if i == 6:
        sixthline = line
    if i > 6 and len(line) == len(sixthline):
        break
    filelist.append(line.split())
if len(filelist) == 5:
    print("Erro:no pixy device detected")
if len(filelist) == 6:
    print("No blocks detected")
else:
    newlist = []

    newlist = filelist[6:]
    #print(newlist)
    i = 0
    j = 0
    k = 0
    while i < len(newlist):
        if newlist[i][3] == '3' or newlist[i][3] == '6':
            j = j + 1
        if newlist[i][3] == '4' or newlist[i][3] == '7':
            k = k + 1
        i = i + 1

if j > 1:
    ser.write(b'10')
if k > 1:
    ser.write(b'20')





