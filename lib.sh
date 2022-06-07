#!/bin/sh
# Lib functions for ShellSprinkler

pinN1=26
pinN2=16
pinN3=6
pinN4=5
pinS1=17
pinS2=23
pinS3=24
pinS4=25

timeN1=3600
timeN2=3600
timeN3=1800
timeN4=1200
timeS1=1800
timeS2=1800
timeS3=2700
timeS4=3600

quickDiv=60
testDiv=100

#
# Initialize the GPIO pins
#
# $@ - Array of pin numbers
#
initGPIO() {
   GPIOargs=$@

   echo `date +"%H:%M:%S"`" > Beginning GPIO init"
   for GPIO in ${GPIOargs}
   do
      echo `date +"%H:%M:%S"`" > Checking for GPIO $GPIO directory"
      if [ ! -d "/sys/class/gpio/gpio$GPIO" ]; then
         echo `date +"%H:%M:%S"`" >  - GPIO $GPIO directory missing"
         echo "$GPIO" > /sys/class/gpio/export
      fi
   done

   sleep 1
   echo `date +"%H:%M:%S"`" > GPIO init complete"
}

#
# Set a GPIO pin high for x seconds
#
# $1 - GPIO pin number
# $2 - time in seconds to be active
#
setGPIO() {
   GPIOarg=$1
   TIMEarg=$2

   # Sets pin as an output
   echo "out" > /sys/class/gpio/gpio$GPIOarg/direction

   # Sets pin to high
   echo "1" > /sys/class/gpio/gpio$GPIOarg/value

   sleep $TIMEarg

   # Sets pin to low
   echo "0" > /sys/class/gpio/gpio$GPIOarg/value
}
