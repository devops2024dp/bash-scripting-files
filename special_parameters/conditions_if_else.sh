#!/bin/bash
if [[ 2 -gt 4 ]]; then
       echo "Yes this is true in the 1st IF clause"
 else
    echo "2 is never greater than 4"
 fi

#ireland
###region="eu-west-1"

#you have been asked to privsion 10 servers in the US region ( us-east-1)

if [[ $1  == "us-east-1" ]]; then 
  
    echo "I am provisioning 10 server in the $1"
elif [[ $1 == "sa" ]]; then 
   echo "region is $1 we are provisioning servers"
elif [[ $1 == "india" ]]; then 
   echo "regin is $1 , we are provisioning 1 server"
else
 echo "Region is not known so we are not provisioning any servers"
fi

echo "script has finished running"
