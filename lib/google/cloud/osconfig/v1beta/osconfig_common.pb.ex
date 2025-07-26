defmodule Google.Cloud.Osconfig.V1beta.FixedOrPercent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :mode, 0

  field :fixed, 1, type: :int32, oneof: 0
  field :percent, 2, type: :int32, oneof: 0
end
