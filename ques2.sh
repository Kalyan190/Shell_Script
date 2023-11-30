# Check if a file path is provided as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <file_path>"
    exit 1
fi

file_path="$1"

# Check if the provided path is a file
if [ ! -f "$file_path" ]; then
    echo "$file_path is not a valid file."
    exit 1
fi

# Use the 'wc' command to count words
word_count=$(wc -w < "$file_path")

echo "Number of words in $file_path: $word_count"
