#!/bin/bash

files=(
  ".bashrc"
  ".bash_profile"
  ".config/i3/base.conf"
  ".config/sway/config"
  ".config/wm/universal.conf"
  ".config/nvim/init.vim"
  ".xinitrc"
)

new_location="$HOME/Repositories/dotfiles"

for rel_path in "${files[@]}"; do
  target_file="$HOME/$rel_path"
  mkdir -p "$new_location/$(dirname "$rel_path")"
  echo "Copying $target_file to $new_location/$rel_path"
  cp "$target_file" "$new_location/$rel_path"
done

echo "Done."
