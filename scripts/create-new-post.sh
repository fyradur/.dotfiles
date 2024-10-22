#!/bin/bash

# Ask for the new post name
echo "Enter the name of the new post:"
read NEWPOST

# Convert the input to CamelCase for the directory name
DIRNAME=$(echo $NEWPOST | awk '{for(i=1;i<=NF;i++)sub(/./,toupper(substr($i,1,1)),$i)}1' | tr -d ' ')

# Define the source and destination directories
SRC_DIR="/home/john/code/fyradur.github.io/posts/Template"
DEST_DIR="/home/john/code/fyradur.github.io/posts/$DIRNAME"

# Copy the template directory to the new post directory
cp -r $SRC_DIR $DEST_DIR

# Get the current date
DATE=$(date +"%Y-%m-%d")

# Replace "NEWPOST" and "1337-04-20" with the new post name and current date in the index.ipynb file
sed -i "s/NEWPOST/$NEWPOST/g; s/1337-04-20/$DATE/g" $DEST_DIR/index.ipynb

# Open the new file with Visual Studio Code
code $DEST_DIR/index.ipynb
