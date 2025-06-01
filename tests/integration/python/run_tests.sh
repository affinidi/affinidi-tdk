#!/bin/bash
# Run Python integration tests
export PYTHONPATH=../../../clients/python:../../../tests/integration/python:$PYTHONPATH
pytest
