defmodule Maps.Fleetengine.V1.VehicleState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNKNOWN_VEHICLE_STATE | :OFFLINE | :ONLINE

  field :UNKNOWN_VEHICLE_STATE, 0
  field :OFFLINE, 1
  field :ONLINE, 2
end

defmodule Maps.Fleetengine.V1.LocationPowerSaveMode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNKNOWN_LOCATION_POWER_SAVE_MODE
          | :LOCATION_MODE_NO_CHANGE
          | :LOCATION_MODE_GPS_DISABLED_WHEN_SCREEN_OFF
          | :LOCATION_MODE_ALL_DISABLED_WHEN_SCREEN_OFF
          | :LOCATION_MODE_FOREGROUND_ONLY
          | :LOCATION_MODE_THROTTLE_REQUESTS_WHEN_SCREEN_OFF

  field :UNKNOWN_LOCATION_POWER_SAVE_MODE, 0
  field :LOCATION_MODE_NO_CHANGE, 1
  field :LOCATION_MODE_GPS_DISABLED_WHEN_SCREEN_OFF, 2
  field :LOCATION_MODE_ALL_DISABLED_WHEN_SCREEN_OFF, 3
  field :LOCATION_MODE_FOREGROUND_ONLY, 4
  field :LOCATION_MODE_THROTTLE_REQUESTS_WHEN_SCREEN_OFF, 5
end

defmodule Maps.Fleetengine.V1.BatteryStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNKNOWN_BATTERY_STATUS
          | :BATTERY_STATUS_CHARGING
          | :BATTERY_STATUS_DISCHARGING
          | :BATTERY_STATUS_FULL
          | :BATTERY_STATUS_NOT_CHARGING
          | :BATTERY_STATUS_POWER_LOW

  field :UNKNOWN_BATTERY_STATUS, 0
  field :BATTERY_STATUS_CHARGING, 1
  field :BATTERY_STATUS_DISCHARGING, 2
  field :BATTERY_STATUS_FULL, 3
  field :BATTERY_STATUS_NOT_CHARGING, 4
  field :BATTERY_STATUS_POWER_LOW, 5
end

defmodule Maps.Fleetengine.V1.PowerSource do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNKNOWN_POWER_SOURCE
          | :POWER_SOURCE_AC
          | :POWER_SOURCE_USB
          | :POWER_SOURCE_WIRELESS
          | :POWER_SOURCE_UNPLUGGED

  field :UNKNOWN_POWER_SOURCE, 0
  field :POWER_SOURCE_AC, 1
  field :POWER_SOURCE_USB, 2
  field :POWER_SOURCE_WIRELESS, 3
  field :POWER_SOURCE_UNPLUGGED, 4
end

defmodule Maps.Fleetengine.V1.Vehicle.VehicleType.Category do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNKNOWN | :AUTO | :TAXI | :TRUCK | :TWO_WHEELER

  field :UNKNOWN, 0
  field :AUTO, 1
  field :TAXI, 2
  field :TRUCK, 3
  field :TWO_WHEELER, 4
end

defmodule Maps.Fleetengine.V1.Vehicle.VehicleType do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          category: Maps.Fleetengine.V1.Vehicle.VehicleType.Category.t()
        }

  defstruct [:category]

  field :category, 1, type: Maps.Fleetengine.V1.Vehicle.VehicleType.Category, enum: true

  def transform_module(), do: nil
end

