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

  defstruct [:origins, :destinations, :travel_mode, :routing_preference, :departure_time]

  field :origins, 1, repeated: true, type: Google.Maps.Routes.V1.RouteMatrixOrigin
  field :destinations, 2, repeated: true, type: Google.Maps.Routes.V1.RouteMatrixDestination
  field :travel_mode, 3, type: Google.Maps.Routes.V1.RouteTravelMode, enum: true
  field :routing_preference, 4, type: Google.Maps.Routes.V1.RoutingPreference, enum: true
  field :departure_time, 5, type: Google.Protobuf.Timestamp
end

defmodule Google.Maps.Routes.V1.RouteMatrixOrigin do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          waypoint: Google.Maps.Routes.V1.Waypoint.t() | nil,
          route_modifiers: Google.Maps.Routes.V1.RouteModifiers.t() | nil
        }

  defstruct [:waypoint, :route_modifiers]

  field :waypoint, 1, type: Google.Maps.Routes.V1.Waypoint
  field :route_modifiers, 2, type: Google.Maps.Routes.V1.RouteModifiers
end

defmodule Google.Maps.Routes.V1.RouteMatrixDestination do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          waypoint: Google.Maps.Routes.V1.Waypoint.t() | nil
        }

  defstruct [:waypoint]

  field :waypoint, 1, type: Google.Maps.Routes.V1.Waypoint
end
