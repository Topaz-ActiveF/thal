#!/bin/bash

# start script for Thal dockerize

# Enter credentials
echo "Enter a GitHub user email"
read username
echo "Enter a GitHub password"
read -s password

echo "module.exports = {
    username: '$username',
    password: '$password'
}" > creds.js
#chmod +x creds.js

echo "Increace vm.max_map_count"
sysctl -w vm.max_map_count=262144

docker-compose up -d
