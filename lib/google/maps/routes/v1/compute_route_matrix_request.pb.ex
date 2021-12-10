defmodule Google.Maps.Routes.V1.ComputeRouteMatrixRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          origins: [Google.Maps.Routes.V1.RouteMatrixOrigin.t()],
          destinations: [Google.Maps.Routes.V1.RouteMatrixDestination.t()],
          travel_mode: Google.Maps.Routes.V1.RouteTravelMode.t(),
          routing_preference: Google.Maps.Routes.V1.RoutingPreference.t(),
          departure_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct origins: [],
            destinations: [],
            travel_mode: :TRAVEL_MODE_UNSPECIFIED,
            routing_preference: :ROUTING_PREFERENCE_UNSPECIFIED,
            departure_time: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          waypoint: Google.Maps.Routes.V1.Waypoint.t() | nil,
          route_modifiers: Google.Maps.Routes.V1.RouteModifiers.t() | nil
        }

  defstruct waypoint: nil,
            route_modifiers: nil

  field :waypoint, 1, type: Google.Maps.Routes.V1.Waypoint, deprecated: false

  field :route_modifiers, 2,
    type: Google.Maps.Routes.V1.RouteModifiers,
    json_name: "routeModifiers",
    deprecated: false
end
defmodule Google.Maps.Routes.V1.RouteMatrixDestination do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          waypoint: Google.Maps.Routes.V1.Waypoint.t() | nil
        }

  defstruct waypoint: nil

  field :waypoint, 1, type: Google.Maps.Routes.V1.Waypoint, deprecated: false
end
