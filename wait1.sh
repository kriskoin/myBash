# this script waits for another script

#!/bin/bash

echo "start: $(date +"%M:%S")"

#launch the script 
./sleep5.sh &
pid=$! # get the process id

wait $pid

echo "end: $(date +"%M:%S")"
