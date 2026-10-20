# Vendored generator

`jemdoc` is based on the published **jemdoc-cvx 1.0.0** release, downloaded on
2026-10-20. It requires Python 3.11 or newer and uses only the Python standard
library to build the current pages.

- Project: https://github.com/cvxgrp/jemdoc-cvx
- Release: https://github.com/cvxgrp/jemdoc-cvx/releases/tag/v1.0.0
- Upstream source: https://raw.githubusercontent.com/cvxgrp/jemdoc-cvx/v1.0.0/jemdoc
- Upstream source SHA-256: `f61dbeb20f8d1f5ee40c791029d5435009842681a97d8b3a48f650e58c834de4`
- Upstream license file: `JEMDOC-LICENSE.txt` (included unchanged).

The following local compatibility changes preserve this site's existing
`jemdoc-new-design` theme and source files:

1. Use `python3` in the executable's interpreter line.
2. Keep the three `img_left` layout containers (`text-img-container`,
   `img-container`, and `text-container`) instead of the upstream image table.
3. Keep the English month/day/year footer with ordinal suffixes, without a
   time of day, through `custom_strftime`.
4. Escape generated external-link target quotes so that the typography
   conversion preserves valid `target="blank"` attributes.

`mysite.conf` and the existing CSS continue to control the site's appearance;
upgrading the generator does not install the upstream default theme.

The current pages contain no equations, so Node.js and KaTeX are not required.
The existing MathJax configuration remains available for browser-side equation
rendering when KaTeX is absent.

For a future upgrade, download a fixed upstream release, reapply the changes
above, and compare both generated pages before replacing this copy. Check for
warnings with `python3 -W error jemdoc -c mysite.conf -o ../docs/
index.jemdoc publications.jemdoc` from `doc/`.
