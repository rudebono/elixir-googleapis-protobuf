defmodule Google.Maps.Routes.V1.ComputeCustomRoutesResponse.FallbackInfo.FallbackRouteObjective do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :FALLBACK_ROUTE_OBJECTIVE_UNSPECIFIED
          | :FALLBACK_RATECARD_WITHOUT_TOLL_PRICE_DATA

  field :FALLBACK_ROUTE_OBJECTIVE_UNSPECIFIED, 0
  field :FALLBACK_RATECARD_WITHOUT_TOLL_PRICE_DATA, 1
end
defmodule Google.Maps.Routes.V1.ComputeCustomRoutesResponse.FallbackInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          routing_mode: Google.Maps.Routes.V1.FallbackRoutingMode.t(),
          routing_mode_reason: Google.Maps.Routes.V1.FallbackReason.t(),
          route_objective:
            Google.Maps.Routes.V1.ComputeCustomRoutesResponse.FallbackInfo.FallbackRouteObjective.t()
        }

  defstruct routing_mode: :FALLBACK_ROUTING_MODE_UNSPECIFIED,
            routing_mode_reason: :FALLBACK_REASON_UNSPECIFIED,
            route_objective: :FALLBACK_ROUTE_OBJECTIVE_UNSPECIFIED

  field :routing_mode, 1,
    type: Google.Maps.Routes.V1.FallbackRoutingMode,
    json_name: "routingMode",
    enum: true

  field :routing_mode_reason, 2,
    type: Google.Maps.Routes.V1.FallbackReason,
    json_name: "routingModeReason",
    enum: true

  field :route_objective, 3,
    type: Google.Maps.Routes.V1.ComputeCustomRoutesResponse.FallbackInfo.FallbackRouteObjective,
    json_name: "routeObjective",
    enum: true
end
defmodule Google.Maps.Routes.V1.ComputeCustomRoutesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          routes: [Google.Maps.Routes.V1.CustomRoute.t()],
          fastest_route: Google.Maps.Routes.V1.CustomRoute.t() | nil,
          shortest_route: Google.Maps.Routes.V1.CustomRoute.t() | nil,
          fallback_info: Google.Maps.Routes.V1.ComputeCustomRoutesResponse.FallbackInfo.t() | nil
        }

  defstruct routes: [],
            fastest_route: nil,
            shortest_route: nil,
            fallback_info: nil

  field :routes, 7, repeated: true, type: Google.Maps.Routes.V1.CustomRoute
  field :fastest_route, 5, type: Google.Maps.Routes.V1.CustomRoute, json_name: "fastestRoute"
  field :shortest_route, 6, type: Google.Maps.Routes.V1.CustomRoute, json_name: "shortestRoute"

  field :fallback_info, 8,
    type: Google.Maps.Routes.V1.ComputeCustomRoutesResponse.FallbackInfo,
    json_name: "fallbackInfo"
end
