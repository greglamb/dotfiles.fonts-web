#!/usr/bin/env bash

# npm install --global ttf2woff2

if ! command -v ttf2woff2 &> /dev/null; then
  echo "ttf2woff2 not found, installing..."
  npm install --global ttf2woff2
fi

# Tag of https://github.com/greglamb/dotfiles.fonts to build from
version="v2.1.0"
family="MesloLGS NF DF"
fonts=("Regular" "Italic" "Bold" "Bold Italic")
licenses=("${family} License.txt" "Nerd Fonts License.txt" "Noto License.txt")
base="https://github.com/greglamb/dotfiles.fonts/raw/refs/tags/${version}"

for font in "${fonts[@]}"; do
  output="woff2/${family} ${font}.woff2"
  encoded_url=$(node -e "console.log(encodeURI('${base}/${family} ${font}.ttf'))")
  echo "Building ${output}"
  curl -fsSL "${encoded_url}" | ttf2woff2 > "${output}"
done

for license in "${licenses[@]}"; do
  encoded_url=$(node -e "console.log(encodeURI('${base}/${license}'))")
  echo "Fetching ${license}"
  curl -fsSL "${encoded_url}" -o "${license}"
done
