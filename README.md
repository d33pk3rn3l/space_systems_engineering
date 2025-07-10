# Space Systems Engineering - Student Resources

This repository contains the sources for the student website of the [Space Systems Engineering](https://www.google.com/search?q=https://d33pk3rn3l.github.io/space_systems_engineering) course at ETH Zurich. including a summary of the lecture contents.

## Build

The site is built with [Quartz](https://quartz.jzhao.xyz/) and automatically deployed to GitHub Pages via a GitHub Actions workflow in `.github/workflows/deploy.yml`.

To build and test the website locally, roughly follow the below workflow.

```bash
git clone https://github.com/jackyzha0/quartz
cd quartz
rm -r ./content
ln -s ../content content
cp ../quartz.config.ts .
npm install
npx quartz build --serve
```

To edit the contents of the webpages, simply edit the markdown files, following a similar structure as the already existing content in `content/`.

The site's appearance and navigation are defined in `quartz.config.ts`. You can edit this file to change the site's structure and metadata.

Ensure you have the right to use any images, text, or assets you add. Respect all copyright and licensing of original materials.

## Contribute

Please open pull requests to suggest changes/additions to the website. Once merged, the changes should be online in a matter of minutes.
