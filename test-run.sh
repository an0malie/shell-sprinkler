#!/bin/sh
# Do a quick north+south run
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

echo `date +"%H:%M:%S"`" > Starting a test run!"

/home/pi/shell-sprinkler/test-north-zone.sh &
/home/pi/shell-sprinkler/test-south-zone.sh &

echo `date +"%H:%M:%S"`" > Test run started!"
