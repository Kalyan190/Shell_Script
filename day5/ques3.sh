# Extract the number from the argument
echo "Enter A number"
read input_number

# Initialize a flag to indicate if a factorial match is found
m=0

# Iterate through numbers to find a factorial match
for ((c = 1; c <= input_number; c++)); do
    factorial=1
    for ((i = 2; i <= c; i++)); do
        factorial=$((factorial * i))
    done

    if [ "$factorial" -eq "$input_number" ]; then
        echo "$input_number is the factorial of $c."
        m=1
        break
    elif [ "$factorial" -gt "$input_number" ]; then
        break
    fi
done

# If no match is found, the input number is not a factorial
if [ "$m" -eq 0 ]; then
    echo "$input_number is not the factorial of any number."
fi
