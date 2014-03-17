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


# =======
# BACKUPS
# =======

# Connection to remote location
BACKUP_REMOTE_CONNECTION='dev@95.85.19.159'

# Where on the remote to store backups of the public files directory
BACKUP_REMOTE_DIR_PUBLIC='prod_backup/public_files'

# Where on the remote to store backups of the private files directory
BACKUP_REMOTE_DIR_PRIVATE='prod_backup/private_files'