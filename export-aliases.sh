#!/bin/bash
output_file=${1}
git config --get-regexp alias > "$output_file"
echo "Git aliases have been exported to $output_file
