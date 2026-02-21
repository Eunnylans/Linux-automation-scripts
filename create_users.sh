#!/bin/bash

USER_FILE="users.txt"
LOG_FILE="user_creation.log"

# Ensure script is run as root
if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root"
    exit 1
fi

# Check if users.txt exists
if [[ ! -f "$USER_FILE" ]]; then
    echo "users.txt file not found!"
    exit 1
fi

# Create log file if it doesn't exist
touch "$LOG_FILE"
chmod 644 "$LOG_FILE"

echo "User creation script started"

while read -r username; do
    # Skip empty lines and lines starting with #
    [[ -z "$username" || "$username" =~ ^# ]] && continue

    # Generate random 12-character password
    password=$(tr -dc 'A-Za-z0-9@#%&*' < /dev/urandom | head -c 12)

    if id "$username" &>/dev/null; then
        echo "User $username already exists"
        echo "$username:$password" | chpasswd
        chage -d 0 "$username"
        echo "$username: $password"
        echo "$(date): Reset password for user $username" >> "$LOG_FILE"
    else
        useradd "$username"
        echo "$username:$password" | chpasswd
        chage -d 0 "$username"
        echo "User $username created successfully"
        echo "Password for $username: $password"
        echo "$(date): Created user $username" >> "$LOG_FILE"
    fi
done < "$USER_FILE"

echo "User creation script finished"
