import Config

config :tableau, :config,
  url: "http://localhost:4999",
  markdown: [
    mdex: [
      extension: [table: true, header_ids: "", tasklist: true, strikethrough: true],
      render: [unsafe_: true],
      features: [syntax_highlight_theme: "kanagawa"]
    ]
  ]

config :tableau, :reloader,
  patterns: [
    ~r"lib/*.ex",
    ~r"(_posts|_docs)/.*.md",
    ~r"assets/*.(css|js)"
  ]

config :tailwind,
  version: "3.3.5",
  default: [
    args: ~w(
    --config=assets/tailwind.config.js
    --input=assets/css/app.css
    --output=_site/css/site.css
    )
  ]

config :tableau, :assets, tailwind: {Tailwind, :install_and_run, [:default, ~w(--watch)]}

config :tableau, Tableau.DataExtension, enabled: true
config :tableau, Tableau.PageExtension, enabled: true
config :tableau, Tableau.PostExtension, enabled: true, future: true
config :tableau, Tableau.SitemapExtension, enabled: true

config :tableau, Tableau.RSSExtension,
  enabled: true,
  title: "heex-demo",
  description: "Amazing HEEX!"

import_config "#{Mix.env()}.exs"
