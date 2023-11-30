# Check if the user provided a directory as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

# Check if the provided directory exists
if [ ! -d "$1" ]; then
    echo "Error: Directory '$1' not found."
    exit 1
fi

# Iterate over the contents of the directory
echo "Listing files and sub-directories in '$1':"
for item in "$1"/*; do
    if [ -d "$item" ]; then
        # It's a directory
        echo "Directory: $(basename "$item")"
    elif [ -f "$item" ]; then
        # It's a regular file
        echo "File: $(basename "$item")"
    fi
done
