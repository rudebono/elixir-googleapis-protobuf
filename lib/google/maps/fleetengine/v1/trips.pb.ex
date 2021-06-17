defmodule Maps.Fleetengine.V1.TripStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNKNOWN_TRIP_STATUS
          | :NEW
          | :ENROUTE_TO_PICKUP
          | :ARRIVED_AT_PICKUP
          | :ARRIVED_AT_INTERMEDIATE_DESTINATION
          | :ENROUTE_TO_INTERMEDIATE_DESTINATION
          | :ENROUTE_TO_DROPOFF
          | :COMPLETE
          | :CANCELED

  field :UNKNOWN_TRIP_STATUS, 0

  field :NEW, 1

  field :ENROUTE_TO_PICKUP, 2

  field :ARRIVED_AT_PICKUP, 3

  field :ARRIVED_AT_INTERMEDIATE_DESTINATION, 7

  field :ENROUTE_TO_INTERMEDIATE_DESTINATION, 8

  field :ENROUTE_TO_DROPOFF, 4

  field :COMPLETE, 5

  field :CANCELED, 6
end

defmodule Maps.Fleetengine.V1.BillingPlatformIdentifier do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :BILLING_PLATFORM_IDENTIFIER_UNSPECIFIED
          | :SERVER
          | :WEB
          | :ANDROID
          | :IOS
          | :OTHERS

  field :BILLING_PLATFORM_IDENTIFIER_UNSPECIFIED, 0

  field :SERVER, 1

  field :WEB, 2

  field :ANDROID, 3

  field :IOS, 4

  field :OTHERS, 5
end

defmodule Maps.Fleetengine.V1.TripView do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :TRIP_VIEW_UNSPECIFIED | :SDK | :JOURNEY_SHARING_V1S

  field :TRIP_VIEW_UNSPECIFIED, 0

  field :SDK, 1

  field :JOURNEY_SHARING_V1S, 2
end

