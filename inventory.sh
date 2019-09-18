#!/bin/bash
# Inventories home directory of a linuix or mac os if the standard env has the variable for the home directory set at $HOME. May not work in some systems.
# Created for Week 006 of ARST 5100. 
echo "Create file name for an inventory file. 
Note all file names will be appended with .txt"

read inventory

ls -l -R $HOME | tee $inventory.txt

clear

echo "Create file name for file tree.
Note all file names will be appended with .txt"

read tree

#will work on mac and linux
find $HOME -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g' | tee $tree.txt
