defmodule Maps.Fleetengine.V1.TripType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNKNOWN_TRIP_TYPE | :SHARED | :EXCLUSIVE

  field :UNKNOWN_TRIP_TYPE, 0
  field :SHARED, 1
  field :EXCLUSIVE, 2
end

defmodule Maps.Fleetengine.V1.WaypointType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNKNOWN_WAYPOINT_TYPE
          | :PICKUP_WAYPOINT_TYPE
          | :DROP_OFF_WAYPOINT_TYPE
          | :INTERMEDIATE_DESTINATION_WAYPOINT_TYPE

  field :UNKNOWN_WAYPOINT_TYPE, 0
  field :PICKUP_WAYPOINT_TYPE, 1
  field :DROP_OFF_WAYPOINT_TYPE, 2
  field :INTERMEDIATE_DESTINATION_WAYPOINT_TYPE, 3
end

defmodule Maps.Fleetengine.V1.PolylineFormatType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNKNOWN_FORMAT_TYPE | :LAT_LNG_LIST_TYPE | :ENCODED_POLYLINE_TYPE

  field :UNKNOWN_FORMAT_TYPE, 0
  field :LAT_LNG_LIST_TYPE, 1
  field :ENCODED_POLYLINE_TYPE, 2
end

defmodule Maps.Fleetengine.V1.NavigationStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNKNOWN_NAVIGATION_STATUS
          | :NO_GUIDANCE
          | :ENROUTE_TO_DESTINATION
          | :OFF_ROUTE
          | :ARRIVED_AT_DESTINATION

  field :UNKNOWN_NAVIGATION_STATUS, 0
  field :NO_GUIDANCE, 1
  field :ENROUTE_TO_DESTINATION, 2
  field :OFF_ROUTE, 3
  field :ARRIVED_AT_DESTINATION, 4
end

defmodule Maps.Fleetengine.V1.LocationSensor do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNKNOWN_SENSOR
          | :GPS
          | :NETWORK
          | :PASSIVE
          | :ROAD_SNAPPED_LOCATION_PROVIDER
          | :FUSED_LOCATION_PROVIDER

  field :UNKNOWN_SENSOR, 0
  field :GPS, 1
  field :NETWORK, 2
  field :PASSIVE, 3
  field :ROAD_SNAPPED_LOCATION_PROVIDER, 4
  field :FUSED_LOCATION_PROVIDER, 100
end

defmodule Maps.Fleetengine.V1.Status.Code do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :FAILURE | :ROUTE_NOT_POSSIBLE

  field :UNSPECIFIED, 0
  field :FAILURE, 1
  field :ROUTE_NOT_POSSIBLE, 2
end

defmodule Maps.Fleetengine.V1.TerminalPointId do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          Id: {:place_id, String.t()} | {:generated_id, String.t()},
          value: String.t()
        }

  defstruct [:Id, :value]

  oneof :Id, 0

  field :place_id, 2, type: :string, deprecated: true, json_name: "placeId", oneof: 0
  field :generated_id, 3, type: :string, deprecated: true, json_name: "generatedId", oneof: 0
  field :value, 4, type: :string

  def transform_module(), do: nil
end

defmodule Maps.Fleetengine.V1.TerminalLocation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          point: Google.Type.LatLng.t() | nil,
          terminal_point_id: Maps.Fleetengine.V1.TerminalPointId.t() | nil,
          access_point_id: String.t(),
          trip_id: String.t(),
          terminal_location_type: Maps.Fleetengine.V1.WaypointType.t()
        }

  defstruct [:point, :terminal_point_id, :access_point_id, :trip_id, :terminal_location_type]

  field :point, 1, type: Google.Type.LatLng

  field :terminal_point_id, 2,
    type: Maps.Fleetengine.V1.TerminalPointId,
    json_name: "terminalPointId"

  field :access_point_id, 3, type: :string, deprecated: true, json_name: "accessPointId"
  field :trip_id, 4, type: :string, deprecated: true, json_name: "tripId"

  field :terminal_location_type, 5,
    type: Maps.Fleetengine.V1.WaypointType,
    deprecated: true,
    enum: true,
    json_name: "terminalLocationType"

  def transform_module(), do: nil
end

