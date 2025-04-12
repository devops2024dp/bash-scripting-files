#!/bin/bash
options=("y" "N" "yes" "No")
select choice in "${options[@]}"; do 
 echo "you have selected option: $choice"
 echo "exiting...."
 exit
done
