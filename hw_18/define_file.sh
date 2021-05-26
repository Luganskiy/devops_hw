#!/bin/bash
file=''

echo "Enter absolute path to file (default /tmp/data.file)"
read file

if [[ -z "$file"  ]]; then
   echo "File was not defined. Setting up default path: /tmp/data.file"
   touch /tmp/data.file
   if [[ $?==0 ]]; then 
	   echo "File /tmp/data.file was successfully created."
   fi
   file="/tmp/data.file"
   echo "Variable file was set to default value: $file"
else
   touch $file
   if [[ $?==0 ]]; then 
           echo "File $file was successfully created."
   fi
   echo "File was defined: $file"
fi
