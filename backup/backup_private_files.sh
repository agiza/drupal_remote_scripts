#!/bin/bash

cd "${BASH_SOURCE%/*}"
. ../settings.sh

LOCAL_DIR="$PRIVATE_FILES_PATH"
REMOTE_DIR="$BACKUP_REMOTE_DIR_PRIVATE"

echo "Starting backup of private files."

touch "$BACKUP_LOG_DIR"/backup.log

echo "`date +%Y:%m:%d` `date +%H:%M:%S` Backing up private files..." >> "$BACKUP_LOG_DIR"/backup.log

. backup_files.inc.sh