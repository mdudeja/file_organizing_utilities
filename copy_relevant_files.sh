#!/usr/bin/env bash

# Base path where all data + folders exist
BASE_PATH=""

# Source path where to pick files from
SOURCE_PATH=""

# Target dir where to copy files to
TARGET_PATH=""

# File selection criteria (by name)
FILE_NAME=""

cd $(echo $BASE_PATH | tr -d '\r')

find $SOURCE_PATH -type f -name $FILE_NAME  -exec cp -p {} $TARGET_PATH \;

echo "done"