defmodule Kursor.MixProject do
  use Mix.Project

  def project do
    [
      app: :kursor,
      version: "0.1.0",
      elixir: "~> 1.8",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      package: package(),
      name: "Kursor",
      source_url: "https://github.com/exkursor/kursor",
      docs: [
        main: "Kursor",
        # logo: "path/to/logo.png",
        extras: ["README.md"]
      ]
    ]
  end

  defp description() do
    "Simple and modular cursor based pagination for your own needs."
  end

  defp package() do
    [
      name: "kursor",
      files: ~w(lib .formatter.exs mix.exs README* LICENSE*),
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/exkursor/kursor"}
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:credo, "~> 1.0.0", only: [:dev, :test], runtime: false},
      {:ex_doc, "~> 0.19", only: :dev, runtime: false},
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end
