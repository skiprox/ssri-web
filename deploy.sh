#!/bin/sh
#
# Deploy to ssri.network with build
#

# Build & export the site,
# if we got the -b flag
if [ "$1" == "-b" ]; then
  yarn build && yarn export
fi

# Get the sshPath from the .env file
sshPath=$(grep sshPath .env | cut -d '=' -f2)
folderPath=$(grep folderPath .env | cut -d '=' -f2)

# Delete existing content on ssri.network
echo "Starting deletion of existing files/folders"
ssh $sshPath "rm -rf $folderPath*"

# Upload the new content to the server
echo "Starting deploy of newly built website"
scp -r out/* $sshPath:$folderPath
