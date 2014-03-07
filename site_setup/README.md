# Site setup

These scripts are intended to be run once just to help set up a site on a remote server (along with git & rsync).

Your file system is probably outside of version control, so having pushed your site up to this server you're likely now missing public, private & tmp file directories.
This script handles setting up a skeleton file system for you to then rsync user files up to.
It also makes sure that your codebase's file permissions are appropriately set.