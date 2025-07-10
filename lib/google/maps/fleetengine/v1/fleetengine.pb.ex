defmodule Maps.Fleetengine.V1.TripType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNKNOWN_TRIP_TYPE, 0
  field :SHARED, 1
  field :EXCLUSIVE, 2
end

defmodule Maps.Fleetengine.V1.WaypointType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNKNOWN_WAYPOINT_TYPE, 0
  field :PICKUP_WAYPOINT_TYPE, 1
  field :DROP_OFF_WAYPOINT_TYPE, 2
  field :INTERMEDIATE_DESTINATION_WAYPOINT_TYPE, 3
end

defmodule Maps.Fleetengine.V1.PolylineFormatType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNKNOWN_FORMAT_TYPE, 0
  field :LAT_LNG_LIST_TYPE, 1
  field :ENCODED_POLYLINE_TYPE, 2
end

defmodule Maps.Fleetengine.V1.NavigationStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNKNOWN_NAVIGATION_STATUS, 0
  field :NO_GUIDANCE, 1
  field :ENROUTE_TO_DESTINATION, 2
  field :OFF_ROUTE, 3
  field :ARRIVED_AT_DESTINATION, 4
end

defmodule Maps.Fleetengine.V1.LocationSensor do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNKNOWN_SENSOR, 0
  field :GPS, 1
  field :NETWORK, 2
  field :PASSIVE, 3
  field :ROAD_SNAPPED_LOCATION_PROVIDER, 4
  field :CUSTOMER_SUPPLIED_LOCATION, 5
  field :FLEET_ENGINE_LOCATION, 6
  field :FUSED_LOCATION_PROVIDER, 100
  field :CORE_LOCATION, 200
end

defmodule Maps.Fleetengine.V1.TerminalPointId do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :Id, 0

  field :place_id, 2, type: :string, json_name: "placeId", oneof: 0, deprecated: true
  field :generated_id, 3, type: :string, json_name: "generatedId", oneof: 0, deprecated: true
  field :value, 4, type: :string, deprecated: true
end

defmodule Maps.Fleetengine.V1.TerminalLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :point, 1, type: Google.Type.LatLng, deprecated: false

  field :terminal_point_id, 2,
    type: Maps.Fleetengine.V1.TerminalPointId,
    json_name: "terminalPointId",
    deprecated: true

  field :access_point_id, 3, type: :string, json_name: "accessPointId", deprecated: true
  field :trip_id, 4, type: :string, json_name: "tripId", deprecated: true

  field :terminal_location_type, 5,
    type: Maps.Fleetengine.V1.WaypointType,
    json_name: "terminalLocationType",
    enum: true,
    deprecated: true
end

defmodule Maps.Fleetengine.V1.TripWaypoint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :location, 1, type: Maps.Fleetengine.V1.TerminalLocation
  field :trip_id, 2, type: :string, json_name: "tripId"

  field :waypoint_type, 3,
    type: Maps.Fleetengine.V1.WaypointType,
    json_name: "waypointType",
    enum: true

  field :path_to_waypoint, 4,
    repeated: true,
    type: Google.Type.LatLng,
    json_name: "pathToWaypoint"

  field :encoded_path_to_waypoint, 5, type: :string, json_name: "encodedPathToWaypoint"

  field :traffic_to_waypoint, 10,
    type: Maps.Fleetengine.V1.ConsumableTrafficPolyline,
    json_name: "trafficToWaypoint"

  field :distance_meters, 6, type: Google.Protobuf.Int32Value, json_name: "distanceMeters"
  field :eta, 7, type: Google.Protobuf.Timestamp
  field :duration, 8, type: Google.Protobuf.Duration
end

defmodule Maps.Fleetengine.V1.VehicleAttribute do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :vehicle_attribute_value, 0

  field :key, 1, type: :string
  field :value, 2, type: :string
  field :string_value, 3, type: :string, json_name: "stringValue", oneof: 0
  field :bool_value, 4, type: :bool, json_name: "boolValue", oneof: 0
  field :number_value, 5, type: :double, json_name: "numberValue", oneof: 0
end

