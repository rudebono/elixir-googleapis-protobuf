defmodule Google.Maps.Routing.V2.RouteModifiers do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :avoid_tolls, 1, type: :bool, json_name: "avoidTolls"
  field :avoid_highways, 2, type: :bool, json_name: "avoidHighways"
  field :avoid_ferries, 3, type: :bool, json_name: "avoidFerries"
  field :avoid_indoor, 4, type: :bool, json_name: "avoidIndoor"
  field :vehicle_info, 5, type: Google.Maps.Routing.V2.VehicleInfo, json_name: "vehicleInfo"

  field :toll_passes, 6,
    repeated: true,
    type: Google.Maps.Routing.V2.TollPass,
    json_name: "tollPasses",
    enum: true
end
