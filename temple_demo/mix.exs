defmodule ElixirTools.MixProject do
  use Mix.Project

  def project do
    [
      app: :temple_demo,
      version: "0.1.0",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      compilers: [:temple] ++ Mix.compilers(),
      aliases: aliases()
    ]
  end

  def application do
    [
      extra_applications: [:telemetry, :logger]
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
      {:floki, "~> 0.34"},
      {:temple, "~> 0.12"},
      {:tailwind, "~> 0.2", runtime: Mix.env() == :dev}
    ]
  end
end
