#!/bin/bash

echo "Enter the directory tou want to back up:"
read source_dir

echo "Enter the destination tou want to back up:"
read dest_dir

timestamp=$(date +%Y%m%d_%H%M%S)
backup_file="$dest_dir/backup_$timestamp.tar.gz"

#Backup
tar -czvf "$backup_file" "$source_dir"

echo "Backup completed Filed saved as: $backup_file"