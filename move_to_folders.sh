#!/usr/bin/env bash

# Source path of files
SOURCE_PATH=""

# File selection criteria (by name)
FILE_NAME=""

cd $(echo $SOURCE_PATH | tr -d '\r')

for f in $FILE_NAME; do
    name=`echo "$f"|sed 's/ -.*//'`
    letter=`echo "$name"|cut -c1`
    dir="$SOURCE_PATH/$letter"
    mkdir -p "$dir"
    mv "$f" "$dir"
done

echo "done"