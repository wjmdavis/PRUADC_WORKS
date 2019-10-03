#!/bin/sh

#DELAY = 1
# commented out the delay, sleep, and kill 

echo "PRU ADC v0.1 WJMD Sep19, based on PRUADC1 by GRaven"
#STart PRUs
echo "Starting PRUs..."
#startPRUs  -- alias in .bashrc, doesn't work here
echo start | sudo tee /sys/class/remoteproc/remoteproc1/state /sys/class/remoteproc/remoteproc2/state



# Launch script in background
echo "Launching ADC User-space program..."
./fork_pru_termOut3

# Get its PID
PID=$!

# Wait for 2 seconds
#sleep $DELAY
# Kill it
#kill $PID

echo "rpmsg_pru30 contents:"
dd if=/dev/rpmsg_pru30 count=1 bs=8| od -t x1 -A n

# Now stop the PRUs
echo "Stopping PRUs..."
# stopPRUs -- alias in .bashrc, doesn't work here
echo stop | sudo tee /sys/class/remoteproc/remoteproc1/state /sys/class/remoteproc/remoteproc2/state


echo "Complete."
