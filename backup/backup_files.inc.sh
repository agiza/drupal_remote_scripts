#!/bin/bash

# Manage files at remote end first.

echo "Removing oldest existing backup..."
ssh "$BACKUP_REMOTE_CONNECTION" rm -rf "$REMOTE_DIR"/backup.9

echo "Shuffling remaining backups along one..."
ssh "$BACKUP_REMOTE_CONNECTION" mv "$REMOTE_DIR"/backup.8 "$REMOTE_DIR"/backup.9
ssh "$BACKUP_REMOTE_CONNECTION" mv "$REMOTE_DIR"/backup.7 "$REMOTE_DIR"/backup.8
ssh "$BACKUP_REMOTE_CONNECTION" mv "$REMOTE_DIR"/backup.6 "$REMOTE_DIR"/backup.7
ssh "$BACKUP_REMOTE_CONNECTION" mv "$REMOTE_DIR"/backup.5 "$REMOTE_DIR"/backup.6
ssh "$BACKUP_REMOTE_CONNECTION" mv "$REMOTE_DIR"/backup.4 "$REMOTE_DIR"/backup.5
ssh "$BACKUP_REMOTE_CONNECTION" mv "$REMOTE_DIR"/backup.3 "$REMOTE_DIR"/backup.4
ssh "$BACKUP_REMOTE_CONNECTION" mv "$REMOTE_DIR"/backup.2 "$REMOTE_DIR"/backup.3
ssh "$BACKUP_REMOTE_CONNECTION" mv "$REMOTE_DIR"/backup.1 "$REMOTE_DIR"/backup.2
ssh "$BACKUP_REMOTE_CONNECTION" cp -al "$REMOTE_DIR"/backup.0 "$REMOTE_DIR"/backup.1

# Start backing up local files to remote end.

echo "Initiating backup via rsync..."
/usr/bin/rsync -av "$LOCAL_DIR" "$BACKUP_REMOTE_CONNECTION":"$REMOTE_DIR"/backup.0 --delete --log-file="$BACKUP_LOG_DIR"/backup.log

echo "Backup complete."