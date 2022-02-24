defmodule Example.MixProject do
  use Mix.Project

  def project do
    [
      app: :example,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps()
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
      {:ory_kratos,
       git: "https://github.com/tobbbles/sdk.git", ref: "master", subdir: "clients/kratos/elixir"},
      {:ory_hydra,
       git: "https://github.com/tobbbles/sdk.git", ref: "master", subdir: "clients/hydra/elixir"},
      {:ory_client,
       git: "https://github.com/tobbbles/sdk.git", ref: "master", subdir: "clients/client/elixir"},
      {:ory_keto,
       git: "https://github.com/tobbbles/sdk.git", ref: "master", subdir: "clients/keto/elixir"}
    ]
  end
end
