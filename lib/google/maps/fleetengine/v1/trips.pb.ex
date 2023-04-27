defmodule Maps.Fleetengine.V1.TripStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :BILLING_PLATFORM_IDENTIFIER_UNSPECIFIED, 0
  field :SERVER, 1
  field :WEB, 2
  field :ANDROID, 3
  field :IOS, 4
  field :OTHERS, 5
end

defmodule Maps.Fleetengine.V1.TripView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TRIP_VIEW_UNSPECIFIED, 0
  field :SDK, 1
  field :JOURNEY_SHARING_V1S, 2
end

defmodule Maps.Fleetengine.V1.Trip do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :vehicle_id, 2, type: :string, json_name: "vehicleId"
  field :trip_status, 3, type: Maps.Fleetengine.V1.TripStatus, json_name: "tripStatus", enum: true
  field :trip_type, 4, type: Maps.Fleetengine.V1.TripType, json_name: "tripType", enum: true
  field :pickup_point, 5, type: Maps.Fleetengine.V1.TerminalLocation, json_name: "pickupPoint"

  field :actual_pickup_point, 22,
    type: Maps.Fleetengine.V1.StopLocation,
    json_name: "actualPickupPoint",
    deprecated: false

  field :actual_pickup_arrival_point, 32,
    type: Maps.Fleetengine.V1.StopLocation,
    json_name: "actualPickupArrivalPoint",
    deprecated: false

  field :pickup_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "pickupTime",
    deprecated: false

  field :intermediate_destinations, 14,
    repeated: true,
    type: Maps.Fleetengine.V1.TerminalLocation,
    json_name: "intermediateDestinations"

  field :intermediate_destinations_version, 25,
    type: Google.Protobuf.Timestamp,
    json_name: "intermediateDestinationsVersion"

  field :intermediate_destination_index, 15,
    type: :int32,
    json_name: "intermediateDestinationIndex"

  field :actual_intermediate_destination_arrival_points, 33,
    repeated: true,
    type: Maps.Fleetengine.V1.StopLocation,
    json_name: "actualIntermediateDestinationArrivalPoints",
    deprecated: false

  field :actual_intermediate_destinations, 34,
    repeated: true,
    type: Maps.Fleetengine.V1.StopLocation,
    json_name: "actualIntermediateDestinations",
    deprecated: false

  field :dropoff_point, 7, type: Maps.Fleetengine.V1.TerminalLocation, json_name: "dropoffPoint"

  field :actual_dropoff_point, 23,
    type: Maps.Fleetengine.V1.StopLocation,
    json_name: "actualDropoffPoint",
    deprecated: false

  field :dropoff_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "dropoffTime",
    deprecated: false

  field :remaining_waypoints, 16,
    repeated: true,
    type: Maps.Fleetengine.V1.TripWaypoint,
    json_name: "remainingWaypoints",
    deprecated: false

  field :vehicle_waypoints, 20,
    repeated: true,
    type: Maps.Fleetengine.V1.TripWaypoint,
    json_name: "vehicleWaypoints"

  field :route, 9, repeated: true, type: Google.Type.LatLng, deprecated: false

  field :current_route_segment, 21,
    type: :string,
    json_name: "currentRouteSegment",
    deprecated: false

  field :current_route_segment_version, 17,
    type: Google.Protobuf.Timestamp,
    json_name: "currentRouteSegmentVersion",
    deprecated: false

  field :current_route_segment_traffic, 28,
    type: Maps.Fleetengine.V1.ConsumableTrafficPolyline,
    json_name: "currentRouteSegmentTraffic",
    deprecated: false

  field :current_route_segment_traffic_version, 30,
    type: Google.Protobuf.Timestamp,
    json_name: "currentRouteSegmentTrafficVersion",
    deprecated: false

  field :current_route_segment_end_point, 24,
    type: Maps.Fleetengine.V1.TripWaypoint,
    json_name: "currentRouteSegmentEndPoint",
    deprecated: false

  field :remaining_distance_meters, 12,
    type: Google.Protobuf.Int32Value,
    json_name: "remainingDistanceMeters",
    deprecated: false

  field :eta_to_first_waypoint, 13,
    type: Google.Protobuf.Timestamp,
    json_name: "etaToFirstWaypoint",
    deprecated: false

  field :remaining_time_to_first_waypoint, 27,
    type: Google.Protobuf.Duration,
    json_name: "remainingTimeToFirstWaypoint",
    deprecated: false

  field :remaining_waypoints_version, 19,
    type: Google.Protobuf.Timestamp,
    json_name: "remainingWaypointsVersion",
    deprecated: false

  field :remaining_waypoints_route_version, 29,
    type: Google.Protobuf.Timestamp,
    json_name: "remainingWaypointsRouteVersion",
    deprecated: false

  field :number_of_passengers, 10,
    type: :int32,
    json_name: "numberOfPassengers",
    deprecated: false

  field :last_location, 11,
    type: Maps.Fleetengine.V1.VehicleLocation,
    json_name: "lastLocation",
    deprecated: false

  field :last_location_snappable, 26,
    type: :bool,
    json_name: "lastLocationSnappable",
    deprecated: false

  field :view, 31, type: Maps.Fleetengine.V1.TripView, enum: true
end

defmodule Maps.Fleetengine.V1.StopLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :point, 1, type: Google.Type.LatLng, deprecated: false
  field :timestamp, 2, type: Google.Protobuf.Timestamp
  field :stop_time, 3, type: Google.Protobuf.Timestamp, json_name: "stopTime", deprecated: true
end