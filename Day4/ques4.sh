# Check if a script file is provided as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <script_file>"
    exit 1
fi

# Check if the provided file exists
if [ ! -f "$1" ]; then
    echo "Error: File '$1' not found."
    exit 1
fi

# Make the script file executable
chmod +x "$1"
./"$1" 5
echo "Script '$1' is now executable."
