#!/bin/bash

#Start
echo "Starting your Nextcloud backup..."

#Clean up
echo "Cleaning up old backups"
rm -rf /var/snap/nextcloud/common/backups/*
echo "All clear!"

#Export
echo "Starting the export"
nextcloud.export
echo "Export complete"

#Sync
echo "Syncing to HDD1000GB"
rsync -aHv /var/snap/nextcloud/common/backups/* ~/HDD1000GB/backups
echo "Sync complete"

#Compression
#echo "Compressing your backup"
#tar -czvf ~/HDD1000GB/backups/"$(date '+%Y-%m-%d').tar.gz" /var/snap/nextcloud/common/backups/*
#echo "Compression complete."

#End
echo "Nextcloud backup completed successfully!" 
echo "You'll find the new backup on your HDD1000GB drive in the backups folder."
