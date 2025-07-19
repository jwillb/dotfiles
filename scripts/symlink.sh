#!/bin/bash

folder_location="$HOME/Repositories/dotfiles"

while IFS= read -r rel_path; do
  # Skip empty lines
  [ -z "$rel_path" ] && continue

  target_file="$HOME/$rel_path"
  mkdir -p "$HOME/$(dirname "$rel_path")"
  echo "Linking $folder_location/$rel_path to $target_file"
  ln -sf "$folder_location/$rel_path" "$target_file"

done < "files.txt"

echo "Done."
