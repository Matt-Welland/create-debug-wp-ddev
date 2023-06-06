#!/bin/bash  

# Intro 
echo "~~~"
echo "WP Debug Environment Creation"
echo "~~~"
sleep 2

# Create DIR
echo "Creating directory: "
mkdir test-environment
cd test-environment

# Print DIR
pwd
sleep 2

# Install WP 
wp core download

# Create DDEV container
echo "Creating a DDEV container"
ddev config --project-type=wordpress --project-name=test-environment

# Start DDEV
ddev start

# Attempt to open the URL in the browser
x-www-browser https://test-environment.ddev.site/

# Open code 
code .

# Create a deletre script
echo "!! Creating Delete Script for quick reset !!"
sleep 2
echo '#!/bin/bash
echo "Deleting Environment~"
echo "Scripted by Matt Welland~"
echo "This is irriversible~"
echo "Make sure you are in the correct directory~"
sleep 2
ddev delete -O
sleep 1
cd ..
rm -r test-environment
echo "Test code deleted."' >> delete.sh
sleep 2

# Print a done message
echo "Done creating delete script"
sleep 2
echo "Ready to Debug"
