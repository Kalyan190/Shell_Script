# Prompt the user for the first date
read -p "Enter the first date (mm/dd/yyyy): " date1

# Prompt the user for the second date
read -p "Enter the second date (mm/dd/yyyy): " date2

# Convert the input dates to seconds since Unix epoch using 'date' command
date1_seconds=$(date -d "$date1" +%s)
date2_seconds=$(date -d "$date2" +%s)

# Check if the date conversion was successful
if [ -z "$date1_seconds" ] || [ -z "$date2_seconds" ]; then
  echo "Invalid date format. Please use dd/mm/yyyy format."
  exit 1
fi

# Calculate the difference in seconds
date_difference_seconds=$((date2_seconds - date1_seconds))

# Calculate the difference in days
date_difference_days=$((date_difference_seconds / 86400)) # 86400 seconds in a day

# Display the result
echo "The difference between $date1 and $date2 is $date_difference_days days."

