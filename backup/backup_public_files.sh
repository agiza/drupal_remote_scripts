#!/bin/bash

cd "${BASH_SOURCE%/*}" || exit
. ../settings.sh

LOCAL_DIR="$PUBLIC_FILES_PATH"
REMOTE_DIR="$BACKUP_REMOTE_DIR_PUBLIC"

echo "Starting backup of public files."

cd "${BASH_SOURCE%/*}" || exit
. backup_files.inc.sh