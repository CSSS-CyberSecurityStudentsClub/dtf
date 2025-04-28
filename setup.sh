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

# ####################################################
#               LEVEL 3
# ####################################################
mkdir -p /home/participant/levels/level3

# Create readme hint
echo "Welcome to Neuroverse - Level 3.

Knowledge that once was plain is now hidden in layers.
Decode the message to unlock your path forward.

Quote: \"What is encoded, can be decoded.\"" > /home/participant/levels/level3/readme.txt

# Create encrypted text (with distractions)
cat << EOF > /home/participant/levels/level3/encrypted_message.txt
Lorem ipsum dolor sit amet, consectetur adipiscing elit.
U29tZSBzdHJpbmcgdGhhdCBpcyBub3QgdXNlZnVsLg==
Ut enim ad minim veniam, quis nostrud exercitation.
TkVVUk9WRVJTRXt1bmxvY2tfdGhlX2VuY29kZWRfbXlzdGVyeX0=
Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.
EOF

# Set permissions
chmod 000 /home/participant/levels/level3
chmod 600 /home/participant/levels/level3/*

# Copy validator script
cp /setup_scripts/validator_level3.sh /home/participant/levels/level3/validator.sh
chmod +x /home/participant/levels/level3/validator.sh

# ####################################################
#               LEVEL 4
# ####################################################

# Create Level 4 directory
mkdir -p /home/participant/levels/level4

# Create readme hint
echo "A cloak upon a cloak, beneath another cloak.
Find your way through." > /home/participant/levels/level4/readme.txt

# Create encrypted file
echo "4b5256564d5653564e4d34564f5553574a4a4b46455744554f4e4d56513344d4d4e5845345a5445474a574441594b484e523256514d54594e4253564f56545a4d4d5a544153594b0a" > /home/participant/levels/level4/encrypted.txt

# Set permissions
chmod 000 /home/participant/levels/level4
chmod 600 /home/participant/levels/level4/*

# Copy validator script
cp /setup_scripts/validator_level4.sh /home/participant/levels/level4/validator.sh
chmod +x /home/participant/levels/level4/validator.sh

# ####################################################
#               LEVEL 5
# ####################################################

# Create Level 5 directory and secret subdirectory
mkdir -p /home/participant/levels/level5/moo_may_know

# Create hint file
echo "Welcome to Neuroverse - Level 5.

Sometimes the wisest words are spoken by the humblest creatures.
Maybe... a cow knows something?

Quote: \"Listen to those who are often ignored.\"" > /home/participant/levels/level5/readme.txt

# Encode the flag in base64 twice for slight extra trickiness
echo "NEUROVERSE{moo_secret_flag}" | base64 | base64 > /home/participant/levels/level5/.cow_secret.b64

# Set permissions
chmod 000 /home/participant/levels/level5

# Patch cowsay in bashrc
echo '
# Neuroverse Custom Cowsay Patch
cowsay() {
  if [[ "$(pwd)" == "/home/participant/levels/level5/moo_may_know" ]]; then
    cat /home/participant/levels/level5/.cow_secret.b64 | /usr/games/cowsay
  else
    /usr/games/cowsay "$@"
  fi
}
' >> /home/participant/.bashrc
