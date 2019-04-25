import pixy 
from ctypes import *
from pixy import *
##############################################
import serial
ser = serial.Serial('/dev/ttyACM0', 9600)

#string1 = "u"
#str1_encode = string1.encode()
#ser.write(string1)




#####################################
# Pixy2 Python SWIG get blocks example #

print ("Pixy2 Python SWIG Example -- Get Blocks")

pixy.init ()
pixy.change_prog ("color_connected_components");

class Blocks (Structure):
  _fields_ = [ ("m_signature", c_uint),
    ("m_x", c_uint),
    ("m_y", c_uint),
    ("m_width", c_uint),
    ("m_height", c_uint),
    ("m_angle", c_uint),
    ("m_index", c_uint),
    ("m_age", c_uint) ]

blocks = BlockArray(100)
frame = 0



j = 0
k = 0


while 1:
    
  count = pixy.ccc_get_blocks (100, blocks)

  if frame > 30:
      print("frames are enough")     
      break
  if j == 2:
      ser.write(b'3')
     # print("more than one")
      break
  if k == 2:
      ser.write(b'4')
      break


  if count > 0:
    #print ('frame %3d:') % (frame)
    frame = frame + 1
    for index in range (0, count):
     
      print ('[BLOCK: SIG=%d X=%3d Y=%3d WIDTH=%3d HEIGHT=%3d]') % (blocks[index].m_signature, blocks[index].m_x, blocks[index].m_y, blocks[index].m_width, blocks[index].m_height)
      if blocks[index].m_signature == 5:
          k = k + 1
      if blocks[index].m_signature == 4:
          k = k + 1
          #print("enter")
          #break
      if blocks[index].m_signature == 3:
          j = j + 1
          #print("enter")
          #break
      if blocks[index].m_signature == 6:
          j = j + 1
  else:
      m = 0
      while m < 100:
          m = m+1
      count = pixy.ccc_get_blocks (100, blocks)
      if count == 0:
          break
      #print("print no blocks detected")
      #break
      

