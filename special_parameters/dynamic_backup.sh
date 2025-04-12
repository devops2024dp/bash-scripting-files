#!/bin/bash
echo "backing up  our file... at midnight ....."
echo "current working directory is " 
echo "$1 is backing up file $2"

old_ifs=$IFS #old ifs is a space
IFS=","

echo "Hey $1, you have passed $# arguments to the script"
echo "These arguments are: $@"
echo "These are the arguments as one word: $*"
SCRIPT_PATH=$(realpath "$2")
SCRIPT_NAME=$(basename "$2")

cp "${SCRIPT_PATH}" ~/"${SCRIPT_NAME}-backup"

echo "$2 has successfully been backed-up to location: ~/${SCRIPT_NAME}-backup "
IFS=$old_ifs
