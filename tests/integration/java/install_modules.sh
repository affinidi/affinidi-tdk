#!/usr/bin/env bash
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/../../../" && pwd)"

echo "SCRIPT_DIR ", $SCRIPT_DIR
echo "REPO_ROOT ", $REPO_ROOT

echo "Installing all TDK clients..."

for client_dir in "$REPO_ROOT/clients/java"/*; do
  if [ -d "$client_dir" ]; then
    echo "Installing client in $client_dir"
    (cd "$client_dir" && mvn clean install -Dgpg.skip=true -DskipTests)
  fi
done

echo "Installing shared packages..."

for package_dir in "$REPO_ROOT/packages/java"/*; do
  if [ -d "$package_dir" ]; then
    echo "Installing package in $package_dir"
    (cd "$package_dir" && mvn clean install -Dgpg.skip=true -DskipTests)
  fi
done

echo "All clients and packages installed successfully."
