#!/bin/bash

cd "${BASH_SOURCE%/*}" || exit
. ../settings.sh

if [ "$TMP_FILES_PATH" != '' ]
    then
        chown -R "$DRUPAL_USER":"$HTTPD_GROUP" "$TMP_FILES_PATH"
        chmod 770 "$TMP_FILES_PATH"
        cd "$TMP_FILES_PATH"
        printf $'\n'"Setting proper permissions on temporary files and directories."
        for d in .
        do
           find $d -type d -exec chmod ug=rwx,o= '{}' \;
           find $d -type f -exec chmod ug=rw,o= '{}' \;
        done
        printf $'\n'"Done setting proper permissions on temporary files and directories."$'\n'
    else
        printf $'\n'"There is no temporary files directory specified in settings.sh"$'\n'
fi