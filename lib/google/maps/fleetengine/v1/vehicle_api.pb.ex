defmodule Maps.Fleetengine.V1.SearchVehiclesRequest.VehicleMatchOrder do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :UNKNOWN_VEHICLE_MATCH_ORDER, 0
  field :PICKUP_POINT_ETA, 1
  field :PICKUP_POINT_DISTANCE, 2
  field :DROPOFF_POINT_ETA, 3
  field :PICKUP_POINT_STRAIGHT_DISTANCE, 4
  field :COST, 5
end

defmodule Maps.Fleetengine.V1.SearchVehiclesRequest.CurrentTripsPresent do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :CURRENT_TRIPS_PRESENT_UNSPECIFIED, 0
  field :NONE, 1
  field :ANY, 2
end

defmodule Maps.Fleetengine.V1.VehicleMatch.VehicleMatchType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :UNKNOWN, 0
  field :EXCLUSIVE, 1
  field :BACK_TO_BACK, 2
  field :CARPOOL, 3
  field :CARPOOL_BACK_TO_BACK, 4
end

defmodule Maps.Fleetengine.V1.CreateVehicleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :header, 1, type: Maps.Fleetengine.V1.RequestHeader
  field :parent, 3, type: :string, deprecated: false
  field :vehicle_id, 4, type: :string, json_name: "vehicleId", deprecated: false
  field :vehicle, 5, type: Maps.Fleetengine.V1.Vehicle, deprecated: false
end

defmodule Maps.Fleetengine.V1.GetVehicleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :header, 1, type: Maps.Fleetengine.V1.RequestHeader
  field :name, 3, type: :string, deprecated: false

  field :current_route_segment_version, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "currentRouteSegmentVersion"

  field :waypoints_version, 5, type: Google.Protobuf.Timestamp, json_name: "waypointsVersion"
end

defmodule Maps.Fleetengine.V1.UpdateVehicleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :header, 1, type: Maps.Fleetengine.V1.RequestHeader
  field :name, 3, type: :string, deprecated: false
  field :vehicle, 4, type: Maps.Fleetengine.V1.Vehicle, deprecated: false

  field :update_mask, 5,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Maps.Fleetengine.V1.UpdateVehicleAttributesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :header, 1, type: Maps.Fleetengine.V1.RequestHeader
  field :name, 3, type: :string, deprecated: false

  field :attributes, 4,
    repeated: true,
    type: Maps.Fleetengine.V1.VehicleAttribute,
    deprecated: false
end

defmodule Maps.Fleetengine.V1.UpdateVehicleAttributesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :attributes, 1,
    repeated: true,
    type: Maps.Fleetengine.V1.VehicleAttribute,
    deprecated: false
end

defmodule Maps.Fleetengine.V1.SearchVehiclesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :header, 1, type: Maps.Fleetengine.V1.RequestHeader
  field :parent, 3, type: :string, deprecated: false

  field :pickup_point, 4,
    type: Maps.Fleetengine.V1.TerminalLocation,
    json_name: "pickupPoint",
    deprecated: false

  field :dropoff_point, 5, type: Maps.Fleetengine.V1.TerminalLocation, json_name: "dropoffPoint"
  field :pickup_radius_meters, 6, type: :int32, json_name: "pickupRadiusMeters", deprecated: false
  field :count, 7, type: :int32, deprecated: false
  field :minimum_capacity, 8, type: :int32, json_name: "minimumCapacity", deprecated: false

  field :trip_types, 9,
    repeated: true,
    type: Maps.Fleetengine.V1.TripType,
    json_name: "tripTypes",
    enum: true,
    deprecated: false

  field :maximum_staleness, 10, type: Google.Protobuf.Duration, json_name: "maximumStaleness"

  field :vehicle_types, 14,
    repeated: true,
    type: Maps.Fleetengine.V1.Vehicle.VehicleType,
    json_name: "vehicleTypes",
    deprecated: false

  field :required_attributes, 12,
    repeated: true,
    type: Maps.Fleetengine.V1.VehicleAttribute,
    json_name: "requiredAttributes"

  field :required_one_of_attributes, 15,
    repeated: true,
    type: Maps.Fleetengine.V1.VehicleAttributeList,
    json_name: "requiredOneOfAttributes"

  field :required_one_of_attribute_sets, 20,
    repeated: true,
    type: Maps.Fleetengine.V1.VehicleAttributeList,
    json_name: "requiredOneOfAttributeSets"

  field :order_by, 13,
    type: Maps.Fleetengine.V1.SearchVehiclesRequest.VehicleMatchOrder,
    json_name: "orderBy",
    enum: true,
    deprecated: false

  field :include_back_to_back, 18, type: :bool, json_name: "includeBackToBack"
  field :trip_id, 19, type: :string, json_name: "tripId"

  field :current_trips_present, 21,
    type: Maps.Fleetengine.V1.SearchVehiclesRequest.CurrentTripsPresent,
    json_name: "currentTripsPresent",
    enum: true

  field :filter, 22, type: :string, deprecated: false
end

defmodule Maps.Fleetengine.V1.SearchVehiclesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :matches, 1, repeated: true, type: Maps.Fleetengine.V1.VehicleMatch
end

