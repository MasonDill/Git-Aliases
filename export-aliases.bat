@ECHO OFF
set output_file=%1
git config --get-regexp alias > %output_file%
echo git aliases have been exported to %output_file%
