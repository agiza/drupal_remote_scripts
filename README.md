# Drupal remote scripts

## Description

A small collection of scripts to help with managing a remote Drupal site.

### site_setup/setup_file_system.sh
Builds skeleton directories for tmp, public & private file system and then fixes file permissions (site-wide from Drupal root and within private files outside Drupal root).
Useful when spinning up a new remote environment after pushing most of the site up via git or rsync.

### druperms/fix_root.sh
Fixes file permissions throughout Drupal including public files. This is essentially a wrapper for this script on Drupal.org: https://drupal.org/node/244924

### druperms/fix_private.sh
Fixes file permissions within the private files directory if it's located outside of Drupal root.

## Installation


### Location

These scripts need to be placed outside of Drupal root to avoid them becoming un-executable.

### Permissions

Ensure that these scripts are made executable. For example:

chmod 740 -R ~/scripts/drupal_remote_scripts


## Config

Site specific settings can be stored in code to save having to use custom arguments every time a script is called.

1. Copy settings.example.sh and rename it as settings.sh
2. Edit settings.sh to match your site's specific setup.
3. Settings are ignored by Git so your customisations will be preserved if you run git pull.


## GitHub

This is my first public GitHub repo and kind of doubles up as an opportunity for me to get to grips with GitHub workflows a little better.