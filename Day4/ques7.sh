# Check if two arguments (start and end of the range) are provided
if [ $# -ne 2 ]; then
    echo "Usage: $0 <start> <end>"
    exit 1
fi

# Extract the start and end values from the arguments
start="$1"
end="$2"

# Function to check if a number is prime
is_prime() {
    num="$1"
    if [ "$num" -le 1 ]; then
        return 1  # Not prime
    fi
    for ((i = 2; i * i <= num; i++)); do
        if [ "$((num % i))" -eq 0 ]; then
            return 1  # Not prime
        fi
    done
    return 0  # Prime
}

# Iterate through the range and check for prime numbers
echo "Prime numbers in the range $start to $end:"
for ((n = start; n <= end; n++)); do
    if is_prime "$n"; then
        echo "$n"
    fi
done
