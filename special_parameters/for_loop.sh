#!/bin/bash

for num in 1 2 3 4; do 
   echo "the loop is now dealing with item:  $num who is currently due in the queue"
done


echo "---------------------------------------------"

for town  in london us capetown rome; do 
    echo "the loop is now dealing with town:  $town who is currently due in the queue"
done


#declare array of regions
array_of_regions=("us-east-1" "us-east-2" "us-east-3"  "eu-west-1")  

for reg in "${array_of_regions[@]}"; do
     echo "I am dealing with region- ${reg} -- which is now in queue"
done




echo "extract specific item ${array_of_regions[3]} using index"
