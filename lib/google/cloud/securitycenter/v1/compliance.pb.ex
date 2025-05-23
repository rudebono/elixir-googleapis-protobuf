defmodule Google.Cloud.Securitycenter.V1.Compliance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :standard, 1, type: :string
  field :version, 2, type: :string
  field :ids, 3, repeated: true, type: :string
end
