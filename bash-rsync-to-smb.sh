#!/bin/bash

# Mount SMB share
mount_smbfs //user@server/Employee%20Storage /EmployeeStorage

# Sync Desktop, Documents, Downloads and Picures folder to the server
rsync -r -u --delete /Users/user/Desktop/* "/EmployeeStorage/user/iMac/Desktop"
rsync -r -u --delete /Users/user/Documents/* "/EmployeeStorage/user/iMac/Documents"
rsync -r -u --delete /Users/user/Downloads/* "/EmployeeStorage/user/iMac/Downloads"
rsync -r -u --delete /Users/user/Pictures/* "/EmployeeStorage/user/iMac/Pictures"

# Direct all output to /dev/null
2>/dev/null
