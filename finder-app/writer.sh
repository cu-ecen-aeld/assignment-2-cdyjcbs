#!/bin/bash
writefile=$1
writestr=$2
if [ $# -lt 2 ]; then
	echo "Too few arguments"
	echo "Please enter in the following order:"
	echo "1. Write file name"
	echo "2. Write string"
	exit 1
fi
mkdir -p "$(dirname "$writefile")"
if echo "$writestr" > "$writefile"; then
	echo "File created and written succesfully."
else
	echo "Error: Could not create or write to the file."
	exit 1
fi