defmodule Maps.Fleetengine.V1.ListVehiclesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :header, 12, type: Maps.Fleetengine.V1.RequestHeader
  field :parent, 1, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :minimum_capacity, 6, type: Google.Protobuf.Int32Value, json_name: "minimumCapacity"

  field :trip_types, 7,
    repeated: true,
    type: Maps.Fleetengine.V1.TripType,
    json_name: "tripTypes",
    enum: true

  field :maximum_staleness, 8, type: Google.Protobuf.Duration, json_name: "maximumStaleness"

  field :vehicle_type_categories, 9,
    repeated: true,
    type: Maps.Fleetengine.V1.Vehicle.VehicleType.Category,
    json_name: "vehicleTypeCategories",
    enum: true,
    deprecated: false

  field :required_attributes, 10, repeated: true, type: :string, json_name: "requiredAttributes"

  field :required_one_of_attributes, 13,
    repeated: true,
    type: :string,
    json_name: "requiredOneOfAttributes"

  field :required_one_of_attribute_sets, 15,
    repeated: true,
    type: :string,
    json_name: "requiredOneOfAttributeSets"

  field :vehicle_state, 11,
    type: Maps.Fleetengine.V1.VehicleState,
    json_name: "vehicleState",
    enum: true

  field :on_trip_only, 14, type: :bool, json_name: "onTripOnly"
  field :filter, 16, type: :string, deprecated: false
  field :viewport, 17, type: Google.Geo.Type.Viewport, deprecated: false
end

defmodule Maps.Fleetengine.V1.ListVehiclesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :vehicles, 1, repeated: true, type: Maps.Fleetengine.V1.Vehicle
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int64, json_name: "totalSize", deprecated: false
end

defmodule Maps.Fleetengine.V1.Waypoint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :lat_lng, 1, type: Google.Type.LatLng, json_name: "latLng"
  field :eta, 2, type: Google.Protobuf.Timestamp
end

defmodule Maps.Fleetengine.V1.VehicleMatch do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :vehicle, 1, type: Maps.Fleetengine.V1.Vehicle, deprecated: false
  field :vehicle_pickup_eta, 2, type: Google.Protobuf.Timestamp, json_name: "vehiclePickupEta"

  field :vehicle_pickup_distance_meters, 3,
    type: Google.Protobuf.Int32Value,
    json_name: "vehiclePickupDistanceMeters"

  field :vehicle_pickup_straight_line_distance_meters, 11,
    type: Google.Protobuf.Int32Value,
    json_name: "vehiclePickupStraightLineDistanceMeters",
    deprecated: false

  field :vehicle_dropoff_eta, 4, type: Google.Protobuf.Timestamp, json_name: "vehicleDropoffEta"

  field :vehicle_pickup_to_dropoff_distance_meters, 5,
    type: Google.Protobuf.Int32Value,
    json_name: "vehiclePickupToDropoffDistanceMeters"

  field :trip_type, 6,
    type: Maps.Fleetengine.V1.TripType,
    json_name: "tripType",
    enum: true,
    deprecated: false

  field :vehicle_trips_waypoints, 7,
    repeated: true,
    type: Maps.Fleetengine.V1.Waypoint,
    json_name: "vehicleTripsWaypoints"

  field :vehicle_match_type, 8,
    type: Maps.Fleetengine.V1.VehicleMatch.VehicleMatchType,
    json_name: "vehicleMatchType",
    enum: true

  field :requested_ordered_by, 9,
    type: Maps.Fleetengine.V1.SearchVehiclesRequest.VehicleMatchOrder,
    json_name: "requestedOrderedBy",
    enum: true

  field :ordered_by, 10,
    type: Maps.Fleetengine.V1.SearchVehiclesRequest.VehicleMatchOrder,
    json_name: "orderedBy",
    enum: true
end

defmodule Maps.Fleetengine.V1.VehicleAttributeList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :attributes, 1, repeated: true, type: Maps.Fleetengine.V1.VehicleAttribute
end

defmodule Maps.Fleetengine.V1.VehicleService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "maps.fleetengine.v1.VehicleService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :CreateVehicle, Maps.Fleetengine.V1.CreateVehicleRequest, Maps.Fleetengine.V1.Vehicle

  rpc :GetVehicle, Maps.Fleetengine.V1.GetVehicleRequest, Maps.Fleetengine.V1.Vehicle

  rpc :UpdateVehicle, Maps.Fleetengine.V1.UpdateVehicleRequest, Maps.Fleetengine.V1.Vehicle

  rpc :UpdateVehicleAttributes,
      Maps.Fleetengine.V1.UpdateVehicleAttributesRequest,
      Maps.Fleetengine.V1.UpdateVehicleAttributesResponse

  rpc :ListVehicles,
      Maps.Fleetengine.V1.ListVehiclesRequest,
      Maps.Fleetengine.V1.ListVehiclesResponse

  rpc :SearchVehicles,
      Maps.Fleetengine.V1.SearchVehiclesRequest,
      Maps.Fleetengine.V1.SearchVehiclesResponse
end

defmodule Maps.Fleetengine.V1.VehicleService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Maps.Fleetengine.V1.VehicleService.Service
end