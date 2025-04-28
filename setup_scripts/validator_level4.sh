#!/bin/bash

echo "Enter the Level 4 flag you discovered: "
read FLAG

if [[ "$FLAG" == "NEUROVERSE{layers_within_layers}" ]]; then
    echo "Correct flag! Level 5 unlocked!"
    touch /tmp/level4_complete

    # Unlock Level 5 access
    chmod 700 /home/participant/levels/level5

    # Then separately unlock moo_may_know folder inside
    chmod 700 /home/participant/levels/level5/moo_may_know

    # Set readable perms for files
    chmod 600 /home/participant/levels/level5/moo_may_know/*
    chmod 600 /home/participant/levels/level5/readme.txt

else
    echo "Incorrect flag. Keep unwrapping the layers..."
fi
