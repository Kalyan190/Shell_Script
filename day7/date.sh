#!/bin/bash

read -p "Enter first date (dd/mm/yyyy): " date1_input
read -p "Enter second date (dd/mm/yyyy): " date2_input

# Function to convert dd/mm/yyyy format to seconds since epoch
date_to_seconds() {
    local date_input="$1"
    local day month year

    IFS='/' read -r day month year <<< "$date_input"
    date -d "$year-$month-$day" +%s
}

# Check if the dates match the format dd/mm/yyyy using a regular expression
if [[ $date1_input =~ ^([0-9]{2})/([0-9]{2})/([0-9]{4})$ && $date2_input =~ ^([0-9]{2})/([0-9]{2})/([0-9]{4})$ ]]; then
    date1_seconds=$(date_to_seconds "$date1_input")
    date2_seconds=$(date_to_seconds "$date2_input")

    # Calculate the difference in seconds
    date_diff_seconds=$((date2_seconds - date1_seconds))

    # Convert the difference to days
    date_diff_days=$((date_diff_seconds / (60 * 60 * 24)))

    echo "Difference between $date1_input and $date2_input is $date_diff_days days."
else
    echo "Invalid date format. Please enter the dates in dd/mm/yyyy format."
fi
