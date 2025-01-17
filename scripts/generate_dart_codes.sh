#!/bin/bash

ROOT_DIR="./clients/dart"

if [[ $# -gt 0 ]]; then
  ROOT_DIR="$1"
fi

if [ ! -d "$ROOT_DIR" ]; then
  echo "Error: Directory $ROOT_DIR does not exist."
  exit 1
fi

for dir in "$ROOT_DIR"/*/; do
  if [ -f "$dir/pubspec.yaml" ]; then
    echo "Found package in $dir"
    echo "Running dart pub get in $dir"
    (cd "$dir" && dart pub get)
    echo "Running build_runner in $dir"
    (cd "$dir" && dart run build_runner build --delete-conflicting-outputs)
  else
    echo "No pubspec.yaml found in $dir"
  fi
done

echo "All packages processed."
