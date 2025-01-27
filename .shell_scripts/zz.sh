zz() {
  local dir
  dir=$(z | fzf | awk '{print $2}')
  if [[ -n "$dir" ]]; then
    cd "$dir"
  fi
}

