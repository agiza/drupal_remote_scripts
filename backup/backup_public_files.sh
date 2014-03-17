#!/bin/bash

cd "${BASH_SOURCE%/*}"
. ../settings.sh

LOCAL_DIR="$PUBLIC_FILES_PATH"
REMOTE_DIR="$BACKUP_REMOTE_DIR_PUBLIC"

echo "Starting backup of public files."

touch "$BACKUP_LOG_DIR"/backup.log

echo "`date +%Y:%m:%d` `date +%H:%M:%S` Backing up public files..." >> "$BACKUP_LOG_DIR"/backup.log

. backup_files.inc.sh