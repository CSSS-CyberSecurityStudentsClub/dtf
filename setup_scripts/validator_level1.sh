#!/bin/bash

echo "Enter the flag you discovered: "
read FLAG

if [[ "$FLAG" == "NEUROVERSE{seek_and_you_shall_find}" ]]; then
    echo "Correct flag! Level 2 unlocked!"
    touch /tmp/level1_complete

    # Unlock Level 2 access
    chmod 700 /home/participant/levels/level2

else
    echo "Incorrect flag. Try harder, explorer."
fi
