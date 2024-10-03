#!/bin/bash
input_file=${1}
while read -r alias value; do
  git config --global "$alias" "$value"
done < input_file
