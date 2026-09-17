#!/usr/bin/env bash

# npm install --global ttf2woff2

if ! command -v ttf2woff2 &> /dev/null; then
  echo "ttf2woff2 not found, installing..."
  npm install --global ttf2woff2
fi

# Tag of https://github.com/greglamb/dotfiles.fonts to build from
version="v2.0.0"
family="MesloLGS NF DF"
fonts=("Regular" "Italic" "Bold" "Bold Italic")

for font in "${fonts[@]}"; do
  output="woff2/${family} ${font}.woff2"
  url="https://github.com/greglamb/dotfiles.fonts/raw/refs/tags/${version}/${family} ${font}.ttf"
  encoded_url=$(node -e "console.log(encodeURI('$url'))")
  echo "Building ${output}"
  curl -fsSL "${encoded_url}" | ttf2woff2 > "${output}"
done
