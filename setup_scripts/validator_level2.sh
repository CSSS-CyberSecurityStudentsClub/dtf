#!/bin/bash

echo "Enter the Level 2 flag you discovered: "
read FLAG

if [[ "$FLAG" == "NEUROVERSE{deeper_into_the_core}" ]]; then
    echo "Correct flag! Level 3 unlocked!"
    touch /tmp/level2_complete
else
    echo "Incorrect flag. Search deeper..."
fi