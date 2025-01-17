defmodule Google.Maps.Routes.V1.ComputeRouteMatrixRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :origins, 1,
    repeated: true,
    type: Google.Maps.Routes.V1.RouteMatrixOrigin,
    deprecated: false

  field :destinations, 2,
    repeated: true,
    type: Google.Maps.Routes.V1.RouteMatrixDestination,
    deprecated: false

  field :travel_mode, 3,
    type: Google.Maps.Routes.V1.RouteTravelMode,
    json_name: "travelMode",
    enum: true,
    deprecated: false

  field :routing_preference, 4,
    type: Google.Maps.Routes.V1.RoutingPreference,
    json_name: "routingPreference",
    enum: true,
    deprecated: false

  field :departure_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "departureTime",
    deprecated: false
end

defmodule Google.Maps.Routes.V1.RouteMatrixOrigin do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :waypoint, 1, type: Google.Maps.Routes.V1.Waypoint, deprecated: false

  field :route_modifiers, 2,
    type: Google.Maps.Routes.V1.RouteModifiers,
    json_name: "routeModifiers",
    deprecated: false
end

defmodule Google.Maps.Routes.V1.RouteMatrixDestination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :waypoint, 1, type: Google.Maps.Routes.V1.Waypoint, deprecated: false
end
