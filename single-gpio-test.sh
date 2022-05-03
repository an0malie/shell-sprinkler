#!/bin/sh
# Test some GPIO!!

# Pins in use!
# GPIO 26 - Relay 8
# GPIO 16 - Relay 7
# GPIO 06 - Relay 6
# GPIO 05 - Relay 5
# GPIO 25 - Relay 4
# GPIO 24 - Relay 3
# GPIO 23 - Relay 2
# GPIO 17 - Relay 1

# Include our library functions
. /home/pi/ShellSprinkler/lib.sh

# Define our pinouts
GPIOs="26"

# Prep our pinouts
#initGPIO $GPIOs

# Foreach pinout, set it to high to 5 seconds to test it
for GPIO in ${GPIOs}
do
   echo `date +"%H:%M:%S"`" > Setting GPIO $GPIO to high for 30 minutes"
   setGPIO $GPIO 30
   echo `date +"%H:%M:%S"`" > GPIO $GPIO done!"
   sleep 1
done

echo `date +"%H:%M:%S"`" > GPIO test complete!"
