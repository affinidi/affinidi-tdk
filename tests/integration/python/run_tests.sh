#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TDK_ROOT="$(cd "$SCRIPT_DIR/../../../" && pwd)"

export PYTHONPATH="$TDK_ROOT/clients/python:$SCRIPT_DIR:${PYTHONPATH:-}"

cd "$SCRIPT_DIR"

uv run python -m pytest
