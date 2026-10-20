# Updating the website

Edit the source files in `doc/`:

- `index.jemdoc`: homepage content.
- `publications.jemdoc`: publication list.
- `mysite.conf`: shared layout and footer.
- `MENU`: navigation links.

From the repository root, run:

```sh
sh doc/build.sh
```

This uses the bundled jemdoc-cvx 1.0.0 generator, requires Python 3.11 or newer,
and regenerates `docs/index.html` and
`docs/publications.html`. Each footer uses the date of generation.
You can also run `sh build.sh` from inside `doc/`.

Review and commit both the source changes and generated HTML files, then push
them to GitHub to update the website. Changes made directly to generated HTML
will be overwritten the next time the script runs.

To add a page, create a `doc/NAME.jemdoc` source, add `NAME.html` to `doc/MENU`,
and add the source filename to the command in `doc/build.sh`.

The generator's upstream version and local theme adaptations are documented in
[JEMDOC-UPSTREAM.md](JEMDOC-UPSTREAM.md).
