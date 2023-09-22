defmodule Cozo.MixProject do
  use Mix.Project

  @version "0.1.0"
  @source_url "https://github.com/niamtokik/cozo"

  def project do
    [
      app: :cozo,
      version: @version,
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      compilers: [:elixir_make] ++ Mix.compilers(),
      make_executable: "make",
      make_targets: ["deps", "compile"],
      make_clean: ["clean"],
      description: description(),
      package: package()
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
      {:elixir_make, "~> 0.6", runtime: false}
    ]
  end

  defp description() do
    """
    Erlang NIF interface to CozoDB.
    """
  end

  defp package() do
    [
      maintainers: [],
      licenses: ["BSD-2-Clause"],
      links: %{"GitHub" => @source_url}
    ]
  end


end
