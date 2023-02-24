#! /bin/bash

# v1.1

# var
AGE=3 # days
START_TIME=$(date)
PATH_TO_ROOT_FOLDER="/apps/input/remote"
PATH_TO_LOG_FILE="/home/srvsplunk/splunk-tools/del_zip_old_logs/log.txt"

# start
echo $START_TIME >> $PATH_TO_LOG_FILE

# remove logs older than AGE
if /bin/find $PATH_TO_ROOT_FOLDER -type f -name \*\.log* -mtime +${AGE} | /usr/bin/xargs -r /bin/rm > $PATH_TO_LOG_FILE 2>&1                                                                   e.out 2>&1
then
    echo "Successfully run first script." >> $PATH_TO_LOG_FILE
fi

# log 2nd stage
echo "2nd script starting." >> $PATH_TO_LOG_FILE

# zip current day logs
if find $PATH_TO_ROOT_FOLDER/*/*.log -mtime +0 -exec gzip {} \; >> $PATH_TO_LOG_FILE
then
    echo "Successfully run 2nd script." >> $PATH_TO_LOG_FILE
fi

# end
echo "======================END-OF-LOG======================" >> $PATH_TO_LOG_FILE