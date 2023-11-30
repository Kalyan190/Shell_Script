# Function to calculate the factorial of a number
calculate_factorial() {
    num=$1
    factorial=1

    for ((i = 1; i <= num; i++)); do
        factorial=$((factorial * i))
    done

    echo $factorial
}

# Check if the script is provided with one argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <number>"
    exit 1
fi

number=$1
# Calculate and display the factorial
result=$(calculate_factorial $number)
echo "Factorial of $number is $result"
