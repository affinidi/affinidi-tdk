#!/bin/bash

# Run tests with coverage
flutter test --coverage

# Generate HTML coverage report
genhtml coverage/lcov.info -o coverage/html

echo "Coverage report generated in coverage/html/index.html" 