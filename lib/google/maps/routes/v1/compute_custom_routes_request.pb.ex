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

  defstruct origin: nil,
            destination: nil,
            intermediates: [],
            travel_mode: :TRAVEL_MODE_UNSPECIFIED,
            routing_preference: :ROUTING_PREFERENCE_UNSPECIFIED,
            polyline_quality: :POLYLINE_QUALITY_UNSPECIFIED,
            polyline_encoding: :POLYLINE_ENCODING_UNSPECIFIED,
            departure_time: nil,
            route_modifiers: nil,
            route_objective: nil,
            language_code: "",
            units: :UNITS_UNSPECIFIED

  field :origin, 1, type: Google.Maps.Routes.V1.Waypoint, deprecated: false
  field :destination, 2, type: Google.Maps.Routes.V1.Waypoint, deprecated: false
  field :intermediates, 3, repeated: true, type: Google.Maps.Routes.V1.Waypoint, deprecated: false

  field :travel_mode, 4,
    type: Google.Maps.Routes.V1.RouteTravelMode,
    json_name: "travelMode",
    enum: true,
    deprecated: false

  field :routing_preference, 5,
    type: Google.Maps.Routes.V1.RoutingPreference,
    json_name: "routingPreference",
    enum: true,
    deprecated: false

  field :polyline_quality, 6,
    type: Google.Maps.Routes.V1.PolylineQuality,
    json_name: "polylineQuality",
    enum: true,
    deprecated: false

  field :polyline_encoding, 13,
    type: Google.Maps.Routes.V1.PolylineEncoding,
    json_name: "polylineEncoding",
    enum: true,
    deprecated: false

  field :departure_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "departureTime",
    deprecated: false

  field :route_modifiers, 11,
    type: Google.Maps.Routes.V1.RouteModifiers,
    json_name: "routeModifiers",
    deprecated: false

  field :route_objective, 12,
    type: Google.Maps.Routes.V1.RouteObjective,
    json_name: "routeObjective",
    deprecated: false

  field :language_code, 9, type: :string, json_name: "languageCode", deprecated: false
  field :units, 10, type: Google.Maps.Routes.V1.Units, enum: true, deprecated: false
end
defmodule Google.Maps.Routes.V1.RouteObjective.RateCard.MonetaryCost do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: float | :infinity | :negative_infinity | :nan
        }

  defstruct value: 0.0

  field :value, 1, type: :double, deprecated: false
end
defmodule Google.Maps.Routes.V1.RouteObjective.RateCard do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cost_per_minute: Google.Maps.Routes.V1.RouteObjective.RateCard.MonetaryCost.t() | nil,
          cost_per_km: Google.Maps.Routes.V1.RouteObjective.RateCard.MonetaryCost.t() | nil,
          include_tolls: boolean
        }

  defstruct cost_per_minute: nil,
            cost_per_km: nil,
            include_tolls: false

  field :cost_per_minute, 2,
    type: Google.Maps.Routes.V1.RouteObjective.RateCard.MonetaryCost,
    json_name: "costPerMinute",
    deprecated: false

  field :cost_per_km, 3,
    type: Google.Maps.Routes.V1.RouteObjective.RateCard.MonetaryCost,
    json_name: "costPerKm",
    deprecated: false

  field :include_tolls, 4, type: :bool, json_name: "includeTolls", deprecated: false
end
defmodule Google.Maps.Routes.V1.RouteObjective do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          objective: {:rate_card, Google.Maps.Routes.V1.RouteObjective.RateCard.t() | nil}
        }

  defstruct objective: nil

  oneof :objective, 0

  field :rate_card, 1,
    type: Google.Maps.Routes.V1.RouteObjective.RateCard,
    json_name: "rateCard",
    oneof: 0
end
