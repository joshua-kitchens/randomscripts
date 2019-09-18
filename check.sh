#!/bin/bash
#Script for comparing two files for differences. Can be used for inventories and hash values
# Asks user for path/filname1.txt and path/filename2.txt. Can be used for checking anytype of output for changes.
echo "Input original file name and location"

read file1

echo "Input new file for comparison"

read file2

echo "Input name for difference report"

read diff

diff -s -C 0 $file1 $file2 | tee $diff.txt

# The following is another display method, but it omits information. This maybe a better method, but i'm not there on the proper way to use this to do what i want.
#diff --unchanged-line-format="" --old-line-format=":line %dn: %L" --new-line-format=":line %dn: %L" $file1 $file2 | tee $diff.txt