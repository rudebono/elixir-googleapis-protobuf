defmodule Google.Maps.Routes.V1.RouteTravelMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :TRAVEL_MODE_UNSPECIFIED, 0
  field :DRIVE, 1
  field :BICYCLE, 2
  field :WALK, 3
  field :TWO_WHEELER, 4
  field :TAXI, 5
end

defmodule Google.Maps.Routes.V1.RoutingPreference do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :ROUTING_PREFERENCE_UNSPECIFIED, 0
  field :TRAFFIC_UNAWARE, 1
  field :TRAFFIC_AWARE, 2
  field :TRAFFIC_AWARE_OPTIMAL, 3
end

defmodule Google.Maps.Routes.V1.Units do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :UNITS_UNSPECIFIED, 0
  field :METRIC, 1
  field :IMPERIAL, 2
end

defmodule Google.Maps.Routes.V1.ComputeRoutesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :origin, 1, type: Google.Maps.Routes.V1.Waypoint
  field :destination, 2, type: Google.Maps.Routes.V1.Waypoint
  field :intermediates, 3, repeated: true, type: Google.Maps.Routes.V1.Waypoint

  field :travel_mode, 4,
    type: Google.Maps.Routes.V1.RouteTravelMode,
    json_name: "travelMode",
    enum: true

  field :routing_preference, 5,
    type: Google.Maps.Routes.V1.RoutingPreference,
    json_name: "routingPreference",
    enum: true

  field :polyline_quality, 6,
    type: Google.Maps.Routes.V1.PolylineQuality,
    json_name: "polylineQuality",
    enum: true

  field :polyline_encoding, 12,
    type: Google.Maps.Routes.V1.PolylineEncoding,
    json_name: "polylineEncoding",
    enum: true

  field :departure_time, 7, type: Google.Protobuf.Timestamp, json_name: "departureTime"
  field :compute_alternative_routes, 8, type: :bool, json_name: "computeAlternativeRoutes"

  field :route_modifiers, 9,
    type: Google.Maps.Routes.V1.RouteModifiers,
    json_name: "routeModifiers"

  field :language_code, 10, type: :string, json_name: "languageCode"
  field :units, 11, type: Google.Maps.Routes.V1.Units, enum: true
  field :optimize_waypoint_order, 13, type: :bool, json_name: "optimizeWaypointOrder"
end

defmodule Google.Maps.Routes.V1.RouteModifiers do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :avoid_tolls, 1, type: :bool, json_name: "avoidTolls"
  field :avoid_highways, 2, type: :bool, json_name: "avoidHighways"
  field :avoid_ferries, 3, type: :bool, json_name: "avoidFerries"
  field :avoid_indoor, 4, type: :bool, json_name: "avoidIndoor"
  field :vehicle_info, 5, type: Google.Maps.Routes.V1.VehicleInfo, json_name: "vehicleInfo"

  field :toll_passes, 6,
    repeated: true,
    type: Google.Maps.Routes.V1.TollPass,
    json_name: "tollPasses",
    enum: true
end

defmodule Google.Maps.Routes.V1.VehicleInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :license_plate_last_character, 1, type: :string, json_name: "licensePlateLastCharacter"

  field :emission_type, 2,
    type: Google.Maps.Routes.V1.VehicleEmissionType,
    json_name: "emissionType",
    enum: true
end
