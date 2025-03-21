defmodule Google.Cloud.Osconfig.V1alpha.FixedOrPercent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :mode, 0

  field :fixed, 1, type: :int32, oneof: 0
  field :percent, 2, type: :int32, oneof: 0
end
