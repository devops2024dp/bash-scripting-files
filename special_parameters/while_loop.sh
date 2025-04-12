#!/bin/bash
#num=1
#while [[ 4 > 1 ]]; do 
 #   echo "$num"
 #   ((num++))

#done


num=1
while [[ true ]]; do

 curl datapandas.com
 ((num++))

  if [[ $? -ne  0 ]]; then 
     echo "site is no longer available"
    exit
  fi 

  
  if [[ $num -eq 20 ]]; then 
      exit
   fi
done
