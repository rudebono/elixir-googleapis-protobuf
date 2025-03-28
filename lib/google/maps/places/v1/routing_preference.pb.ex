defmodule Google.Maps.Places.V1.RoutingPreference do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ROUTING_PREFERENCE_UNSPECIFIED, 0
  field :TRAFFIC_UNAWARE, 1
  field :TRAFFIC_AWARE, 2
  field :TRAFFIC_AWARE_OPTIMAL, 3
end
