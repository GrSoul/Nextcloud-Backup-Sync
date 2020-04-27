# Nextcloud (snap) Backup & Sync
This is a stupid-simple all-in-one backup & sync solution for snap Nextcloud installations on Linux.

## What does it do?

The script:

- clears the /var/snap/nextcloud/common/backups folder from older backups
- exports nextcloud's database to /var/snap/nextcloud/common/backups folder
- syncs the compressed backup to an external drive named "HDD1000GB"
- (optional) compresses the new backup in the external drive

_You need to uncomment the option to compress the backup if you want to use it_

## Prerequisities

- The script only works with Nextcloud snap installations.
- You must mount an external drive to the folder ~/HDD1000GB (or change this part of the script to your needs).

## How to use

Download it, open a terminal in the same folder and type:

```
sudo ./nextcloud-backup.sh
```
