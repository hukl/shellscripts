#!/bin/sh

SOURCE_FILE_PATH="/var/www/foo/development_*.json"
SOURCE_FILES=$(ls $SOURCE_FILE_PATH)

# Add trailing /
DESTINATION_PATH="/var/backup/"

TIMESTAMP=$(date +"%Y-%m-%d_%s")

for i in $SOURCE_FILES
do
  FILENAME=$(basename $i)
  FILENAME_WITH_TIMESTAMP=$TIMESTAMP\_$FILENAME                                                                                                              
  cp $i $DESTINATION_PATH$FILENAME_WITH_TIMESTAMP
done
