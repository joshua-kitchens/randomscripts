#!/bin/bash
#Script for finding hash value of a directory. must know absolute file path of that directory in relationship to where the script is being run
echo "Input directory path to create hash values for all files in that directory"

read dir

echo "Input name for file for checksum."

read hashfile

find $dir -type f -exec openssl sha256 {} + | tee $hashfile.txt