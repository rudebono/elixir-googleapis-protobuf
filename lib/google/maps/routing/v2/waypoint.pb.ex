defmodule Google.Maps.Routing.V2.Waypoint do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :location_type, 0

  field :location, 1, type: Google.Maps.Routing.V2.Location, oneof: 0
  field :place_id, 2, type: :string, json_name: "placeId", oneof: 0
  field :via, 3, type: :bool
  field :vehicle_stopover, 4, type: :bool, json_name: "vehicleStopover"
  field :side_of_road, 5, type: :bool, json_name: "sideOfRoad"
end