#!/usr/bin/env python3

import sys
import binascii

binary = open(sys.argv[1], 'rb')

for byte in binary.read():
    #sys.stdout.write("\\x"+binascii.hexlify((hex(byte))))
    #print (hex(byte))
    print ("\\x" + "".join("{:02x}".format(byte)), end="")
print ("")
