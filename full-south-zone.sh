#!/bin/bash
# Run the south zone program!
#
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
#GPIOs="5 6 16 26"
GPIOs="$pinS1 $pinS2 $pinS3 $pinS4"
gpioArray=(${GPIOs})
#TIMEs="1800 1800 2700 3600"
TIMEs="$timeS1 $timeS2 $timeS3 $timeS4"
timeArray=(${TIMEs})

# Prep our pinouts
initGPIO $GPIOs

# Foreach pinout, set it to high to TIMEs[x] seconds
for i in {0..3}
do
   echo `date +"%H:%M:%S"`" > Setting GPIO ${gpioArray[$i]} to high for ${timeArray[$i]} seconds"
   setGPIO ${gpioArray[$i]} ${timeArray[$i]}
   echo `date +"%H:%M:%S"`" > GPIO ${gpioArray[$i]} done!"
   sleep 1
done

echo `date +"%H:%M:%S"`" > Full south zone complete!"
