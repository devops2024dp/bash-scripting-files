#!/bin/bash

num_servers_to_provision=1
until [[ $num_servers_to_provision -gt 10 ]]; do 
 echo "servers provisioned: ${num_servers_to_provision}"
 ((num_servers_to_provision++))
done
