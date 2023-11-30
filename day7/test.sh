#!/bin/bash

# Function to calculate the date difference in days
date_diff() {
    local start_date="$1"
    local end_date="$2"
    
    # Extract day, month, and year from start date
    start_day=$(date -d "$start_date" +%d)
    start_month=$(date -d "$start_date" +%m)
    start_year=$(date -d "$start_date" +%Y)

    # Extract day, month, and year from end date
    end_day=$(date -d "$end_date" +%d)
    end_month=$(date -d "$end_date" +%m)
    end_year=$(date -d "$end_date" +%Y)

    # Calculate the date difference in seconds
    start_seconds=$(date -d "$start_day-$start_month-$start_year" +%s)
    end_seconds=$(date -d "$end_day-$end_month-$end_year" +%s)
    diff_seconds=$((end_seconds - start_seconds))

    # Calculate the difference in days
    diff_days=$((diff_seconds / 86400))  # 86400 seconds in a day
    
    echo "$diff_days"
}

# Prompt the user for the first date
read -p "Enter the first date (dd/mm/yyyy): " date1

# Prompt the user for the second date
read -p "Enter the second date (dd/mm/yyyy): " date2

# Calculate the date difference using the date_diff function
difference=$(date_diff "$date1" "$date2")

# Display the result
echo "The difference between $date1 and $date2 is $difference days."

