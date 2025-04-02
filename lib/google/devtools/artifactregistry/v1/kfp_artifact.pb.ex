defmodule Google.Devtools.Artifactregistry.V1.KfpArtifact do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :version, 2, type: :string
end
