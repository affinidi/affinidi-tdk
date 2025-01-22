#!/bin/bash

ROOT_DIR="./clients/dart"

if [[ $# -gt 0 ]]; then
  ROOT_DIR="$1"
fi

if [ ! -d "$ROOT_DIR" ]; then
  echo "\033[1;31mError: Directory $ROOT_DIR does not exist.\033[0m"
  exit 1
fi

for dir in "$ROOT_DIR"/*/; do
  if [ -f "$dir/pubspec.yaml" ]; then
    echo "\033[1;32m====== Found package in $dir ======\033[0m"

    echo "\033[1;34mRunning dart pub get in $dir\033[0m"
    (cd "$dir" && dart pub get)

    echo "\033[1;34mRunning build_runner in $dir\033[0m"
    (cd "$dir" && dart run build_runner build --delete-conflicting-outputs)

    if [ $? -ne 0 ]; then
      echo "\033[1;31mError during build_runner in $dir\033[0m"
      echo "\033[1;33mRunning dart pub upgrade in $dir...\033[0m"

      (cd "$dir" && dart pub upgrade)

      echo "\033[1;34mRetrying build_runner in $dir after upgrading...\033[0m"
      (cd "$dir" && dart run build_runner build --delete-conflicting-outputs)
    fi

    echo "\033[1;33mFinished processing $dir\033[0m"
  else
    echo "\033[1;31mNo pubspec.yaml found in $dir\033[0m"
  fi
done

echo "\033[1;32m======== All packages processed. ========\033[0m"
