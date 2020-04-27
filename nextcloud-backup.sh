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
rsync -aHv ~/backups/* ~/HDD1000GB/backups
echo "Sync complete"

#Compression
#echo "Compressing your backup..."
#tar -czvf ~/HDD1000GB/backups/"$(date '+%Y-%m-%d').tar.gz" ~/HDD1000GB/backups/* 
#echo "Compression complete at your home/backups folder"

#End
echo "Nextcloud backup completed successfully!" 
echo "You'll find the new backup on your HDD1000GB in the backups folder."
