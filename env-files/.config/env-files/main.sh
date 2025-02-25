#!/bin/bash
CONFIG_PATH="$HOME/.config/env-files"

source "$CONFIG_PATH/env/aliases/aliases.env"

for env_file in $CONFIG_PATH/env/global/*.env; do
    # Verify if the file is readable
    [ -r "$env_file" ] && source "$env_file"
done

# Load the initialization script
source "$CONFIG_INIT/init.sh"

# Finalization
echo "All configurations have been loaded."
