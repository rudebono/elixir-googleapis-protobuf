defmodule Google.Maps.Places.V1.RouteModifiers do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :avoid_tolls, 1, type: :bool, json_name: "avoidTolls", deprecated: false
  field :avoid_highways, 2, type: :bool, json_name: "avoidHighways", deprecated: false
  field :avoid_ferries, 3, type: :bool, json_name: "avoidFerries", deprecated: false
  field :avoid_indoor, 4, type: :bool, json_name: "avoidIndoor", deprecated: false
end
