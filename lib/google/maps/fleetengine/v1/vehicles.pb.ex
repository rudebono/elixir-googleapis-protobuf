defmodule Maps.Fleetengine.V1.VehicleState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :UNKNOWN_VEHICLE_STATE, 0
  field :OFFLINE, 1
  field :ONLINE, 2
end

defmodule Maps.Fleetengine.V1.LocationPowerSaveMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :UNKNOWN_LOCATION_POWER_SAVE_MODE, 0
  field :LOCATION_MODE_NO_CHANGE, 1
  field :LOCATION_MODE_GPS_DISABLED_WHEN_SCREEN_OFF, 2
  field :LOCATION_MODE_ALL_DISABLED_WHEN_SCREEN_OFF, 3
  field :LOCATION_MODE_FOREGROUND_ONLY, 4
  field :LOCATION_MODE_THROTTLE_REQUESTS_WHEN_SCREEN_OFF, 5
end

defmodule Maps.Fleetengine.V1.BatteryStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :UNKNOWN_BATTERY_STATUS, 0
  field :BATTERY_STATUS_CHARGING, 1
  field :BATTERY_STATUS_DISCHARGING, 2
  field :BATTERY_STATUS_FULL, 3
  field :BATTERY_STATUS_NOT_CHARGING, 4
  field :BATTERY_STATUS_POWER_LOW, 5
end

defmodule Maps.Fleetengine.V1.PowerSource do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :UNKNOWN_POWER_SOURCE, 0
  field :POWER_SOURCE_AC, 1
  field :POWER_SOURCE_USB, 2
  field :POWER_SOURCE_WIRELESS, 3
  field :POWER_SOURCE_UNPLUGGED, 4
end

defmodule Maps.Fleetengine.V1.Vehicle.VehicleType.Category do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :UNKNOWN, 0
  field :AUTO, 1
  field :TAXI, 2
  field :TRUCK, 3
  field :TWO_WHEELER, 4
  field :BICYCLE, 5
  field :PEDESTRIAN, 6
end

defmodule Maps.Fleetengine.V1.VisualTrafficReportPolylineRendering.RoadStretch.Style do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STYLE_UNSPECIFIED, 0
  field :SLOWER_TRAFFIC, 1
  field :TRAFFIC_JAM, 2
end

defmodule Maps.Fleetengine.V1.Vehicle.VehicleType do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :category, 1, type: Maps.Fleetengine.V1.Vehicle.VehicleType.Category, enum: true
end

defmodule Maps.Fleetengine.V1.Vehicle do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :vehicle_state, 2,
    type: Maps.Fleetengine.V1.VehicleState,
    json_name: "vehicleState",
    enum: true

  field :supported_trip_types, 3,
    repeated: true,
    type: Maps.Fleetengine.V1.TripType,
    json_name: "supportedTripTypes",
    enum: true

  field :current_trips, 4,
    repeated: true,
    type: :string,
    json_name: "currentTrips",
    deprecated: false

  field :last_location, 5, type: Maps.Fleetengine.V1.VehicleLocation, json_name: "lastLocation"
  field :maximum_capacity, 6, type: :int32, json_name: "maximumCapacity"
  field :attributes, 8, repeated: true, type: Maps.Fleetengine.V1.VehicleAttribute

  field :vehicle_type, 9,
    type: Maps.Fleetengine.V1.Vehicle.VehicleType,
    json_name: "vehicleType",
    deprecated: false

  field :license_plate, 10, type: Maps.Fleetengine.V1.LicensePlate, json_name: "licensePlate"
  field :route, 12, repeated: true, type: Maps.Fleetengine.V1.TerminalLocation, deprecated: true
  field :current_route_segment, 20, type: :string, json_name: "currentRouteSegment"

  field :current_route_segment_traffic, 28,
    type: Maps.Fleetengine.V1.TrafficPolylineData,
    json_name: "currentRouteSegmentTraffic",
    deprecated: false

  field :current_route_segment_version, 15,
    type: Google.Protobuf.Timestamp,
    json_name: "currentRouteSegmentVersion",
    deprecated: false

  field :current_route_segment_end_point, 24,
    type: Maps.Fleetengine.V1.TripWaypoint,
    json_name: "currentRouteSegmentEndPoint"

  field :remaining_distance_meters, 18,
    type: Google.Protobuf.Int32Value,
    json_name: "remainingDistanceMeters"

  field :eta_to_first_waypoint, 19,
    type: Google.Protobuf.Timestamp,
    json_name: "etaToFirstWaypoint"

  field :remaining_time_seconds, 25,
    type: Google.Protobuf.Int32Value,
    json_name: "remainingTimeSeconds",
    deprecated: false

  field :waypoints, 22, repeated: true, type: Maps.Fleetengine.V1.TripWaypoint

  field :waypoints_version, 16,
    type: Google.Protobuf.Timestamp,
    json_name: "waypointsVersion",
    deprecated: false

  field :back_to_back_enabled, 23, type: :bool, json_name: "backToBackEnabled"

  field :navigation_status, 26,
    type: Maps.Fleetengine.V1.NavigationStatus,
    json_name: "navigationStatus",
    enum: true

  field :device_settings, 27,
    type: Maps.Fleetengine.V1.DeviceSettings,
    json_name: "deviceSettings",
    deprecated: false
end

defmodule Maps.Fleetengine.V1.BatteryInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :battery_status, 1,
    type: Maps.Fleetengine.V1.BatteryStatus,
    json_name: "batteryStatus",
    enum: true

  field :power_source, 2,
    type: Maps.Fleetengine.V1.PowerSource,
    json_name: "powerSource",
    enum: true

  field :battery_percentage, 3, type: :float, json_name: "batteryPercentage"
end

defmodule Maps.Fleetengine.V1.DeviceSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :location_power_save_mode, 1,
    type: Maps.Fleetengine.V1.LocationPowerSaveMode,
    json_name: "locationPowerSaveMode",
    enum: true

  field :is_power_save_mode, 2, type: :bool, json_name: "isPowerSaveMode"
  field :is_interactive, 3, type: :bool, json_name: "isInteractive"
  field :battery_info, 4, type: Maps.Fleetengine.V1.BatteryInfo, json_name: "batteryInfo"
end

defmodule Maps.Fleetengine.V1.LicensePlate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :country_code, 1, type: :string, json_name: "countryCode", deprecated: false
  field :last_character, 2, type: :string, json_name: "lastCharacter"
end

defmodule Maps.Fleetengine.V1.VisualTrafficReportPolylineRendering.RoadStretch do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :style, 1,
    type: Maps.Fleetengine.V1.VisualTrafficReportPolylineRendering.RoadStretch.Style,
    enum: true,
    deprecated: false

  field :offset_meters, 2, type: :int32, json_name: "offsetMeters", deprecated: false
  field :length_meters, 3, type: :int32, json_name: "lengthMeters", deprecated: false
end

defmodule Maps.Fleetengine.V1.VisualTrafficReportPolylineRendering do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :road_stretch, 1,
    repeated: true,
    type: Maps.Fleetengine.V1.VisualTrafficReportPolylineRendering.RoadStretch,
    json_name: "roadStretch",
    deprecated: false
end

defmodule Maps.Fleetengine.V1.TrafficPolylineData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :traffic_rendering, 1,
    type: Maps.Fleetengine.V1.VisualTrafficReportPolylineRendering,
    json_name: "trafficRendering"
end