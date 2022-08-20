#!/bin/bash

# Script should be run in the background with "./diag5.sh &"
# Can be manually terminated with kill or pkill
# Script assumes it is running in the correct Github Repo

x=1
while [ $x -eq 1 ]
do
ps -xa --format %mem,%cpu,cmd > process$(date +'%H:%M:%S').log
git add .
git commit -m "NEW PROCESS LOG"
git pull
git push 
sleep 60s
done

