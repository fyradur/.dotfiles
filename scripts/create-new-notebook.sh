#!/bin/bash

# Get the current datetime
DATETIME=$(date +"%Y%m%d%H%M%S")

# Define the source and destination directories
SRC_DIR="/home/john/code/fyradur.github.io/posts/Template"
DEST_DIR="/home/john/code/notebooks/$DATETIME"

# Copy the template directory to the new directory
cp -r $SRC_DIR $DEST_DIR

# Open the new file with Visual Studio Code
code $DEST_DIR/index.ipynb
