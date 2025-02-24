defmodule Google.Type.Quaternion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :x, 1, type: :double
  field :y, 2, type: :double
  field :z, 3, type: :double
  field :w, 4, type: :double
end
