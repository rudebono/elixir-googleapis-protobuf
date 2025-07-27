defmodule Google.Maps.Routing.V2.RouteLabel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ROUTE_LABEL_UNSPECIFIED, 0
  field :DEFAULT_ROUTE, 1
  field :DEFAULT_ROUTE_ALTERNATE, 2
  field :FUEL_EFFICIENT, 3
  field :SHORTER_DISTANCE, 4
end
