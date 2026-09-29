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

- `stylesheet.css` - @font-face declarations pointing to GitHub Pages URLs
- `chromeos-terminal.js` - Console script users paste into a Chrome OS Terminal tab's DevTools; sets font prefs and embeds `stylesheet.css` verbatim as `user-css-text`
- `index.html` - Test page to verify fonts load correctly
- `fonts/woff2/` - Built woff2 files (Regular, Italic, Bold, Bold Italic)
- `fonts/buildwoff2.sh` - Downloads TTF from the greglamb/dotfiles.fonts tag named by `version`, converts to woff2, and fetches that tag's license files into `fonts/`

When upstream releases a new tag, bump `version` in `fonts/buildwoff2.sh` and rebuild. If upstream renames the family again, update `family` there plus the font names and URLs in `stylesheet.css`, `chromeos-terminal.js`, `index.html`, and `README.md`.

Whenever `stylesheet.css` changes, copy it into the `String.raw` CSS block in `chromeos-terminal.js` so the two stay identical.

## Known Limitation

Chrome OS terminal's "Custom CSS (URI)" setting doesn't work, so `chromeos-terminal.js` sets the CSS as inline text. The old `nassh_preferences_editor.html` page is blank on newer ChromeOS builds, which is why setup goes through the DevTools console.
