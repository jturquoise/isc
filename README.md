# I.S.C
## Notice
Parts or all of this script may have been generated by AI. The script has been rigorously tested by a human.
## Short
This Bash script is designed to find files within a specified directory that have specific permissions. It accepts a directory path as an input argument and checks for files with permissions set to 0777 (read, write, and execute for all users) and 0775 (read, write, and execute for owner and group, read for others). Below is a detailed description of each part of the script. This script is useful for system administrators and users who need to check file permissions in a specific directory for security or organizational purposes. It is simple, user-friendly, and easily adaptable for other permission checks.
## Usage
```isc.sh [directory]```
## Execution and Output
The script must be executed with a directory path as an argument.
It will output the paths of the files with the specified permissions within the given directory.
If the directory path is not provided, it will show the usage format and exit.
