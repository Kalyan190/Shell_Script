# Function to check if a number is prime
is_prime() {
    num=$1
    if [ $num -le 1 ]; then
        return 1
    fi

    for ((i = 2; i * i <= num; i++)); do
        if [ $((num % i)) -eq 0 ]; then
            return 1
        fi
    done
    return 0
}

# Check if the script is provided with two arguments
if [ $# -ne 2 ]; then
    echo "Usage: $0 <start> <end>"
    exit 1
fi

start=$1
end=$2

# Check if the provided range is valid
#if [ $start -ge $end ]; then
#   echo "Invalid range: $start should be less than $end."
#   exit 1
#fi

echo "Prime numbers in the range $start to $end:"

# Loop through the range and check for prime numbers
for ((num = start; num <= end; num++)); do
    if is_prime $num; then
        echo $num
    fi
done

