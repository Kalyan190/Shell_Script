# Check if a directory path is provided as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <directory_path>"
    exit 1
fi

directory_path="$1"

# Check if the provided path is a directory
if [ ! -d "$directory_path" ]; then
    echo "$directory_path is not a valid directory."
    exit 1
fi

# List files in the directory
echo "Files in $directory_path:"
for file in "$directory_path"/*; do
    if [ -f "$file" ]; then
        echo " - $(basename "$file")"
    fi
done

# List subdirectories in the directory
echo "Subdirectories in $directory_path:"
for subdirectory in "$directory_path"/*; do
    if [ -d "$subdirectory" ]; then
        echo " - $(basename "$subdirectory")"
    fi
done

