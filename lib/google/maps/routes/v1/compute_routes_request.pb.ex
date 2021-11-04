defmodule Google.Maps.Routes.V1.RouteTravelMode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :TRAVEL_MODE_UNSPECIFIED | :DRIVE | :BICYCLE | :WALK | :TWO_WHEELER | :TAXI

  field :TRAVEL_MODE_UNSPECIFIED, 0
  field :DRIVE, 1
  field :BICYCLE, 2
  field :WALK, 3
  field :TWO_WHEELER, 4
  field :TAXI, 5
end

defmodule Google.Maps.Routes.V1.RoutingPreference do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :ROUTING_PREFERENCE_UNSPECIFIED
          | :TRAFFIC_UNAWARE
          | :TRAFFIC_AWARE
          | :TRAFFIC_AWARE_OPTIMAL

  field :ROUTING_PREFERENCE_UNSPECIFIED, 0
  field :TRAFFIC_UNAWARE, 1
  field :TRAFFIC_AWARE, 2
  field :TRAFFIC_AWARE_OPTIMAL, 3
end

defmodule Google.Maps.Routes.V1.Units do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNITS_UNSPECIFIED | :METRIC | :IMPERIAL

  field :UNITS_UNSPECIFIED, 0
  field :METRIC, 1
  field :IMPERIAL, 2
end

defmodule Google.Maps.Routes.V1.ComputeRoutesRequest do
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
          compute_alternative_routes: boolean,
          route_modifiers: Google.Maps.Routes.V1.RouteModifiers.t() | nil,
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
    :compute_alternative_routes,
    :route_modifiers,
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

  field :polyline_encoding, 12,
    type: Google.Maps.Routes.V1.PolylineEncoding,
    enum: true,
    json_name: "polylineEncoding"

  field :departure_time, 7, type: Google.Protobuf.Timestamp, json_name: "departureTime"
  field :compute_alternative_routes, 8, type: :bool, json_name: "computeAlternativeRoutes"

  field :route_modifiers, 9,
    type: Google.Maps.Routes.V1.RouteModifiers,
    json_name: "routeModifiers"

  field :language_code, 10, type: :string, json_name: "languageCode"
  field :units, 11, type: Google.Maps.Routes.V1.Units, enum: true

  def transform_module(), do: nil
end

defmodule Google.Maps.Routes.V1.RouteModifiers do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          avoid_tolls: boolean,
          avoid_highways: boolean,
          avoid_ferries: boolean,
          avoid_indoor: boolean,
          vehicle_info: Google.Maps.Routes.V1.VehicleInfo.t() | nil,
          toll_passes: [Google.Maps.Routes.V1.TollPass.t()]
        }

  defstruct [
    :avoid_tolls,
    :avoid_highways,
    :avoid_ferries,
    :avoid_indoor,
    :vehicle_info,
    :toll_passes
  ]

  field :avoid_tolls, 1, type: :bool, json_name: "avoidTolls"
  field :avoid_highways, 2, type: :bool, json_name: "avoidHighways"
  field :avoid_ferries, 3, type: :bool, json_name: "avoidFerries"
  field :avoid_indoor, 4, type: :bool, json_name: "avoidIndoor"
  field :vehicle_info, 5, type: Google.Maps.Routes.V1.VehicleInfo, json_name: "vehicleInfo"

  field :toll_passes, 6,
    repeated: true,
    type: Google.Maps.Routes.V1.TollPass,
    enum: true,
    json_name: "tollPasses"

  def transform_module(), do: nil
end

defmodule Google.Maps.Routes.V1.VehicleInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          license_plate_last_character: String.t(),
          emission_type: Google.Maps.Routes.V1.VehicleEmissionType.t()
        }

  defstruct [:license_plate_last_character, :emission_type]

  field :license_plate_last_character, 1, type: :string, json_name: "licensePlateLastCharacter"

  field :emission_type, 2,
    type: Google.Maps.Routes.V1.VehicleEmissionType,
    enum: true,
    json_name: "emissionType"

  def transform_module(), do: nil
end
