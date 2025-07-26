defmodule Google.Maps.Routing.V2.Units do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNITS_UNSPECIFIED, 0
  field :METRIC, 1
  field :IMPERIAL, 2
end
