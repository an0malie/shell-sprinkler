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
. /home/pi/shell-sprinkler/lib.sh

pin=$pinN1
runtime=$((timeN1 / quickDiv))

echo `date +"%H:%M:%S"`" > Setting GPIO $pin to high for $runtime seconds"
setGPIO $pin $runtime
echo `date +"%H:%M:%S"`" > GPIO $pin done!"

echo `date +"%H:%M:%S"`" > GPIO test complete!"
