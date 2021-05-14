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

  defstruct [:routing_mode, :routing_mode_reason, :route_objective]

  field :routing_mode, 1, type: Google.Maps.Routes.V1.FallbackRoutingMode, enum: true
  field :routing_mode_reason, 2, type: Google.Maps.Routes.V1.FallbackReason, enum: true

  field :route_objective, 3,
    type: Google.Maps.Routes.V1.ComputeCustomRoutesResponse.FallbackInfo.FallbackRouteObjective,
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

  defstruct [:routes, :fastest_route, :shortest_route, :fallback_info]

  field :routes, 7, repeated: true, type: Google.Maps.Routes.V1.CustomRoute
  field :fastest_route, 5, type: Google.Maps.Routes.V1.CustomRoute
  field :shortest_route, 6, type: Google.Maps.Routes.V1.CustomRoute
  field :fallback_info, 8, type: Google.Maps.Routes.V1.ComputeCustomRoutesResponse.FallbackInfo
end
