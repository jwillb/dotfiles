#!/bin/bash

new_location="$HOME/Repositories/dotfiles"

while IFS= read -r rel_path; do
  # Skip empty lines
  [ -z "$rel_path" ] && continue

  target_file="$HOME/$rel_path"
  mkdir -p "$new_location/$(dirname "$rel_path")"
  echo "Copying $target_file to $new_location/$rel_path"
  cp "$target_file" "$new_location/$rel_path"

done < "files.txt"

echo "Done."
