// ChromeOS Terminal setup for MesloLGS NF DF.
//
// Paste into the DevTools console of a Terminal session tab (Ctrl+Shift+J).
// See README.md for how to open that console.
//
// The @font-face rules below must stay identical to stylesheet.css.
(() => {
  if (typeof term_ === 'undefined') {
    console.error(
      'term_ is not defined. Run this in the DevTools console of a Terminal ' +
        'session tab, not the Terminal home/settings page or a browser tab.'
    );
    return;
  }

  // String.raw keeps the `\ ` escapes in the font URLs intact.
  const css = String.raw`@font-face {
  font-family: 'MesloLGS NF DF';
  src: url('https://greglamb.github.io/dotfiles.fonts-web/fonts/woff2/MesloLGS\ NF\ DF\ Italic.woff2') format('woff2');
  font-weight: normal;
  font-style: italic;
  font-display: swap;
}

@font-face {
  font-family: 'MesloLGS NF DF';
  src: url('https://greglamb.github.io/dotfiles.fonts-web/fonts/woff2/MesloLGS\ NF\ DF\ Bold.woff2') format('woff2');
  font-weight: bold;
  font-style: normal;
  font-display: swap;
}

@font-face {
  font-family: 'MesloLGS NF DF';
  src: url('https://greglamb.github.io/dotfiles.fonts-web/fonts/woff2/MesloLGS\ NF\ DF\ Bold\ Italic.woff2') format('woff2');
  font-weight: bold;
  font-style: italic;
  font-display: swap;
}

@font-face {
  font-family: 'MesloLGS NF DF';
  src: url('https://greglamb.github.io/dotfiles.fonts-web/fonts/woff2/MesloLGS\ NF\ DF\ Regular.woff2') format('woff2');
  font-weight: normal;
  font-style: normal;
  font-display: swap;
}
`;

  const prefs = {
    'font-family': '"MesloLGS NF DF", monospace',
    'font-size': 13,
    'font-smoothing': 'antialiased',
    'line-height-padding-size': 0,
    'user-css-text': css,
  };

  for (const [name, value] of Object.entries(prefs)) {
    term_.prefs_.set(name, value);
  }

  console.log('MesloLGS NF DF applied:', Object.keys(prefs).join(', '));
})();
