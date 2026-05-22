#!/usr/bin/env bash
# Initialize MVP Creator Codex output directory

set -e

PROJECT_NAME="${1:-my-app}"
OUTPUT_DIR="${2:-.}"

mkdir -p "$OUTPUT_DIR/$PROJECT_NAME/docs"
mkdir -p "$OUTPUT_DIR/$PROJECT_NAME/.codex/commands"

echo "Created $OUTPUT_DIR/$PROJECT_NAME/"
echo "  ├── docs/"
echo "  └── .codex/commands/"
echo ""
echo "Next steps:"
echo "  1. Generate research report"
echo "  2. Generate MVP business plan"
echo "  3. Generate brand guide"
echo "  4. Generate technical guide"
echo "  5. Generate Codex setup files"
