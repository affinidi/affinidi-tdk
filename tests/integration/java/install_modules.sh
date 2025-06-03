#!/usr/bin/env bash
set -e

echo "Installing all Java clients..."

# Build and install auto-generated clients
for client_dir in ../../../clients/java/*; do
  if [ -d "$client_dir" ]; then
    echo "Installing client in $client_dir"
    (cd "$client_dir" && mvn clean install -DskipTests)
  fi
done

echo "Installing shared packages..."

# Build and install shared packages
for package_dir in ../../../packages/java/*; do
  if [ -d "$package_dir" ]; then
    echo "Installing package in $package_dir"
    (cd "$package_dir" && mvn clean install -DskipTests)
  fi
done

echo "All clients and packages installed successfully."
