#!/bin/bash
#script to delete files based on time created
#usage: ./file_delete.sh <directory> <Confirm file or directory> <Number of days old file>
#example: ./file_delete.sh test dir 10
#example2: ./file_delete.sh test file 10
#Author: Abhilash


DIR=$1
TYPE=$2
TIME=$3

function files () {
read -p "Continue to delete the files (yes/no)? " CONT
if [ "$CONT" = "yes" ]; then
  echo "Deleting......"
  echo "Done!!!!"
  find $DIR -mtime +$TIME -type f -delete
else
  echo "Aborted!!!";
fi 
} 


function directory () {
read -p "Continue to delete the directories with files (yes/no)? " CONT
if [ "$CONT" = "yes" ]; then
  echo "Deleting......"
  echo "Done!!!!"
  find $DIR -mtime +$TIME -type f -delete
else
  echo "Aborted!!!";
fi 
} 


if [ $TYPE = "file" ]; then
                 files
elif [ $TYPE = "dir" ]; then
                 directory
        else
                echo "You must choose a file or directory to delete"
        fi






