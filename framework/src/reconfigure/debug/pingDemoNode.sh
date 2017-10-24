# This script pings a demo node 
# parameter: node's number 

if test "$#" -ne 1 ; then 
    echo 'Provide exaclty 1 parameter: demo nodes ID' 
else 
    rosservice call /demoNode$1Comm '{command: 13, auth: 0x90}' 
fi
