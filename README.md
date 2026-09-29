# MesloLGS NF DF Web Fonts

MesloLGS NF DF (Nerd Font patched Meslo) in woff2 format, hosted for use in Chrome OS terminal where local font installation isn't possible.

See [dotfiles.fonts](https://github.com/greglamb/dotfiles.fonts) for the TTF source.

## Demo

https://greglamb.github.io/dotfiles.fonts-web/

## Chrome OS Terminal Setup

Fresh-machine setup for the built-in ChromeOS Terminal.

### Prerequisites

- Linux development environment enabled (**Settings → About ChromeOS → Developers → Linux development environment**)

### Steps

1. Open the **Terminal** app and start a **Linux (penguin)** session tab.
2. With that tab focused, press **Ctrl+Shift+J** to open the DevTools console.
   - If DevTools doesn't open, go to `chrome://inspect/#other`, find `terminal.html`, and click **inspect**.
3. Copy the contents of [chromeos-terminal.js](https://greglamb.github.io/dotfiles.fonts-web/chromeos-terminal.js), paste them into the console, and press Enter.

   The script sets:
   - **font-family:** `"MesloLGS NF DF", monospace`
   - **font-size:** 13
   - **font-smoothing:** antialiased
   - **line-height-padding-size:** 0
   - **user-css-text:** the contents of [stylesheet.css](stylesheet.css)

4. Verify in the Linux shell. You should see Powerline/Nerd Font glyphs, not boxes:

   ```sh
   printf '  \n'
   ```

The first load downloads about 5 MB per font file, so glyphs may take a moment to appear.

### Exporting Settings

To export your current Terminal settings, run this in the same console:

```js
term_.prefs_.exportAsJson();
```

It returns every setting that differs from the defaults. To copy the result to the clipboard instead, wrap it in the DevTools `copy()` helper:

```js
copy(term_.prefs_.exportAsJson());
```

### Notes

- `term_` exists only in a terminal session tab's console. You'll get `ReferenceError: term_ is not defined` from the Terminal home/settings page or from a regular Chrome tab.
- Settings persist and apply to all Terminal windows.
- The "Custom CSS (URI)" option doesn't work, so the script sets the CSS as inline text.
- The old preferences editor (`chrome-untrusted://terminal/html/nassh_preferences_editor.html`) is blank on newer ChromeOS builds.

## What changes in 2.1.0

Upstream 2.1.0 fills gaps Nerd Fonts leaves with Noto symbols and colour emoji; the family name and stylesheet are unchanged, so existing 2.x setups pick it up automatically. Each woff2 file grows to roughly 5 MB, so the first load takes longer. See the [upstream notes](https://github.com/greglamb/dotfiles.fonts#what-changes-in-210) for details.

## Upgrading from 1.x

The upstream 2.0.0 release renamed the family from `MesloLGS NF` to `MesloLGS NF DF`, and this repo moved from `MesloLGSNF-web-fonts` to `dotfiles.fonts-web`. The old font URLs no longer resolve. Re-run [chromeos-terminal.js](https://greglamb.github.io/dotfiles.fonts-web/chromeos-terminal.js) as described above; it overwrites the old font family and custom CSS.

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
