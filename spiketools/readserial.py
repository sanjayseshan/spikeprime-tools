#!/usr/bin/python3
import serial, sys
ser = serial.Serial(sys.argv[1])  # open serial port
print(ser.name)         # check which port was really used
line = ""
try:
    while not ("PROGEXITPROG" in line):
        line = ser.readline().decode().strip().split("TXTSPTXT")
        print(line[1])
    ser.close()
except:
    ser.close()
    print("done")
