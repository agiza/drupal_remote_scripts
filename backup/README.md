# Backup

These scripts are designed to be run by cron and/or manually to backup your public files directory and/or your private files directory to a remote server.

Backup retention is currently set to a maximum of 10 complete copies at any one time.


## Prerequisites

- Passwordless authentication is in place allowing one server (where your site is hosted) to SSH into the other (where the backups are to be stored).
- Directories for storing backups have been created at the remote end as per your preferences in ```settings.sh```.
- A local directory has been created to store the ```backup.log``` file as per ```settings.sh``` and is writable by the user(s) that the scripts will be run as.


## Roadmap

- Keep a a copy of the log at the remote end.

- Log rotation.

- Parameterise backup retention.

- Add support for rsync exclusion to prevent backup of certain files.


## Tips

### Quick setup of SSH keys between servers

- 1) SSH into the source server (the server you wish to backup).
- 2) Generate SSH keys for that server if not already in place (agree to all defaults by repeatedly hitting return).
```
ssh-keygen -t rsa
```
- 3) Install the public key in the destination server's ```authorized_keys``` (replace with your destination machine's connection details). This will ask for the destination server's password.
```
ssh-copy-id user@destination-server.com
```
