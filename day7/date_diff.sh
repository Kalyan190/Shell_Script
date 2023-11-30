# Function to convert date to seconds since epoch
date_to_seconds() {
    date -d "$1" "+%s"
}

# Function to calculate date difference in days
calculate_date_difference() {
    local start_date="$1"
    local end_date="$2"

    local start_seconds=$(date_to_seconds "$start_date")
    local end_seconds=$(date_to_seconds "$end_date")

    local date_diff=$(( (end_seconds - start_seconds) / (60*60*24) ))
    echo "$date_diff"
}

# Read the first date from the user
read -p "Enter the first date (dd/mm/yyyy): " date1

# Read the second date from the user
read -p "Enter the second date (dd/mm/yyyy): " date2

# Calculate the date difference
diff_in_days=$(calculate_date_difference "$date1" "$date2")

# Display the result
echo "The difference between $date1 and $date2 is $diff_in_days days."

