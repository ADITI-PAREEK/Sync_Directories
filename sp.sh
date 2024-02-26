#!/bin/bash

# Check if the correct number of arguments is provided
if [ $# -ne 2 ]; then
    echo "Usage: $0 <source_directory> <destination_directory>"
    exit 1
fi

# Assign arguments to variables
source_dir="$1"
destination_dir="$2"

# Check if source directory exists
if [ ! -d "$source_dir" ]; then
    echo "Source directory '$source_dir' does not exist."
    exit 1
fi

# Check if destination directory exists, if not, create it
if [ ! -d "$destination_dir" ]; then
    echo "Destination directory '$destination_dir' does not exist, creating..."
    mkdir -p "$destination_dir"
fi

# Check if directories are already in sync
if diff -qr "$source_dir" "$destination_dir" >/dev/null; then
    echo "Directories are already in sync."
else
    echo "Synchronizing directories..."
    rsync -av --progress "$source_dir"/ "$destination_dir"
    echo "Directories synchronized successfully."
fi
# Check if directories are already in sync
  if diff -qr "$destination_dir" "$source_dir" >/dev/null; then
      echo "Directories are already in sync."
  else
      echo "Synchronizing directories..."
      rsync -av --progress "$destination_dir"/ "$source_dir"
      echo "Directories synchronized successfully."
  fi

