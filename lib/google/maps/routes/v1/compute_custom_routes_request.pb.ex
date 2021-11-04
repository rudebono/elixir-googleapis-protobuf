defmodule Google.Maps.Routes.V1.ComputeCustomRoutesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          origin: Google.Maps.Routes.V1.Waypoint.t() | nil,
          destination: Google.Maps.Routes.V1.Waypoint.t() | nil,
          intermediates: [Google.Maps.Routes.V1.Waypoint.t()],
          travel_mode: Google.Maps.Routes.V1.RouteTravelMode.t(),
          routing_preference: Google.Maps.Routes.V1.RoutingPreference.t(),
          polyline_quality: Google.Maps.Routes.V1.PolylineQuality.t(),
          polyline_encoding: Google.Maps.Routes.V1.PolylineEncoding.t(),
          departure_time: Google.Protobuf.Timestamp.t() | nil,
          route_modifiers: Google.Maps.Routes.V1.RouteModifiers.t() | nil,
          route_objective: Google.Maps.Routes.V1.RouteObjective.t() | nil,
          language_code: String.t(),
          units: Google.Maps.Routes.V1.Units.t()
        }

  defstruct [
    :origin,
    :destination,
    :intermediates,
    :travel_mode,
    :routing_preference,
    :polyline_quality,
    :polyline_encoding,
    :departure_time,
    :route_modifiers,
    :route_objective,
    :language_code,
    :units
  ]

  field :origin, 1, type: Google.Maps.Routes.V1.Waypoint
  field :destination, 2, type: Google.Maps.Routes.V1.Waypoint
  field :intermediates, 3, repeated: true, type: Google.Maps.Routes.V1.Waypoint

  field :travel_mode, 4,
    type: Google.Maps.Routes.V1.RouteTravelMode,
    enum: true,
    json_name: "travelMode"

  field :routing_preference, 5,
    type: Google.Maps.Routes.V1.RoutingPreference,
    enum: true,
    json_name: "routingPreference"

  field :polyline_quality, 6,
    type: Google.Maps.Routes.V1.PolylineQuality,
    enum: true,
    json_name: "polylineQuality"

  field :polyline_encoding, 13,
    type: Google.Maps.Routes.V1.PolylineEncoding,
    enum: true,
    json_name: "polylineEncoding"

  field :departure_time, 7, type: Google.Protobuf.Timestamp, json_name: "departureTime"

  field :route_modifiers, 11,
    type: Google.Maps.Routes.V1.RouteModifiers,
    json_name: "routeModifiers"

  field :route_objective, 12,
    type: Google.Maps.Routes.V1.RouteObjective,
    json_name: "routeObjective"

  field :language_code, 9, type: :string, json_name: "languageCode"
  field :units, 10, type: Google.Maps.Routes.V1.Units, enum: true

  def transform_module(), do: nil
end

defmodule Google.Maps.Routes.V1.RouteObjective.RateCard.MonetaryCost do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:value]

  field :value, 1, type: :double

  def transform_module(), do: nil
end

defmodule Google.Maps.Routes.V1.RouteObjective.RateCard do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cost_per_minute: Google.Maps.Routes.V1.RouteObjective.RateCard.MonetaryCost.t() | nil,
          cost_per_km: Google.Maps.Routes.V1.RouteObjective.RateCard.MonetaryCost.t() | nil,
          include_tolls: boolean
        }

  defstruct [:cost_per_minute, :cost_per_km, :include_tolls]

  field :cost_per_minute, 2,
    type: Google.Maps.Routes.V1.RouteObjective.RateCard.MonetaryCost,
    json_name: "costPerMinute"

  field :cost_per_km, 3,
    type: Google.Maps.Routes.V1.RouteObjective.RateCard.MonetaryCost,
    json_name: "costPerKm"

  field :include_tolls, 4, type: :bool, json_name: "includeTolls"

  def transform_module(), do: nil
end

defmodule Google.Maps.Routes.V1.RouteObjective do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          objective: {:rate_card, Google.Maps.Routes.V1.RouteObjective.RateCard.t() | nil}
        }

  defstruct [:objective]

  oneof :objective, 0

  field :rate_card, 1,
    type: Google.Maps.Routes.V1.RouteObjective.RateCard,
    json_name: "rateCard",
    oneof: 0

  def transform_module(), do: nil
end
