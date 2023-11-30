# Check if a year is provided as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <year>"
    exit 1
fi

# Extract the year from the argument
year="$1"

# Check if the year is divisible by 4, but not divisible by 100, unless it's divisible by 400
if [ $((year % 4)) -eq 0 ] && [ $((year % 100)) -ne 0 ] || [ $((year % 400)) -eq 0 ]; then
    echo "$year is a leap year."
else
    echo "$year is not a leap year."
fi
