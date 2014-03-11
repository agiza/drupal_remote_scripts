#!/bin/bash

# NOTES
# =====
#
# Your file system is probably outside of version control, so having pushed your site up to this server
# you're likely now missing public, private & tmp file directories.
# This script handles setting up a skeleton file system for you to then rsync user files up to.
# It also makes sure that your codebase's file permissions are appropriately set.

cd "${BASH_SOURCE%/*}" || exit
. ../settings.sh

# Initial feedback
printf $'\n'"Initialising file system..."$'\n'
printf '\n'

# Create file system directories
if [ "$PRIVATE_FILES_PATH" != '' ]
    then
    printf 'Creating private files directory.\n'
    mkdir -p "$PRIVATE_FILES_PATH"
fi

printf 'Creating public files directory.\n'
mkdir -p "$PUBLIC_FILES_PATH"
printf 'Creating temporary files directory.\n'
mkdir -p "$TMP_FILES_PATH"

# Setup ownership and permissions the following:

# Private files directory
cd "${BASH_SOURCE%/*}" || exit
../druperms/fix_private.sh

# Public files directory
cd "${BASH_SOURCE%/*}" || exit
../druperms/fix_public.sh

# Temporary files directory
cd "${BASH_SOURCE%/*}" || exit
../druperms/fix_tmp.sh

# Closing feedback
printf $'\n'"File system initialised."$'\n'
# @TODO Can we trigger this function via Drush perhaps?
printf "Please visit admin/config/media/file-system in Drupal to secure the file system (creates relevant .htaccess files)."$'\n'
printf "You can now rsync any local files up to this site."$'\n'