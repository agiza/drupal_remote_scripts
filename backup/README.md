# Backup

These scripts are designed to be run by cron and/or manually to backup your public files directory and/or your private files directory to a remote server.

Backup retention is currently set to a maximum of 10 complete copies at any one time.


## Prerequisites

- Passwordless authentication is in place allowing one server (where your site is hosted) to SSH into the other (where the backups are to be stored).
- Directories have been created at the remote end as per your preferences in settings.sh.


## Roadmap

- Keep a log at the remote end.

- Parameterise backup retention.

- Add support for rsync exclusion to prevent backup of certain files.