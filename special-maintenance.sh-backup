#!/bin/bash
echo "backing up  our file... at midnight ....."
echo "current working directory is " 
echo "the one running this backup is $1"
SCRIPT_PATH=$(realpath "$0")
SCRIPT_NAME=$(basename "$0")

cp "${SCRIPT_PATH}" ~/"${SCRIPT_NAME}-backup"
