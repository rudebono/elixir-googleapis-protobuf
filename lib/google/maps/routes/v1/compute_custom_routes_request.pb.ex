defmodule Google.Maps.Routes.V1.ComputeCustomRoutesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :value, 1, type: :double, deprecated: false
end

defmodule Google.Maps.Routes.V1.RouteObjective.RateCard do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

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

defmodule Google.Maps.Routes.V1.RouteObjective.CustomLayer.DatasetInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :dataset_id, 1, type: :string, json_name: "datasetId", deprecated: true
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
end

defmodule Google.Maps.Routes.V1.RouteObjective.CustomLayer do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :dataset_info, 1,
    type: Google.Maps.Routes.V1.RouteObjective.CustomLayer.DatasetInfo,
    json_name: "datasetInfo",
    deprecated: false
end

defmodule Google.Maps.Routes.V1.RouteObjective do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :objective, 0

  field :rate_card, 1,
    type: Google.Maps.Routes.V1.RouteObjective.RateCard,
    json_name: "rateCard",
    oneof: 0

  field :custom_layer, 2,
    type: Google.Maps.Routes.V1.RouteObjective.CustomLayer,
    json_name: "customLayer",
    deprecated: false
end
