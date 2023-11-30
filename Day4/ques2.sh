# Check if a file path is provided as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <file>"
    exit 1
fi

# Check if the provided file exists
if [ ! -f "$1" ]; then
    echo "Error: File '$1' not found."
    exit 1
fi

# Use wc to count words in the file and display the result
word_count=$(wc -w < "$1")
echo "Number of words in '$1': $word_count"
