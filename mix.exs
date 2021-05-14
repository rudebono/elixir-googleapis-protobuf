defmodule ElixirGoogleapisProtobuf.MixProject do
  use Mix.Project

  def project() do
    [
      app: :elixir_googleapis_protobuf,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      name: "ElixirGoogleapisProtobuf",
      source_url: "https://github.com/rudebono/elixir-googleapis-protobuf",
      description: "AUTO GENERATED ELIXIR GOOGLEAPIS PROTOBUF",
      docs: docs()
    ]
  end

  def application() do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps() do
    [
      {:grpc, github: "elixir-grpc/grpc"},
      {:ex_doc, "~> 0.24.1", [only: :dev, runtime: false]}
    ]
  end

  defp package() do
    [
      {:licenses, ["MIT"]},
      {:maintainers, ["Hany Rock"]},
      {:links, %{"GitHub" => "https://github.com/rudebono/elixir-googleapis-protobuf"}}
    ]
  end

  defp docs() do
    [
      main: "readme",
      extras: ["README.md"]
    ]
  end
end
