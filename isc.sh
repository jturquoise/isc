#!/bin/bash

# Directory to search
search_directory="$1"

# Check if the directory argument is provided
if [ -z "$search_directory" ]; then
    echo "Usage: $0 [directory]"
    exit 1
fi

# Function to find files with specific permissions and log results
find_files_with_permissions() {
    local permission=$1
    local logfile="/tmp/files_with_${permission}_permissions.log"

    # Find files with the specified permission and log the results
    echo "Logging files with permissions $permission in $search_directory to $logfile"
    find "$search_directory" -type f -perm "$permission" > "$logfile"

    # Display a message indicating completion and the location of the log
    echo "Files with permissions $permission logged to $logfile"
    echo ""  # Add a newline for better readability between outputs
}

# Find and log files with 777 permissions
find_files_with_permissions 0777

# Find and log files with 775 permissions
find_files_with_permissions 0775
