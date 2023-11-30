#Write a shell script to calculate the factorial of any user-given number using for loop
# Check if a number is provided as an argument
echo "Enter A Number"
read num
# Extract the number from the argument
number="$num"
# Initialize the factorial to 1
factorial=1

# Calculate the factorial
for ((i = 2; i <= number; i++)); do
    factorial=$((factorial * i))
done

echo "Factorial of $number is: $factorial"


