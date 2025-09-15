#!/bin/bash

SOURCE_DIR="$HOME"
BACKUP_DIR="$HOME/backups"
DATE=$(date +%F)
BACKUP_FILE="$BACKUP_DIR/home-backup-$DATE.tar.gz"

mkdir -p "$BACKUP_DIR"

if [ -d "$SOURCE_DIR" ]; then
    echo "Creating backup your home directory..."
    tar --exclude='.Trash' -czvf "$BACKUP_FILE" "$SOURCE_DIR" 2>/dev/null
    echo "Backup saved as: $BACKUP_FILE "
else
    echo "Directory $SOURCE_DIR not found. Aborting."
fi
