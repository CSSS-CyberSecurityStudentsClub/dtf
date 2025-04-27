#!/bin/bash

echo "Enter the Level 3 flag you discovered: "
read FLAG

if [[ "$FLAG" == "NEUROVERSE{unlock_the_encoded_mystery}" ]]; then
    echo "Correct flag! Level 4 unlocked!"
    touch /tmp/level3_complete

    # Unlock Level 4
    chmod 700 /home/participant/levels/level4
else
    echo "Incorrect flag. Decode carefully..."
fi
