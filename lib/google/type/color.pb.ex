defmodule Google.Type.Color do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :red, 1, type: :float
  field :green, 2, type: :float
  field :blue, 3, type: :float
  field :alpha, 4, type: Google.Protobuf.FloatValue
end
