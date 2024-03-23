#!/bin/bash
# Define the backup function
# This function synchronizes the content of an S3 bucket with a local server directory.
backup() {
    # Define S3 bucket and server backup path
    # S3_BUCKET: The S3 bucket to be synchronized
    # SERVER_BACKUP_PATH: The local directory where the bucket content will be stored
    S3_BUCKET="s3://s3-devops-automations"  # Replace with your S3 bucket name
    SERVER_BACKUP_PATH="/mnt/backup"  # Replace with your local server directory path

    # Sync S3 bucket with server backup path
    # The `aws s3 sync` command synchronizes the content of the S3 bucket with the local server directory.
    # The `aws s3 sync` command is provided by the AWS CLI and can be used to sync both ways (S3 -> local and local -> S3).
    # See the AWS CLI documentation for more details: https://docs.aws.amazon.com/cli/latest/reference/s3/sync.html
    aws s3 sync "$S3_BUCKET" "$SERVER_BACKUP_PATH"  # Sync the S3 bucket with the local server directory
}

# Check if the script is running through cron
if [[ "$1" == "cron" ]]; then
    backup
else
    # The script is not running through cron, so add it to crontab
    SCRIPT_PATH="$(realpath $0)"  # Get the full path to the script
    CRON_JOB="0 0 1 * * $SCRIPT_PATH cron"

    # Add the cron job if it doesn't already exist
    ( crontab -l | grep -v -F "$SCRIPT_PATH cron" ; echo "$CRON_JOB" ) | crontab -

    echo "Cron job added: $CRON_JOB"
    echo "To remove this cron job, run 'crontab -e' and remove the line."
fi
