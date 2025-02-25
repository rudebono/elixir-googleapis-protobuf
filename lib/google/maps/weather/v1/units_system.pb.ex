defmodule Google.Maps.Weather.V1.UnitsSystem do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNITS_SYSTEM_UNSPECIFIED, 0
  field :IMPERIAL, 1
  field :METRIC, 2
end
