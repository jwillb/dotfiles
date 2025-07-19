#!/bin/bash

repo_location="$HOME/Repositories/dotfiles"
folder_location="$repo_location/dotfiles"
file_list="$repo_location/files.txt"

while IFS= read -r rel_path; do
  # Skip empty lines
  [ -z "$rel_path" ] && continue

  target_file="$HOME/$rel_path"
  mkdir -p "$HOME/$(dirname "$rel_path")"
  echo "Linking $folder_location/$rel_path to $target_file"
  ln -sf "$folder_location/$rel_path" "$target_file"

done < "$file_list"

echo "Done."
