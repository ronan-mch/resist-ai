# Resist AI

This is the repo for the  `https://resist-ai.sh` website.

## Structure

- The main text lives in `text.md`
- The HTML skeleton and CSS rules live in `template.html`
- The build script is in `./build.sh`

## Building

- Run `make` (needs [Markdown](https://formulae.brew.sh/formula/markdown) CLI tool)
- `site/index.html` contains the generated HTML.
- On push to master, `site/index.html` is picked up by Cloudflare and written to a Cloudflare Page.
