#!/bin/bash
echo "downloading a file ....."
echo "the process id of the script is $$"


curl -O -L  https://datapandas.com/wp-content/uploads/2016/11/sample-data-for-price-optimisation-csv.csv


if [ $? -eq 0 ]; then
   cp  sample-data-for-price-optimisation-csv.csv   sample-data-for-price-optimisation-csv.csv-backup
   echo "Command executed succesffully"
else
  echo "Download failed so we are not backing up"
fi 
