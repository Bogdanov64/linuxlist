#!/bin/bash

# Function to list available distributions
list_distributions() {
    proot-distro list | awk 'NR>1 {print $1}'  # Skip the header
}

# Create an array of distributions
dists=($(list_distributions))

# Check if there are any distributions available
if [ ${#dists[@]} -eq 0 ]; then
    echo "No distributions available. Please install one using proot-distro."
    exit 1
fi

# Display the available distributions
echo "Available distributions:"
for i in "${!dists[@]}"; do
    echo "$((i + 1)). ${dists[i]}"
done

# Prompt the user to select a distribution
read -p "Enter the number of the distribution you want to enter: " choice

# Validate the input
if ! [[ "$choice" =~ ^[0-9]+$ ]] || [ "$choice" -lt 1 ] || [ "$choice" -gt "${#dists[@]}" ]; then
    echo "Invalid choice."
    exit 1
fi

# Get the selected distribution
selected="${dists[$((choice - 1))]}"

# Enter the selected distribution
proot-distro login "$selected"
