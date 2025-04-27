#!/bin/bash

echo "Enter the Level 4 flag you discovered: "
read FLAG

if [[ "$FLAG" == "NEUROVERSE{layers_within_layers}" ]]; then
    echo "Correct flag! Level 5 unlocked!"
    touch /tmp/level4_complete

    # Unlock Level 5 access
    chmod 700 /home/participant/levels/level5
else
    echo "Incorrect flag. Keep unwrapping the layers..."
fi
