# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Web font hosting for MesloLGS NF DF (Nerd Font patched Meslo, from [greglamb/dotfiles.fonts](https://github.com/greglamb/dotfiles.fonts)) in woff2 format. Primary use case is Chrome OS terminal customization where users can't install local fonts.

Hosted at: https://greglamb.github.io/dotfiles.fonts-web/

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
- `fonts/buildwoff2.sh` - Downloads TTF from the greglamb/dotfiles.fonts tag named by `version`, converts to woff2

When upstream releases a new tag, bump `version` in `fonts/buildwoff2.sh` and rebuild. If upstream renames the family again, update `family` there plus the font names and URLs in `stylesheet.css`, `index.html`, and `README.md`.

## Known Limitation

Chrome OS terminal's "Custom CSS (URI)" setting doesn't work; users must copy stylesheet contents as inline text.
