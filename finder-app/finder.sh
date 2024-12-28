#!/bin/bash
filesdir=$1
searchstr=$2
if [ $# -lt 2 ]; then
	echo "Too few arguments"
	exit 1
fi
if [ -d "$filesdir" ]; then
	echo "File directory exists"
else
	echo "File directory does not exist"
	exit 1
fi
num_files=$(find "$filesdir" -type f | wc -l)
num_matching_lines=$(grep -r "$searchstr" "$filesdir" 2>/dev/null | wc -l)
echo "The number of files are $num_files and the number of matching lines are $num_matching_lines"
