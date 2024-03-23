#!/bin/bash
# File: s3_to_server_backup.sh

# Copy backup.zip from S3 to /mnt/backup
aws s3 cp s3://s3-ec2-init/backup.zip /mnt/backup/backup.zip

# Optionally, you can add commands here to handle the backup.zip file, 
# like unzipping it or moving it to other directories as needed.