#!/usr/bin/env bash

npm install --global ttf2woff2

curl -fsSL "https://github.com/greglamb/dotfiles.fonts/raw/refs/heads/main/MesloLGS NF Regular.ttf" | ttf2woff2 > "MesloLGS-NF.woff2/MesloLGS NF Regular.woff2"
curl -fsSL "https://github.com/greglamb/dotfiles.fonts/raw/refs/heads/main/MesloLGS NF Italic.ttf" | ttf2woff2 > "MesloLGS-NF.woff2/MesloLGS NF Italic.woff2"
curl -fsSL "https://github.com/greglamb/dotfiles.fonts/raw/refs/heads/main/MesloLGS NF Bold.ttf" | ttf2woff2 > "MesloLGS-NF.woff2/MesloLGS NF Bold.woff2"
curl -fsSL "https://github.com/greglamb/dotfiles.fonts/raw/refs/heads/main/MesloLGS NF Bold Italic.ttf" | ttf2woff2 > "MesloLGS-NF.woff2/MesloLGS NF Bold Italic.woff2"
