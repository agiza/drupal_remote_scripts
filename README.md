# Drupal remote scripts


## Description

A small collection of scripts to help with managing a remote Drupal site.

### Fixing permissions
```
druperms/fix_private.sh
```
Fixes file permissions within the private files directory.

```
druperms/fix_public.sh
```
Fixes file permissions within the public files directory.

```
druperms/fix_tmp.sh
```
Fixes file permissions within the temporary files directory.

### Off-site backup of user files

```
backup/backup_public_files.sh
```
Off-site backup of public file system via rsync.

```
backup/backup_private_files.sh
```
Off-site backup of private file system via rsync.

### Misc.

```
site_setup/setup_file_system.sh
```
Builds skeleton directories for tmp, public & private file system and then fixes file permissions for said directories.
Useful when spinning up a new remote environment after pushing most of the site up via git or rsync.


## Installation

### Config

Site specific settings can be stored in code to save having to use custom arguments every time a script is called.

1. Copy ```settings.example.sh``` and rename it to ```settings.sh```
2. Edit ```settings.sh``` to match your site's specific setup.
3. Settings are ignored by Git so your customisations will be preserved if you run git pull.

### Permissions

Ensure that these scripts are made executable. For example:

```
chmod a+x path/to/drupal_remote_scripts/druperms/fix_public.sh
```

## Prerequisites

### Version control

These scripts assume that your public, private and temporary files directories are outside of version control. Changing the permissions of files *in* version control may affect VCS status and will lead to possible complications.

### GitHub

This is my first public GitHub repo and kind of doubles up as an opportunity for me to get to grips with GitHub workflows a little better. You have been warned :)
