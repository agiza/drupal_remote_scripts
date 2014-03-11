#!/bin/bash

cd "${BASH_SOURCE%/*}" || exit
. ../settings.sh

bash fix_permissions.sh --drupal_path="$DRUPAL_PATH" --drupal_user="$DRUPAL_USER" --httpd_group="$HTTPD_GROUP"