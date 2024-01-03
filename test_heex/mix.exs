defmodule TableauDemoHeex.MixProject do
  use Mix.Project

  def project do
    [
      app: :heex_demo,
      version: "0.1.0",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      aliases: aliases(),
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  def aliases() do
    [
      build: ["tableau.build", "tailwind default --minify", "deploy"],
      serve: ["tableau.server"]
    ]
  end

  defp deps do
    [
      {:tableau, "~> 0.12"},
      {:phoenix_live_view, "~> 0.20"},
      {:floki, "~> 0.34"},
      {:tailwind, "~> 0.2", runtime: Mix.env() == :dev}
    ]
  end
end
