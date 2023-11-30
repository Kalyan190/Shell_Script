# Set your name
your_name="kalyan"  # Replace "YourName" with your actual name

# Get the base name of the current working directory
cwd_name=$(basename "$PWD")

# Check if the PWD name is the same as your name
if [ "$cwd_name" = "$your_name" ]; then
    echo "The PWD name is the same as your name: $your_name"
else
    echo "The PWD name is not the same as your name."
fi
