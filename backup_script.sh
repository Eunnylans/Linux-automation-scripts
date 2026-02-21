#!/bin/bash

# Backup storage location (SAFE: outside source)
BACKUP_ROOT="$HOME/backups"

# Ask user for directory to back up
read -p "Enter the directory to back up: " SOURCE_DIR

# Validate directory
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: Directory does not exist!"
    exit 1
fi

# Create backup root if it doesn't exist
mkdir -p "$BACKUP_ROOT"

# Timestamp
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_NAME="backup_$TIMESTAMP"
BACKUP_PATH="$BACKUP_ROOT/$BACKUP_NAME"

# Create backup directory
mkdir "$BACKUP_PATH" || exit 1

# Copy files
cp -r "$SOURCE_DIR" "$BACKUP_PATH" || exit 1

# Compress backup
tar -czf "$BACKUP_PATH.tar.gz" -C "$BACKUP_ROOT" "$BACKUP_NAME" || exit 1

# Remove uncompressed backup folder
rm -rf "$BACKUP_PATH"

# Delete backups older than 7 days
find "$BACKUP_ROOT" -name "backup_*.tar.gz" -mtime +7 -exec rm {} \;

# Success message
echo "Backup completed successfully!"
echo "Backup stored at: $BACKUP_PATH.tar.gz"
