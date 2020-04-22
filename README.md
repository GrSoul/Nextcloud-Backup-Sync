# Nextcloud (snap) Backup & Sync
This is an all-in-one backup & sync solution for snap Nextcloud installations on Linux.

## What does it do?

The script:

- exports nextcloud's database to /var/snap/nextcloud/common/backups folder
- compresses it to ~/backups folder
- deletes the uncompressed files from the first folder
- syncs the compressed backup to an external drive named "HDD1000GB"

_The script contains also a part named "Another clean up" which also deletes the compressed backups from internal memory (~/backups folder). For data safety reasons it's disabled but you can uncomment it if you want to use it._

## Prerequisities

- The script only works with Nextcloud snap installations.
- You must mount an external drive to the folder ~/HDD1000GB (or change this part of the script to your needs).

## How to use

Download it, open a terminal in the same folder and type:

```
sudo ./nextcloud-backup.sh
```
