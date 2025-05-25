#!/bin/bash
SOURCE_DIR="/home/ec2-user/app-logs"

mkdir -p $SOURCE_DIR

echo "Script started executing at $(date)"

FILES_TO_DELETE=$(find $SOURCE_DIR -name "*.log" -mtime +14)

while IFS= read -r filepath  #IFS=: Sets the Internal Field Separator (IFS) to an empty value, ensuring leading/trailing spaces are preserved.
do
    echo "Deleting file: $filepath"
done <<< $FILES_TO_DELETE

echo "Script executed successfully"