defmodule Maps.Fleetengine.V1.Trip do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          vehicle_id: String.t(),
          trip_status: Maps.Fleetengine.V1.TripStatus.t(),
          trip_type: Maps.Fleetengine.V1.TripType.t(),
          pickup_point: Maps.Fleetengine.V1.TerminalLocation.t() | nil,
          actual_pickup_point: Maps.Fleetengine.V1.StopLocation.t() | nil,
          actual_pickup_arrival_point: Maps.Fleetengine.V1.StopLocation.t() | nil,
          pickup_time: Google.Protobuf.Timestamp.t() | nil,
          intermediate_destinations: [Maps.Fleetengine.V1.TerminalLocation.t()],
          intermediate_destinations_version: Google.Protobuf.Timestamp.t() | nil,
          intermediate_destination_index: integer,
          actual_intermediate_destination_arrival_points: [Maps.Fleetengine.V1.StopLocation.t()],
          actual_intermediate_destinations: [Maps.Fleetengine.V1.StopLocation.t()],
          dropoff_point: Maps.Fleetengine.V1.TerminalLocation.t() | nil,
          actual_dropoff_point: Maps.Fleetengine.V1.StopLocation.t() | nil,
          dropoff_time: Google.Protobuf.Timestamp.t() | nil,
          remaining_waypoints: [Maps.Fleetengine.V1.TripWaypoint.t()],
          vehicle_waypoints: [Maps.Fleetengine.V1.TripWaypoint.t()],
          route: [Google.Type.LatLng.t()],
          current_route_segment_end_point: Maps.Fleetengine.V1.TripWaypoint.t() | nil,
          remaining_distance_meters: Google.Protobuf.Int32Value.t() | nil,
          eta_to_first_waypoint: Google.Protobuf.Timestamp.t() | nil,
          remaining_time_to_first_waypoint: Google.Protobuf.Duration.t() | nil,
          remaining_waypoints_version: Google.Protobuf.Timestamp.t() | nil,
          remaining_waypoints_route_version: Google.Protobuf.Timestamp.t() | nil,
          number_of_passengers: integer,
          last_location: Maps.Fleetengine.V1.VehicleLocation.t() | nil,
          last_location_snappable: boolean,
          view: Maps.Fleetengine.V1.TripView.t()
        }

  defstruct [
    :name,
    :vehicle_id,
    :trip_status,
    :trip_type,
    :pickup_point,
    :actual_pickup_point,
    :actual_pickup_arrival_point,
    :pickup_time,
    :intermediate_destinations,
    :intermediate_destinations_version,
    :intermediate_destination_index,
    :actual_intermediate_destination_arrival_points,
    :actual_intermediate_destinations,
    :dropoff_point,
    :actual_dropoff_point,
    :dropoff_time,
    :remaining_waypoints,
    :vehicle_waypoints,
    :route,
    :current_route_segment_end_point,
    :remaining_distance_meters,
    :eta_to_first_waypoint,
    :remaining_time_to_first_waypoint,
    :remaining_waypoints_version,
    :remaining_waypoints_route_version,
    :number_of_passengers,
    :last_location,
    :last_location_snappable,
    :view
  ]

  field :name, 1, type: :string
  field :vehicle_id, 2, type: :string
  field :trip_status, 3, type: Maps.Fleetengine.V1.TripStatus, enum: true
  field :trip_type, 4, type: Maps.Fleetengine.V1.TripType, enum: true
  field :pickup_point, 5, type: Maps.Fleetengine.V1.TerminalLocation
  field :actual_pickup_point, 22, type: Maps.Fleetengine.V1.StopLocation
  field :actual_pickup_arrival_point, 32, type: Maps.Fleetengine.V1.StopLocation
  field :pickup_time, 6, type: Google.Protobuf.Timestamp
  field :intermediate_destinations, 14, repeated: true, type: Maps.Fleetengine.V1.TerminalLocation
  field :intermediate_destinations_version, 25, type: Google.Protobuf.Timestamp
  field :intermediate_destination_index, 15, type: :int32

  field :actual_intermediate_destination_arrival_points, 33,
    repeated: true,
    type: Maps.Fleetengine.V1.StopLocation

  field :actual_intermediate_destinations, 34,
    repeated: true,
    type: Maps.Fleetengine.V1.StopLocation

  field :dropoff_point, 7, type: Maps.Fleetengine.V1.TerminalLocation
  field :actual_dropoff_point, 23, type: Maps.Fleetengine.V1.StopLocation
  field :dropoff_time, 8, type: Google.Protobuf.Timestamp
  field :remaining_waypoints, 16, repeated: true, type: Maps.Fleetengine.V1.TripWaypoint
  field :vehicle_waypoints, 20, repeated: true, type: Maps.Fleetengine.V1.TripWaypoint
  field :route, 9, repeated: true, type: Google.Type.LatLng
  field :current_route_segment_end_point, 24, type: Maps.Fleetengine.V1.TripWaypoint
  field :remaining_distance_meters, 12, type: Google.Protobuf.Int32Value
  field :eta_to_first_waypoint, 13, type: Google.Protobuf.Timestamp
  field :remaining_time_to_first_waypoint, 27, type: Google.Protobuf.Duration
  field :remaining_waypoints_version, 19, type: Google.Protobuf.Timestamp
  field :remaining_waypoints_route_version, 29, type: Google.Protobuf.Timestamp
  field :number_of_passengers, 10, type: :int32
  field :last_location, 11, type: Maps.Fleetengine.V1.VehicleLocation
  field :last_location_snappable, 26, type: :bool
  field :view, 31, type: Maps.Fleetengine.V1.TripView, enum: true
end

defmodule Maps.Fleetengine.V1.StopLocation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          point: Google.Type.LatLng.t() | nil,
          timestamp: Google.Protobuf.Timestamp.t() | nil,
          stop_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:point, :timestamp, :stop_time]

  field :point, 1, type: Google.Type.LatLng
  field :timestamp, 2, type: Google.Protobuf.Timestamp
  field :stop_time, 3, type: Google.Protobuf.Timestamp
end