defmodule Maps.Fleetengine.V1.Vehicle do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          vehicle_state: Maps.Fleetengine.V1.VehicleState.t(),
          supported_trip_types: [Maps.Fleetengine.V1.TripType.t()],
          current_trips: [String.t()],
          last_location: Maps.Fleetengine.V1.VehicleLocation.t() | nil,
          maximum_capacity: integer,
          available_capacity: integer,
          attributes: [Maps.Fleetengine.V1.VehicleAttribute.t()],
          vehicle_type: Maps.Fleetengine.V1.Vehicle.VehicleType.t() | nil,
          license_plate: Maps.Fleetengine.V1.LicensePlate.t() | nil,
          route: [Maps.Fleetengine.V1.TerminalLocation.t()],
          current_route_segment: String.t(),
          current_route_segment_version: Google.Protobuf.Timestamp.t() | nil,
          current_route_segment_end_point: Maps.Fleetengine.V1.TripWaypoint.t() | nil,
          remaining_distance_meters: Google.Protobuf.Int32Value.t() | nil,
          eta_to_first_waypoint: Google.Protobuf.Timestamp.t() | nil,
          remaining_time_seconds: Google.Protobuf.Int32Value.t() | nil,
          waypoints: [Maps.Fleetengine.V1.TripWaypoint.t()],
          waypoints_version: Google.Protobuf.Timestamp.t() | nil,
          back_to_back_enabled: boolean,
          navigation_status: Maps.Fleetengine.V1.NavigationStatus.t(),
          device_settings: Maps.Fleetengine.V1.DeviceSettings.t() | nil
        }

  defstruct [
    :name,
    :vehicle_state,
    :supported_trip_types,
    :current_trips,
    :last_location,
    :maximum_capacity,
    :available_capacity,
    :attributes,
    :vehicle_type,
    :license_plate,
    :route,
    :current_route_segment,
    :current_route_segment_version,
    :current_route_segment_end_point,
    :remaining_distance_meters,
    :eta_to_first_waypoint,
    :remaining_time_seconds,
    :waypoints,
    :waypoints_version,
    :back_to_back_enabled,
    :navigation_status,
    :device_settings
  ]

  field :name, 1, type: :string

  field :vehicle_state, 2,
    type: Maps.Fleetengine.V1.VehicleState,
    enum: true,
    json_name: "vehicleState"

  field :supported_trip_types, 3,
    repeated: true,
    type: Maps.Fleetengine.V1.TripType,
    enum: true,
    json_name: "supportedTripTypes"

  field :current_trips, 4, repeated: true, type: :string, json_name: "currentTrips"
  field :last_location, 5, type: Maps.Fleetengine.V1.VehicleLocation, json_name: "lastLocation"
  field :maximum_capacity, 6, type: :int32, json_name: "maximumCapacity"
  field :available_capacity, 7, type: :int32, json_name: "availableCapacity"
  field :attributes, 8, repeated: true, type: Maps.Fleetengine.V1.VehicleAttribute
  field :vehicle_type, 9, type: Maps.Fleetengine.V1.Vehicle.VehicleType, json_name: "vehicleType"
  field :license_plate, 10, type: Maps.Fleetengine.V1.LicensePlate, json_name: "licensePlate"
  field :route, 12, repeated: true, type: Maps.Fleetengine.V1.TerminalLocation, deprecated: true
  field :current_route_segment, 20, type: :string, json_name: "currentRouteSegment"

  field :current_route_segment_version, 15,
    type: Google.Protobuf.Timestamp,
    json_name: "currentRouteSegmentVersion"

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
    json_name: "remainingTimeSeconds"

  field :waypoints, 22, repeated: true, type: Maps.Fleetengine.V1.TripWaypoint
  field :waypoints_version, 16, type: Google.Protobuf.Timestamp, json_name: "waypointsVersion"
  field :back_to_back_enabled, 23, type: :bool, json_name: "backToBackEnabled"

  field :navigation_status, 26,
    type: Maps.Fleetengine.V1.NavigationStatus,
    enum: true,
    json_name: "navigationStatus"

  field :device_settings, 27,
    type: Maps.Fleetengine.V1.DeviceSettings,
    json_name: "deviceSettings"

  def transform_module(), do: nil
end

defmodule Maps.Fleetengine.V1.BatteryInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          battery_status: Maps.Fleetengine.V1.BatteryStatus.t(),
          power_source: Maps.Fleetengine.V1.PowerSource.t(),
          battery_percentage: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:battery_status, :power_source, :battery_percentage]

  field :battery_status, 1,
    type: Maps.Fleetengine.V1.BatteryStatus,
    enum: true,
    json_name: "batteryStatus"

  field :power_source, 2,
    type: Maps.Fleetengine.V1.PowerSource,
    enum: true,
    json_name: "powerSource"

  field :battery_percentage, 3, type: :float, json_name: "batteryPercentage"

  def transform_module(), do: nil
end

defmodule Maps.Fleetengine.V1.DeviceSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          location_power_save_mode: Maps.Fleetengine.V1.LocationPowerSaveMode.t(),
          is_power_save_mode: boolean,
          is_interactive: boolean,
          battery_info: Maps.Fleetengine.V1.BatteryInfo.t() | nil
        }

  defstruct [:location_power_save_mode, :is_power_save_mode, :is_interactive, :battery_info]

  field :location_power_save_mode, 1,
    type: Maps.Fleetengine.V1.LocationPowerSaveMode,
    enum: true,
    json_name: "locationPowerSaveMode"

  field :is_power_save_mode, 2, type: :bool, json_name: "isPowerSaveMode"
  field :is_interactive, 3, type: :bool, json_name: "isInteractive"
  field :battery_info, 4, type: Maps.Fleetengine.V1.BatteryInfo, json_name: "batteryInfo"

  def transform_module(), do: nil
end

defmodule Maps.Fleetengine.V1.LicensePlate do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          country_code: String.t(),
          last_character: String.t()
        }

  defstruct [:country_code, :last_character]

  field :country_code, 1, type: :string, json_name: "countryCode"
  field :last_character, 2, type: :string, json_name: "lastCharacter"

  def transform_module(), do: nil
end
