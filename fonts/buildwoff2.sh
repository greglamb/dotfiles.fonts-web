#!/usr/bin/env bash

# npm install --global ttf2woff2

if ! command -v ttf2woff2 &> /dev/null; then
  echo "ttf2woff2 not found, installing..."
  npm install --global ttf2woff2
fi

fonts=("Regular" "Italic" "Bold" "Bold Italic")

for font in "${fonts[@]}"; do
  output="woff2/MesloLGS NF ${font}.woff2"
  url="https://github.com/greglamb/dotfiles.fonts/raw/refs/heads/main/MesloLGS NF ${font}.ttf"
  encoded_url=$(node -e "console.log(encodeURI('$url'))")
  echo "Building ${output}"
  curl -fsSL "${encoded_url}" | ttf2woff2 > "${output}"
done
