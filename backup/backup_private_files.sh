#!/bin/bash

cd "${BASH_SOURCE%/*}"
. ../settings.sh

LOCAL_DIR="$PRIVATE_FILES_PATH"
REMOTE_DIR="$BACKUP_REMOTE_DIR_PRIVATE"

echo "Starting backup of private files."

. backup_files.inc.sh