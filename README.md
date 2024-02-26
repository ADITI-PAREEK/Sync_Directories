# Sync_Directories
This script synchronizes two directories.
It utilizes `rsync` for efficient synchronization, including the deletion of extraneous files in the destination or source directory.

## Usage
1. Clone or download the `sp.sh` script to your local machine.
2. Make executable using the following command: ```bash

                                                chmod +x sp.sh

3. Execute the script by providing the source the source and destination directories as arguments: ```bash

              ./sp.sh <source_directory> <destination_directory>

Replace `<source_directory>` and `<destination_directory>` with the paths to the directories you want to synchronize.

## Example
To synchronize the directories `path/to/source` and `path/to/destination`,run the script as follows:```bash

                         ./sp.sh path/to/source  /path/to/destination
   
