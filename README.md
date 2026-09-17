# MesloLGS NF DF Web Fonts

MesloLGS NF DF (Nerd Font patched Meslo) in woff2 format, hosted for use in Chrome OS terminal where local font installation isn't possible.

See [dotfiles.fonts](https://github.com/greglamb/dotfiles.fonts) for the TTF source.

## Demo

https://greglamb.github.io/dotfiles.fonts-web/

## Chrome OS Terminal Setup

1. Open terminal preferences: `chrome-untrusted://terminal/html/nassh_preferences_editor.html`

2. Configure these settings:
   - **Text font family:** `"MesloLGS NF DF", monospace`
   - **Text font size:** 15
   - **Text font smoothing:** antialiased
   - **Line height padding size:** 0
   - **Custom CSS (inline text):** Copy contents from [stylesheet.css](https://greglamb.github.io/dotfiles.fonts-web/stylesheet.css)

> **Note:** The "Custom CSS (URI)" option doesn't work - you must paste the stylesheet contents as inline text.

## Upgrading from 1.x

The upstream 2.0.0 release renamed the family from `MesloLGS NF` to `MesloLGS NF DF`, and this repo moved from `MesloLGSNF-web-fonts` to `dotfiles.fonts-web`. Replace the old custom CSS with the current [stylesheet.css](https://greglamb.github.io/dotfiles.fonts-web/stylesheet.css) and change the text font family to `"MesloLGS NF DF", monospace`.

## Building Fonts

To rebuild the woff2 files from TTF sources:

```bash
cd fonts
./buildwoff2.sh
```

Requires Node.js. The script will auto-install `ttf2woff2` via npm if not present. It builds from the [dotfiles.fonts](https://github.com/greglamb/dotfiles.fonts) tag set in `version`; bump that to pick up a new release.

## Font Variants

- Regular
- Italic
- Bold
- Bold Italic

## License

See [fonts/MesloLGS NF DF License.txt](fonts/MesloLGS%20NF%20DF%20License.txt)
