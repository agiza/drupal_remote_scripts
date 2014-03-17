#!/bin/bash

cd "${BASH_SOURCE%/*}"
. ../settings.sh

LOCAL_DIR="$PUBLIC_FILES_PATH"
REMOTE_DIR="$BACKUP_REMOTE_DIR_PUBLIC"

echo "Starting backup of public files."

. backup_files.inc.sh