#!/bin/bash

###region="eu-west-1"

#you have been asked to privsion 10 servers in the US region ( us-east-1)

#read -p "Enter your region: " $1

for num  in 1 2 3 4 5; do 
    
   if [[ $1  == "us-east-1" ]]; then 
  
       echo "I am provisioning 10 server in the $1"
   elif [[ $1 == "sa" ]]; then 
       echo "region is $1 we are provisioning servers"
   elif [[ $1 == "india" ]]; then 
       echo "regin is $1 , we are provisioning 1 server"
   else
   echo "Region is not known so we are not provisioning any servers"
   fi

  
  echo "$num server(s) has been created in $1"
  echo " ----------------------"
done

