Of course. Here is the updated README with the copyright disclaimer included in the "How to Contribute" section.

-----

# Space Systems Engineering Notes

This repository contains the content for the [Space Systems Engineering](https://www.google.com/search?q=https://d33pk3rn3l.github.io/space_systems_engineering) digital garden, a summary of the lecture at ETH Zurich. The site is built with [Quartz](https://quartz.jzhao.xyz/) and automatically deployed to GitHub Pages via a GitHub Actions workflow in `.github/workflows/deploy.yml`.

## How to Contribute

1.  **Clone the repository.**
2.  **Edit content:** All content is in markdown files.
      * Main pages are in the `Concepts` and `Topics` directories.
      * Images and other assets go in the `attachments` directory.
      * [Obsidian](https://obsidian.md/) is recommended for automatically handling internal links.
3.  **Respect Copyright:** Ensure you have the right to use any images, text, or assets you add. Respect all copyright and licensing of original materials.
4.  **Push to `main`:** Changes pushed to the `main` branch will automatically trigger a build and deployment.

## Local Development

To preview changes locally before pushing:

1.  **Install dependencies**:
    ```bash
    npm install
    ```
2.  **Run the dev server**:
    ```bash
    npx quartz dev
    ```

## Configuration

The site's appearance and navigation are defined in `quartz.config.ts`. You can edit this file to change the site's structure and metadata.
