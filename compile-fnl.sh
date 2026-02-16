#!/bin/bash
set -e

SRC_DIR="fnl"
OUT_DIR="lua"

for file in "$SRC_DIR"/**/*.fnl; do
    # Skip if no files match
    [[ -e "$file" ]] || continue

    # Get relative path without the source directory prefix
    rel_path="${file#$SRC_DIR/}"
    # Replace .fnl extension with .lua
    out_file="$OUT_DIR/${rel_path%.fnl}.lua"
    # Create output directory if needed
    mkdir -p "$(dirname "$out_file")"
    # Compile
    echo "Compiling: $file -> $out_file"
    fennel --compile "$file" > "$out_file"
done

echo "Done!"
