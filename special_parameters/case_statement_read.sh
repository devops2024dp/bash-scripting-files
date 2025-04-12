#!/bin/bash
read -p "Enter a region you want to provision servers into: " region

case $region  in 
  "eu-west-2")
      #execute code if pattern1 matches the expression
     echo "your expression/region ($region) matched the FIRST Pattern"
     echo "And we are provisioning 20 instances.."
     df -h
    ;;
   "us-east-1")
      # execute code if pattern2 matches the expression
     echo "your expression/region (${region})  matched the 2ND Pattern"
     echo "And we are provisioning 100 instances .."
     free
    ;;
   "sa-central-1")
      # execute code if pattern3 matches the expression
    echo "your expression/region ($region)  matched the 3RD  Pattern"
    echo "And we are provisioning 9 instances"
    uptime
   ;;

  *)
  # execute code if no pattern matches the expression
   echo "your expression/region (${region}) DID NOT match any pattern"
   echo "so we are not provisioning any resources"
   uname -a
 ;;

esac
