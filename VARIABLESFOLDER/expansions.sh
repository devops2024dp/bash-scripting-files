#!/bin/bash

echo "========================================================================"
echo "01. VARIABLE  EXPANASION"

creater01="DataPandas Consulting"
echo ${creater01}
echo $creater01
echo "the user is ${USER} running this file on the server ${HOSTNAME}. The users directory is ${OLDPWD}"


echo "========================================================================"
echo "ARITHMETIC EXPANASION"
num1=1
num2=4
echo "num1 = ${num1}"
echo "num2 = ${num2}"
echo "${num1}+${num2}"
echo "$((num1+num2))"

total_servers_needed=100
us_servers=20
eu_servers=10
asia_servers=18
africa_servers=19

echo "total servers needed = ${total_servers_needed}"
echo "i have provisioned ${us_servers} in US region "
echo "i have provisioned ${eu_servers} in EU region "
echo "i have provisioned ${asia_servers} in ASIA region "
echo "i have provisioned ${africa_servers} in AFRICA region "

echo "We have the capacity to provision $((total_servers_needed - us_servers - eu_servers - asia_servers - africa_servers))"

echo "========================================================================"

echo "========================================================================"
echo "COMMAND  EXPANASION"

echo "Today's date is $(date) and calendar is $(cal)"

sudo touch ~kwadwo/file-from-SCRIPT.sh


