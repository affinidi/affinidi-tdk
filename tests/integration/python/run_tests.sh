#!/usr/bin/env bash
set -euo pipefail

# Get the absolute path to the script directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Set TDK root (3 levels up from script location)
TDK_ROOT="$(cd "$SCRIPT_DIR/../../../" && pwd)"

# Set PYTHONPATH safely (fallback to empty string if not set)
export PYTHONPATH="$TDK_ROOT/clients/python:$SCRIPT_DIR:${PYTHONPATH:-}"

# Run tests from the script directory
cd "$SCRIPT_DIR"
pytest
