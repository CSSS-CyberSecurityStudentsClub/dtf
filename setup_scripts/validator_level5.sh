#!/bin/bash

echo "Enter the decoded flag you discovered:"
read FLAG

if [[ "$FLAG" == "NEUROVERSE{moo_secret_flag}" ]]; then
    echo "Correct flag! Level 6 unlocked!"
    touch /tmp/level5_complete

    # Unlock Level 6 access
    chmod 700 /home/participant/levels/level6
else
    echo "Incorrect flag. Moo harder!"
fi