defmodule Maps.Fleetengine.V1.VehicleLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :location, 1, type: Google.Type.LatLng

  field :horizontal_accuracy, 8,
    type: Google.Protobuf.DoubleValue,
    json_name: "horizontalAccuracy",
    deprecated: true

  field :latlng_accuracy, 22, type: Google.Protobuf.DoubleValue, json_name: "latlngAccuracy"
  field :heading, 2, type: Google.Protobuf.Int32Value

  field :bearing_accuracy, 10,
    type: Google.Protobuf.DoubleValue,
    json_name: "bearingAccuracy",
    deprecated: true

  field :heading_accuracy, 23, type: Google.Protobuf.DoubleValue, json_name: "headingAccuracy"
  field :altitude, 5, type: Google.Protobuf.DoubleValue

  field :vertical_accuracy, 9,
    type: Google.Protobuf.DoubleValue,
    json_name: "verticalAccuracy",
    deprecated: true

  field :altitude_accuracy, 24, type: Google.Protobuf.DoubleValue, json_name: "altitudeAccuracy"
  field :speed_kmph, 3, type: Google.Protobuf.Int32Value, json_name: "speedKmph", deprecated: true
  field :speed, 6, type: Google.Protobuf.DoubleValue
  field :speed_accuracy, 7, type: Google.Protobuf.DoubleValue, json_name: "speedAccuracy"
  field :update_time, 4, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  field :server_time, 13,
    type: Google.Protobuf.Timestamp,
    json_name: "serverTime",
    deprecated: false

  field :location_sensor, 11,
    type: Maps.Fleetengine.V1.LocationSensor,
    json_name: "locationSensor",
    enum: true

  field :is_road_snapped, 27, type: Google.Protobuf.BoolValue, json_name: "isRoadSnapped"

  field :is_gps_sensor_enabled, 12,
    type: Google.Protobuf.BoolValue,
    json_name: "isGpsSensorEnabled",
    deprecated: false

  field :time_since_update, 14,
    type: Google.Protobuf.Int32Value,
    json_name: "timeSinceUpdate",
    deprecated: false

  field :num_stale_updates, 15,
    type: Google.Protobuf.Int32Value,
    json_name: "numStaleUpdates",
    deprecated: true

  field :raw_location, 16, type: Google.Type.LatLng, json_name: "rawLocation"
  field :raw_location_time, 17, type: Google.Protobuf.Timestamp, json_name: "rawLocationTime"

  field :raw_location_sensor, 28,
    type: Maps.Fleetengine.V1.LocationSensor,
    json_name: "rawLocationSensor",
    enum: true

  field :raw_location_accuracy, 25,
    type: Google.Protobuf.DoubleValue,
    json_name: "rawLocationAccuracy"

  field :flp_location, 29, type: Google.Type.LatLng, json_name: "flpLocation"
  field :flp_update_time, 30, type: Google.Protobuf.Timestamp, json_name: "flpUpdateTime"

  field :flp_latlng_accuracy_meters, 31,
    type: Google.Protobuf.DoubleValue,
    json_name: "flpLatlngAccuracyMeters"

  field :flp_heading_degrees, 32, type: Google.Protobuf.Int32Value, json_name: "flpHeadingDegrees"
  field :supplemental_location, 18, type: Google.Type.LatLng, json_name: "supplementalLocation"

  field :supplemental_location_time, 19,
    type: Google.Protobuf.Timestamp,
    json_name: "supplementalLocationTime"

  field :supplemental_location_sensor, 20,
    type: Maps.Fleetengine.V1.LocationSensor,
    json_name: "supplementalLocationSensor",
    enum: true

  field :supplemental_location_accuracy, 21,
    type: Google.Protobuf.DoubleValue,
    json_name: "supplementalLocationAccuracy"

  field :road_snapped, 26, type: :bool, json_name: "roadSnapped", deprecated: true
end

defmodule Maps.Fleetengine.V1.TripAttribute do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :trip_attribute_value, 0

  field :key, 1, type: :string
  field :string_value, 2, type: :string, json_name: "stringValue", oneof: 0
  field :bool_value, 3, type: :bool, json_name: "boolValue", oneof: 0
  field :number_value, 4, type: :double, json_name: "numberValue", oneof: 0
end
