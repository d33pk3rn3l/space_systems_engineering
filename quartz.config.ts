import { QuartzConfig } from "./quartz/cfg"
import * as Plugin from "./quartz/plugins"

/**
 * Quartz 4.0 Configuration
 *
 * See https://quartz.jzhao.xyz/configuration for more information.
 */
const config: QuartzConfig = {
  configuration: {
    pageTitle: "🧑‍🚀 Space Systems",
    pageTitleSuffix: " | Space Systems",
    enableSPA: true,
    enablePopovers: true,
    analytics: {
      provider: "plausible",
    },
    locale: "en-US",
    baseUrl: "k3rn3l.me/space_systems_engineering",
    ignorePatterns: ["private", "templates", ".obsidian", "transcripts"],
    defaultDateType: "created",
    generateSocialImages: false,
    theme: {
      fontOrigin: "googleFonts",
      cdnCaching: true,
      typography: {
        header: "Monda Bold",
        body: "Monda",
        code: "IBM Plex Mono",
      },
      colors: {
        lightMode: {
          light: "rgb(255, 255, 255)",
          lightgray: "rgb(255, 120, 0)",
          gray: "rgba(0, 0, 0, 0.39)",
          darkgray: "rgb(0, 0, 0)",
          dark: "rgb(255, 120, 0)",
          secondary: "rgb(255, 120, 0)",
          tertiary: "rgb(255, 120, 0)",
          highlight: "rgba(255, 120, 0, 0.2)",
          textHighlight: "rgba(255, 120, 0, 0.5)",
        },
        darkMode: {
          light: "rgb(0, 0, 0)", // background
          lightgray: "rgba(255, 120, 0, 0.57)", // highlight search and backticks
          gray: "rgb(255, 120, 0)", // date
          darkgray: "rgb(255, 255, 255)", // text
          dark: "rgb(255, 120, 0)", // bold
          secondary: "rgb(255, 120, 0)", // links
          tertiary: "rgb(255, 120, 0)", 
          highlight: "rgba(255, 120, 0, 0.2)",
          textHighlight: "rgba(255, 120, 0, 0.5)",
        },
      },
    },
  },
  plugins: {
    transformers: [
      Plugin.FrontMatter(),
      Plugin.CreatedModifiedDate({
        priority: ["frontmatter", "filesystem"],
      }),
      Plugin.SyntaxHighlighting({
        theme: {
          light: "github-light",
          dark: "github-dark",
        },
        keepBackground: false,
      }),
      Plugin.ObsidianFlavoredMarkdown({ enableInHtmlEmbed: false }),
      Plugin.GitHubFlavoredMarkdown(),
      Plugin.TableOfContents(),
      Plugin.CrawlLinks({ markdownLinkResolution: "shortest" }),
      Plugin.Description(),
      Plugin.Latex({ renderEngine: "katex" }),
    ],
    filters: [Plugin.RemoveDrafts()],
    emitters: [
      Plugin.AliasRedirects(),
      Plugin.ComponentResources(),
      Plugin.ContentPage(),
      Plugin.FolderPage(),
      Plugin.TagPage(),
      Plugin.ContentIndex({
        enableSiteMap: true,
        enableRSS: true,
      }),
      Plugin.Assets(),
      Plugin.Static(),
      Plugin.NotFoundPage(),
    ],
  },
}

export default config
