defmodule Google.Maps.Routes.V1.ComputeCustomRoutesResponse.FallbackInfo.FallbackRouteObjective do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :FALLBACK_ROUTE_OBJECTIVE_UNSPECIFIED, 0
  field :FALLBACK_RATECARD_WITHOUT_TOLL_PRICE_DATA, 1
end

defmodule Google.Maps.Routes.V1.ComputeCustomRoutesResponse.FallbackInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :routes, 7, repeated: true, type: Google.Maps.Routes.V1.CustomRoute
  field :fastest_route, 5, type: Google.Maps.Routes.V1.CustomRoute, json_name: "fastestRoute"
  field :shortest_route, 6, type: Google.Maps.Routes.V1.CustomRoute, json_name: "shortestRoute"

  field :fallback_info, 8,
    type: Google.Maps.Routes.V1.ComputeCustomRoutesResponse.FallbackInfo,
    json_name: "fallbackInfo"
end