defmodule Maps.Fleetengine.V1.TripWaypoint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          location: Maps.Fleetengine.V1.TerminalLocation.t() | nil,
          trip_id: String.t(),
          waypoint_type: Maps.Fleetengine.V1.WaypointType.t(),
          path_to_waypoint: [Google.Type.LatLng.t()],
          distance_meters: Google.Protobuf.Int32Value.t() | nil,
          eta: Google.Protobuf.Timestamp.t() | nil,
          duration: Google.Protobuf.Duration.t() | nil
        }

  defstruct [
    :location,
    :trip_id,
    :waypoint_type,
    :path_to_waypoint,
    :distance_meters,
    :eta,
    :duration
  ]

  field :location, 1, type: Maps.Fleetengine.V1.TerminalLocation
  field :trip_id, 2, type: :string, json_name: "tripId"

  field :waypoint_type, 3,
    type: Maps.Fleetengine.V1.WaypointType,
    enum: true,
    json_name: "waypointType"

  field :path_to_waypoint, 4,
    repeated: true,
    type: Google.Type.LatLng,
    json_name: "pathToWaypoint"

  field :distance_meters, 6, type: Google.Protobuf.Int32Value, json_name: "distanceMeters"
  field :eta, 7, type: Google.Protobuf.Timestamp
  field :duration, 8, type: Google.Protobuf.Duration

  def transform_module(), do: nil
end

defmodule Maps.Fleetengine.V1.Status do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          code: Maps.Fleetengine.V1.Status.Code.t(),
          message: String.t(),
          details: [Google.Protobuf.Any.t()]
        }

  defstruct [:code, :message, :details]

  field :code, 1, type: Maps.Fleetengine.V1.Status.Code, enum: true
  field :message, 2, type: :string
  field :details, 3, repeated: true, type: Google.Protobuf.Any

  def transform_module(), do: nil
end

defmodule Maps.Fleetengine.V1.FormattedAddress do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          lines: [String.t()]
        }

  defstruct [:lines]

  field :lines, 1, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Maps.Fleetengine.V1.Address do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          formatted_address: Maps.Fleetengine.V1.FormattedAddress.t() | nil
        }

  defstruct [:formatted_address]

  field :formatted_address, 1,
    type: Maps.Fleetengine.V1.FormattedAddress,
    json_name: "formattedAddress"

  def transform_module(), do: nil
end

