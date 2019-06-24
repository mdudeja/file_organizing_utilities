#!/usr/bin/env bash

BASE_FOLDER="../../taals_data/"
SOURCE_FOLDER="images_flattened"
TARGET_FOLDER="images_semicircle_re"

cd $(echo $BASE_FOLDER | tr -d '\r')

find $SOURCE_FOLDER -type f -name '*semicircle_RE*.png' -exec cp -p {} $TARGET_FOLDER \;

echo "done"