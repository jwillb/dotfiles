#!/bin/bash

repo_location="$HOME/Repositories/dotfiles"
folder_location="$repo_location/dotfiles"
file_list="$repo_location/files.txt"

while IFS= read -r rel_path; do
  # Skip empty lines
  [ -z "$rel_path" ] && continue

  target_file="$HOME/$rel_path"
  mkdir -p "$folder_location/$(dirname "$rel_path")"
  echo "Copying $target_file to $folder_location/$rel_path"
  cp "$target_file" "$folder_location/$rel_path"

done < "$file_list"

echo "Done."
