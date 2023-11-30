# file name same or not
your_name="kalyan"

# Get the current working directory's name
cwd_name=$(basename "$PWD")

# Check if the current directory's name matches your name
if [ "$cwd_name" == "$your_name" ]; then
    echo "Current directory's name is the same as your name: $your_name"
else
    echo "Current directory's name is not the same as your name: $cwd_name"
fi
