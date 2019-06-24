#!/usr/bin/env bash

SOURCE_FOLDER="../../taals_data/images_semicircle_le"

cd $(echo $SOURCE_FOLDER | tr -d '\r')

for f in *.png; do
    name=`echo "$f"|sed 's/ -.*//'`
    letter=`echo "$name"|cut -c1`
    dir="$SOURCE_FOLDER/$letter"
    mkdir -p "$dir"
    mv "$f" "$dir"
done