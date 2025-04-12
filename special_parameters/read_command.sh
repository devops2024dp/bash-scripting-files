#!/bin/bash

###region="eu-west-1"

#you have been asked to privsion 10 servers in the US region ( us-east-1)

read -p "Enter your region: " reg

for num  in 1 2 3 4 5; do 
    
   if [[ $reg  == "us-east-1" ]]; then 
  
       echo "I am provisioning 10 server in the $reg"
   elif [[ $reg == "sa" ]]; then 
       echo "region is $reg  we are provisioning servers"
   elif [[ $reg == "india" ]]; then 
       echo "regin is $reg , we are provisioning 1 server"
   else
   echo "Region is not known so we are not provisioning any servers"
   fi

  
  echo "$num server(s) has been created in $reg"
  echo " ----------------------"
done

