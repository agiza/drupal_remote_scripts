# Drupal remote scripts

## Location

These scripts need to be placed outside of where Drupal is installed to avoid them becoming un-executable.


## Permissions

Ensure that these scripts are made executable by the current user. For example:

chmod 740 -R ~/scripts/drupal_remote_scripts


## Config

1. Copy settings.example.sh and rename it as settings.sh
2. Edit settings.sh to match your site's specific setup.
3. Settings are ignored by Git so your customisations will be preserved if you run git pull.