mvshp() {
  for ext in shp dbf prj shx cpg sbn sbx shp.xml; do
    if [ -f "$1.$ext" ]; then
      mv "$1.$ext" "$2.$ext"
      echo "$1.$ext -> $2.$ext"
    fi
  done
}
