defmodule Google.Maps.Routing.V2.RouteMatrixElementCondition do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ROUTE_MATRIX_ELEMENT_CONDITION_UNSPECIFIED, 0
  field :ROUTE_EXISTS, 1
  field :ROUTE_NOT_FOUND, 2
end

defmodule Google.Maps.Routing.V2.ComputeRoutesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :origin, 1, type: Google.Maps.Routing.V2.Waypoint, deprecated: false
  field :destination, 2, type: Google.Maps.Routing.V2.Waypoint, deprecated: false

  field :intermediates, 3,
    repeated: true,
    type: Google.Maps.Routing.V2.Waypoint,
    deprecated: false

  field :travel_mode, 4,
    type: Google.Maps.Routing.V2.RouteTravelMode,
    json_name: "travelMode",
    enum: true,
    deprecated: false

  field :routing_preference, 5,
    type: Google.Maps.Routing.V2.RoutingPreference,
    json_name: "routingPreference",
    enum: true,
    deprecated: false

  field :polyline_quality, 6,
    type: Google.Maps.Routing.V2.PolylineQuality,
    json_name: "polylineQuality",
    enum: true,
    deprecated: false

  field :polyline_encoding, 12,
    type: Google.Maps.Routing.V2.PolylineEncoding,
    json_name: "polylineEncoding",
    enum: true,
    deprecated: false

  field :departure_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "departureTime",
    deprecated: false

  field :compute_alternative_routes, 8,
    type: :bool,
    json_name: "computeAlternativeRoutes",
    deprecated: false

  field :route_modifiers, 9,
    type: Google.Maps.Routing.V2.RouteModifiers,
    json_name: "routeModifiers",
    deprecated: false

  field :language_code, 10, type: :string, json_name: "languageCode", deprecated: false
  field :units, 11, type: Google.Maps.Routing.V2.Units, enum: true, deprecated: false
end

defmodule Google.Maps.Routing.V2.ComputeRoutesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :routes, 1, repeated: true, type: Google.Maps.Routing.V2.Route
  field :fallback_info, 2, type: Google.Maps.Routing.V2.FallbackInfo, json_name: "fallbackInfo"
end

defmodule Google.Maps.Routing.V2.ComputeRouteMatrixRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :origins, 1,
    repeated: true,
    type: Google.Maps.Routing.V2.RouteMatrixOrigin,
    deprecated: false

  field :destinations, 2,
    repeated: true,
    type: Google.Maps.Routing.V2.RouteMatrixDestination,
    deprecated: false

  field :travel_mode, 3,
    type: Google.Maps.Routing.V2.RouteTravelMode,
    json_name: "travelMode",
    enum: true,
    deprecated: false

  field :routing_preference, 4,
    type: Google.Maps.Routing.V2.RoutingPreference,
    json_name: "routingPreference",
    enum: true,
    deprecated: false

  field :departure_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "departureTime",
    deprecated: false
end

defmodule Google.Maps.Routing.V2.RouteMatrixOrigin do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :waypoint, 1, type: Google.Maps.Routing.V2.Waypoint, deprecated: false

  field :route_modifiers, 2,
    type: Google.Maps.Routing.V2.RouteModifiers,
    json_name: "routeModifiers",
    deprecated: false
end

defmodule Google.Maps.Routing.V2.RouteMatrixDestination do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :waypoint, 1, type: Google.Maps.Routing.V2.Waypoint, deprecated: false
end

defmodule Google.Maps.Routing.V2.RouteMatrixElement do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :origin_index, 1, proto3_optional: true, type: :int32, json_name: "originIndex"
  field :destination_index, 2, proto3_optional: true, type: :int32, json_name: "destinationIndex"
  field :status, 3, type: Google.Rpc.Status
  field :condition, 9, type: Google.Maps.Routing.V2.RouteMatrixElementCondition, enum: true
  field :distance_meters, 4, type: :int32, json_name: "distanceMeters"
  field :duration, 5, type: Google.Protobuf.Duration
  field :static_duration, 6, type: Google.Protobuf.Duration, json_name: "staticDuration"

  field :travel_advisory, 7,
    type: Google.Maps.Routing.V2.RouteTravelAdvisory,
    json_name: "travelAdvisory"

  field :fallback_info, 8, type: Google.Maps.Routing.V2.FallbackInfo, json_name: "fallbackInfo"
end

defmodule Google.Maps.Routing.V2.Routes.Service do
  @moduledoc false
  use GRPC.Service, name: "google.maps.routing.v2.Routes", protoc_gen_elixir_version: "0.11.0"

  rpc :ComputeRoutes,
      Google.Maps.Routing.V2.ComputeRoutesRequest,
      Google.Maps.Routing.V2.ComputeRoutesResponse

  rpc :ComputeRouteMatrix,
      Google.Maps.Routing.V2.ComputeRouteMatrixRequest,
      stream(Google.Maps.Routing.V2.RouteMatrixElement)
end

defmodule Google.Maps.Routing.V2.Routes.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Maps.Routing.V2.Routes.Service
end