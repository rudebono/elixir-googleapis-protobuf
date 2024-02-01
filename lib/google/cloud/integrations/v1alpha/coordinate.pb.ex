defmodule Google.Cloud.Integrations.V1alpha.Coordinate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :x, 1, type: :int32, deprecated: false
  field :y, 2, type: :int32, deprecated: false
end