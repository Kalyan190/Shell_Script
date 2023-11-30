# Check if a number is provided as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <number>"
    exit 1
fi

# Extract the number from the argument
number="$1"

# Initialize the factorial to 1
factorial=1

# Check if the number is less than 0 (factorial is undefined for negative numbers)
if [ "$number" -lt 0 ]; then
    echo "Error: Factorial is undefined for negative numbers."
    exit 1
fi

# Calculate the factorial
for ((i = 2; i <= number; i++)); do
    factorial=$((factorial * i))
done

echo "Factorial of $number is: $factorial"
