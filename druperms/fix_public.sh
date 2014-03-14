#!/bin/bash

cd "${BASH_SOURCE%/*}" || exit
. ../settings.sh

if [ "$PUBLIC_FILES_PATH" != '' ]
    then
        chown -R "$DRUPAL_USER":"$HTTPD_GROUP" "$PUBLIC_FILES_PATH"
        chmod 770 "$PUBLIC_FILES_PATH"
        cd "$PUBLIC_FILES_PATH"
        printf $'\n'"Setting proper permissions on public files and directories."
        for d in .
        do
           find $d -type d -exec chmod ug=rwx,o= '{}' \;
           find $d -type f -exec chmod ug=rw,o= '{}' \;
        done
        chmod 444 .htaccess
        printf $'\n'"Done setting proper permissions on public files and directories."$'\n'
    else
        printf $'\n'"There is no public files directory specified in settings.sh"$'\n'
fi