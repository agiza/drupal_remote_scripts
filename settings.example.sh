#!/bin/bash

# =====
# PATHS
# =====

# No trailing slashes!

# Full path to where Drupal is installed
DRUPAL_PATH='/home/dev/www'

# Full path to private file directory (use '' for no private files directory)
PRIVATE_FILES_PATH='/home/dev/private'

# Path to public files directory
PUBLIC_FILES_PATH='/home/dev/www/sites/default/files/public'

# Path to temporary files directory
TMP_FILES_PATH='/home/dev/www/sites/default/files/tmp'


# =====
# USERS
# =====

# The UNIX user that is to own the files
DRUPAL_USER='dev'

# The UNIX user that Apache is running as
HTTPD_GROUP='www-data'