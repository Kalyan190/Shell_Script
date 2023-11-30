# Check if a number is provided as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <number>"
    exit 1
fi

# Extract the number from the argument
number="$1"

# Use the modulo operator (%) to check if the number is even or odd
if [ $((number % 2)) -eq 0 ]; then
    echo "$number is even."
else
    echo "$number is odd."
fi
