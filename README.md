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

## What changes in 2.1.0

Upstream 2.1.0 fills gaps Nerd Fonts leaves with Noto symbols and colour emoji; the family name and stylesheet are unchanged, so existing 2.x setups pick it up automatically. Each woff2 file grows to roughly 5 MB, so the first load takes longer. See the [upstream notes](https://github.com/greglamb/dotfiles.fonts#what-changes-in-210) for details.

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

The fonts are distributed under the SIL Open Font License 1.1 as a whole, with each part keeping its own notices. See [fonts/MesloLGS NF DF License.txt](fonts/MesloLGS%20NF%20DF%20License.txt), [fonts/Nerd Fonts License.txt](fonts/Nerd%20Fonts%20License.txt), and [fonts/Noto License.txt](fonts/Noto%20License.txt).
