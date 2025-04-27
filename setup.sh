#!/bin/bash

# ####################################################
#               LEVEL 1  
# ####################################################

# Create base directories
mkdir -p /home/participant/levels/level1

# Create files
echo "Welcome to Neuroverse - Level 1.

Many paths are visible, but some are only for those who seek beyond the surface.
Find the whisper of hidden truths.

Quote: \"Not all those who wander are lost.\"" > /home/participant/levels/level1/readme.txt

# Hidden file (flag)
echo "NEUROVERSE{seek_and_you_shall_find}" > /home/participant/levels/level1/.hidden_whisper.txt

# Set correct permissions
chmod 700 /home/participant/levels/level1
chmod 600 /home/participant/levels/level1/*

# Copy validator script
cp /setup_scripts/validator_level1.sh /home/participant/levels/level1/validator.sh
chmod +x /home/participant/levels/level1/validator.sh

# ####################################################
#               LEVEL 2
# ####################################################

# (Continue similarly for Level 2 here...)

# Create Level 2 directory
# ####################################################
#               LEVEL 2
# ####################################################

# Create Level 2 directories
mkdir -p /home/participant/levels/level2/dummy
mkdir -p /home/participant/levels/level2/flags
mkdir -p /home/participant/levels/level2/real_flags

# Create dummy files
echo "Random version info" > /home/participant/levels/level2/dummy/.version.txt
echo "Version 1.0 notes" > /home/participant/levels/level2/dummy/version1.txt
echo "Version 2.0 notes" > /home/participant/levels/level2/dummy/version2.txt

# Create empty flags folder
touch /home/participant/levels/level2/flags/.placeholder

# Create real flag
echo "NEUROVERSE{deeper_into_the_core}" > /home/participant/levels/level2/real_flags/flag.txt

# Set permissions
chmod 000 /home/participant/levels/level2

chmod 600 /home/participant/levels/level2/real_flags/flag.txt

# Copy validator script
cp /setup_scripts/validator_level2.sh /home/participant/levels/level2/validator.sh
chmod +x /home/participant/levels/level2/validator.sh
