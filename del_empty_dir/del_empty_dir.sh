#!/bin/bash

# v1.1

# var
START_TIME=$(date)
PATH_TO_ROOT_FOLDER="/home/srvsplunk/splunk-tools/del_empty_dir"
PATH_TO_LOG_FILE="/home/srvsplunk/splunk-tools/del_empty_dir/log.txt"

# start
echo $START_TIME >> $PATH_TO_LOG_FILE

# pre-check
/bin/find $PATH_TO_ROOT_FOLDER -type d -empty -print >> $PATH_TO_LOG_FILE

# deleting
if /bin/find $PATH_TO_ROOT_FOLDER -type d -empty -delete
then
  echo "Successfully run the script." >> $PATH_TO_LOG_FILE
fi

# end
echo "======================END-OF-LOG======================" >> $PATH_TO_LOG_FILE