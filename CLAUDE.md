# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Web font hosting for MesloLGS Nerd Font (Powerlevel10k patched version) in woff2 format. Primary use case is Chrome OS terminal customization where users can't install local fonts.

Hosted at: https://greglamb.github.io/MesloLGSNF-web-fonts/

## Build Commands

Rebuild woff2 fonts from TTF sources:
```bash
cd fonts && ./buildwoff2.sh
```

Requires `ttf2woff2` (script auto-installs via npm if missing) and Node.js for URL encoding.

## Architecture

- `stylesheet.css` - @font-face declarations pointing to GitHub Pages URLs (users copy-paste this into Chrome OS terminal settings)
- `index.html` - Test page to verify fonts load correctly
- `fonts/woff2/` - Built woff2 files (Regular, Italic, Bold, Bold Italic)
- `fonts/buildwoff2.sh` - Downloads TTF from greglamb/dotfiles.fonts repo, converts to woff2

## Known Limitation

Chrome OS terminal's "Custom CSS (URI)" setting doesn't work; users must copy stylesheet contents as inline text.
