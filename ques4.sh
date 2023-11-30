# Check if a script file path is provided as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <script_file>"
    exit 1
fi

script_file="$1"

# Check if the provided path is a file
if [ ! -f "$script_file" ]; then
    echo "$script_file is not a valid file."
    exit 1
fi

# Make the script file executable
chmod +x "$script_file"

echo "$script_file is now executable."
