# MesloLGS NF Web Fonts

MesloLGS Nerd Font (Powerlevel10k patched) in woff2 format, hosted for use in Chrome OS terminal where local font installation isn't possible.

## Demo

https://greglamb.github.io/MesloLGSNF-web-fonts/

## Chrome OS Terminal Setup

1. Open terminal preferences: `chrome-untrusted://terminal/html/nassh_preferences_editor.html`

2. Configure these settings:
   - **Text font family:** `"MesloLGS NF", monospace`
   - **Text font size:** 15
   - **Text font smoothing:** antialiased
   - **Line height padding size:** 0
   - **Custom CSS (inline text):** Copy contents from [stylesheet.css](https://greglamb.github.io/MesloLGSNF-web-fonts/stylesheet.css)

> **Note:** The "Custom CSS (URI)" option doesn't work - you must paste the stylesheet contents as inline text.

## Building Fonts

To rebuild the woff2 files from TTF sources:

```bash
cd fonts
./buildwoff2.sh
```

Requires Node.js. The script will auto-install `ttf2woff2` via npm if not present.

## Font Variants

- Regular
- Italic
- Bold
- Bold Italic

## License

See [fonts/MesloLGS NF License.txt](fonts/MesloLGS%20NF%20License.txt)
