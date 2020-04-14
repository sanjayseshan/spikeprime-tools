#!/usr/bin/python3
import serial
ser = serial.Serial('/dev/ttyACM0')  # open serial port
print(ser.name)         # check which port was really used
line = ""
try:
    while not ("EXIT" in line):
        line = ser.readline().decode().strip().split("TXTSPTXT")
        print(line[1])
    ser.close()
except:
    ser.close()
    print("done")