defmodule Maps.Fleetengine.V1.VehicleAttribute do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Maps.Fleetengine.V1.VehicleLocation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          location: Google.Type.LatLng.t() | nil,
          horizontal_accuracy: Google.Protobuf.DoubleValue.t() | nil,
          latlng_accuracy: Google.Protobuf.DoubleValue.t() | nil,
          heading: Google.Protobuf.Int32Value.t() | nil,
          bearing_accuracy: Google.Protobuf.DoubleValue.t() | nil,
          heading_accuracy: Google.Protobuf.DoubleValue.t() | nil,
          altitude: Google.Protobuf.DoubleValue.t() | nil,
          vertical_accuracy: Google.Protobuf.DoubleValue.t() | nil,
          altitude_accuracy: Google.Protobuf.DoubleValue.t() | nil,
          speed_kmph: Google.Protobuf.Int32Value.t() | nil,
          speed: Google.Protobuf.DoubleValue.t() | nil,
          speed_accuracy: Google.Protobuf.DoubleValue.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          server_time: Google.Protobuf.Timestamp.t() | nil,
          location_sensor: Maps.Fleetengine.V1.LocationSensor.t(),
          is_road_snapped: Google.Protobuf.BoolValue.t() | nil,
          is_gps_sensor_enabled: Google.Protobuf.BoolValue.t() | nil,
          time_since_update: Google.Protobuf.Int32Value.t() | nil,
          num_stale_updates: Google.Protobuf.Int32Value.t() | nil,
          raw_location: Google.Type.LatLng.t() | nil,
          raw_location_time: Google.Protobuf.Timestamp.t() | nil,
          raw_location_sensor: Maps.Fleetengine.V1.LocationSensor.t(),
          raw_location_accuracy: Google.Protobuf.DoubleValue.t() | nil,
          supplemental_location: Google.Type.LatLng.t() | nil,
          supplemental_location_time: Google.Protobuf.Timestamp.t() | nil,
          supplemental_location_sensor: Maps.Fleetengine.V1.LocationSensor.t(),
          supplemental_location_accuracy: Google.Protobuf.DoubleValue.t() | nil,
          road_snapped: boolean
        }

  defstruct [
    :location,
    :horizontal_accuracy,
    :latlng_accuracy,
    :heading,
    :bearing_accuracy,
    :heading_accuracy,
    :altitude,
    :vertical_accuracy,
    :altitude_accuracy,
    :speed_kmph,
    :speed,
    :speed_accuracy,
    :update_time,
    :server_time,
    :location_sensor,
    :is_road_snapped,
    :is_gps_sensor_enabled,
    :time_since_update,
    :num_stale_updates,
    :raw_location,
    :raw_location_time,
    :raw_location_sensor,
    :raw_location_accuracy,
    :supplemental_location,
    :supplemental_location_time,
    :supplemental_location_sensor,
    :supplemental_location_accuracy,
    :road_snapped
  ]

  field :location, 1, type: Google.Type.LatLng

  field :horizontal_accuracy, 8,
    type: Google.Protobuf.DoubleValue,
    deprecated: true,
    json_name: "horizontalAccuracy"

  field :latlng_accuracy, 22, type: Google.Protobuf.DoubleValue, json_name: "latlngAccuracy"
  field :heading, 2, type: Google.Protobuf.Int32Value

  field :bearing_accuracy, 10,
    type: Google.Protobuf.DoubleValue,
    deprecated: true,
    json_name: "bearingAccuracy"

  field :heading_accuracy, 23, type: Google.Protobuf.DoubleValue, json_name: "headingAccuracy"
  field :altitude, 5, type: Google.Protobuf.DoubleValue

  field :vertical_accuracy, 9,
    type: Google.Protobuf.DoubleValue,
    deprecated: true,
    json_name: "verticalAccuracy"

  field :altitude_accuracy, 24, type: Google.Protobuf.DoubleValue, json_name: "altitudeAccuracy"
  field :speed_kmph, 3, type: Google.Protobuf.Int32Value, deprecated: true, json_name: "speedKmph"
  field :speed, 6, type: Google.Protobuf.DoubleValue
  field :speed_accuracy, 7, type: Google.Protobuf.DoubleValue, json_name: "speedAccuracy"
  field :update_time, 4, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :server_time, 13, type: Google.Protobuf.Timestamp, json_name: "serverTime"

  field :location_sensor, 11,
    type: Maps.Fleetengine.V1.LocationSensor,
    enum: true,
    json_name: "locationSensor"

  field :is_road_snapped, 27, type: Google.Protobuf.BoolValue, json_name: "isRoadSnapped"

  field :is_gps_sensor_enabled, 12,
    type: Google.Protobuf.BoolValue,
    json_name: "isGpsSensorEnabled"

  field :time_since_update, 14, type: Google.Protobuf.Int32Value, json_name: "timeSinceUpdate"
  field :num_stale_updates, 15, type: Google.Protobuf.Int32Value, json_name: "numStaleUpdates"
  field :raw_location, 16, type: Google.Type.LatLng, json_name: "rawLocation"
  field :raw_location_time, 17, type: Google.Protobuf.Timestamp, json_name: "rawLocationTime"

  field :raw_location_sensor, 28,
    type: Maps.Fleetengine.V1.LocationSensor,
    enum: true,
    json_name: "rawLocationSensor"

  field :raw_location_accuracy, 25,
    type: Google.Protobuf.DoubleValue,
    json_name: "rawLocationAccuracy"

  field :supplemental_location, 18, type: Google.Type.LatLng, json_name: "supplementalLocation"

  field :supplemental_location_time, 19,
    type: Google.Protobuf.Timestamp,
    json_name: "supplementalLocationTime"

  field :supplemental_location_sensor, 20,
    type: Maps.Fleetengine.V1.LocationSensor,
    enum: true,
    json_name: "supplementalLocationSensor"

  field :supplemental_location_accuracy, 21,
    type: Google.Protobuf.DoubleValue,
    json_name: "supplementalLocationAccuracy"

  field :road_snapped, 26, type: :bool, deprecated: true, json_name: "roadSnapped"

  def transform_module(), do: nil
end
