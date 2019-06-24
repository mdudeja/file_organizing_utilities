#!/usr/bin/env bash

BASE_FOLDER="../../taals_data/"
SOURCE_FOLDER="images_flattened"
TARGET_FOLDER="images_semicircle_re"

cd $(echo $BASE_FOLDER | tr -d '\r')

find $SOURCE_FOLDER -type f -name '*.png' -exec cp {} $TARGET_FOLDER \;

echo "done"