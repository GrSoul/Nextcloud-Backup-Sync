#!/bin/bash

#Start
echo "Backing up your Nextcloud..."

#Export
echo "Starting the export"
nextcloud.export
echo "Export complete"

#Compression
echo "Compressing your backup..."
tar -czvf ~/backups/"$(date '+%Y-%m-%d').tar.gz" /var/snap/nextcloud/common/backups/* 
echo "Compression complete at your home/backups folder"

#Clean up
echo "Cleaning up"
rm -rf /var/snap/nextcloud/common/backups/*
echo "All clear!"

#Sync
echo "Syncing to HDD1000GB"
rsync -aHv ~/backups/* ~/HDD1000GB/backups
echo "Syncing complete"

#End
echo "Nextcloud backup completed successfully!" 
echo "You'll find the new backup on your HDD1000GB in the backups folder."
