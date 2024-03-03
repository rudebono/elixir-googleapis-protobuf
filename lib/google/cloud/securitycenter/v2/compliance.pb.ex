defmodule Google.Cloud.Securitycenter.V2.Compliance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :standard, 1, type: :string
  field :version, 2, type: :string
  field :ids, 3, repeated: true, type: :string
end