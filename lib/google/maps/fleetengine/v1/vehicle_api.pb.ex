defmodule Maps.Fleetengine.V1.SearchVehiclesRequest.VehicleMatchOrder do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNKNOWN_VEHICLE_MATCH_ORDER
          | :PICKUP_POINT_ETA
          | :PICKUP_POINT_DISTANCE
          | :DROPOFF_POINT_ETA
          | :PICKUP_POINT_STRAIGHT_DISTANCE
          | :COST

  field :UNKNOWN_VEHICLE_MATCH_ORDER, 0
  field :PICKUP_POINT_ETA, 1
  field :PICKUP_POINT_DISTANCE, 2
  field :DROPOFF_POINT_ETA, 3
  field :PICKUP_POINT_STRAIGHT_DISTANCE, 4
  field :COST, 5
end
defmodule Maps.Fleetengine.V1.VehicleMatch.VehicleMatchType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNKNOWN | :EXCLUSIVE | :BACK_TO_BACK | :CARPOOL | :CARPOOL_BACK_TO_BACK

  field :UNKNOWN, 0
  field :EXCLUSIVE, 1
  field :BACK_TO_BACK, 2
  field :CARPOOL, 3
  field :CARPOOL_BACK_TO_BACK, 4
end
defmodule Maps.Fleetengine.V1.CreateVehicleRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          header: Maps.Fleetengine.V1.RequestHeader.t() | nil,
          parent: String.t(),
          vehicle_id: String.t(),
          vehicle: Maps.Fleetengine.V1.Vehicle.t() | nil
        }

  defstruct header: nil,
            parent: "",
            vehicle_id: "",
            vehicle: nil

  field :header, 1, type: Maps.Fleetengine.V1.RequestHeader
  field :parent, 3, type: :string, deprecated: false
  field :vehicle_id, 4, type: :string, json_name: "vehicleId", deprecated: false
  field :vehicle, 5, type: Maps.Fleetengine.V1.Vehicle, deprecated: false
end
defmodule Maps.Fleetengine.V1.GetVehicleRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          header: Maps.Fleetengine.V1.RequestHeader.t() | nil,
          name: String.t(),
          current_route_segment_version: Google.Protobuf.Timestamp.t() | nil,
          waypoints_version: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct header: nil,
            name: "",
            current_route_segment_version: nil,
            waypoints_version: nil

  field :header, 1, type: Maps.Fleetengine.V1.RequestHeader
  field :name, 3, type: :string, deprecated: false

  field :current_route_segment_version, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "currentRouteSegmentVersion"

  field :waypoints_version, 5, type: Google.Protobuf.Timestamp, json_name: "waypointsVersion"
end
defmodule Maps.Fleetengine.V1.UpdateVehicleRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          header: Maps.Fleetengine.V1.RequestHeader.t() | nil,
          name: String.t(),
          vehicle: Maps.Fleetengine.V1.Vehicle.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct header: nil,
            name: "",
            vehicle: nil,
            update_mask: nil

  field :header, 1, type: Maps.Fleetengine.V1.RequestHeader
  field :name, 3, type: :string, deprecated: false
  field :vehicle, 4, type: Maps.Fleetengine.V1.Vehicle, deprecated: false

  field :update_mask, 5,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end
defmodule Maps.Fleetengine.V1.UpdateVehicleLocationRequest do
  @moduledoc false
  use Protobuf, deprecated: true, syntax: :proto3

  @type t :: %__MODULE__{
          header: Maps.Fleetengine.V1.RequestHeader.t() | nil,
          name: String.t(),
          current_location: Maps.Fleetengine.V1.VehicleLocation.t() | nil,
          current_state: Maps.Fleetengine.V1.VehicleState.t()
        }

  defstruct header: nil,
            name: "",
            current_location: nil,
            current_state: :UNKNOWN_VEHICLE_STATE

  field :header, 1, type: Maps.Fleetengine.V1.RequestHeader
  field :name, 3, type: :string, deprecated: false

  field :current_location, 4,
    type: Maps.Fleetengine.V1.VehicleLocation,
    json_name: "currentLocation",
    deprecated: false

  field :current_state, 5,
    type: Maps.Fleetengine.V1.VehicleState,
    json_name: "currentState",
    enum: true
end
defmodule Maps.Fleetengine.V1.UpdateVehicleAttributesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          header: Maps.Fleetengine.V1.RequestHeader.t() | nil,
          name: String.t(),
          attributes: [Maps.Fleetengine.V1.VehicleAttribute.t()]
        }

  defstruct header: nil,
            name: "",
            attributes: []

  field :header, 1, type: Maps.Fleetengine.V1.RequestHeader
  field :name, 3, type: :string, deprecated: false

  field :attributes, 4,
    repeated: true,
    type: Maps.Fleetengine.V1.VehicleAttribute,
    deprecated: false
end
defmodule Maps.Fleetengine.V1.UpdateVehicleAttributesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          attributes: [Maps.Fleetengine.V1.VehicleAttribute.t()]
        }

  defstruct attributes: []

  field :attributes, 1,
    repeated: true,
    type: Maps.Fleetengine.V1.VehicleAttribute,
    deprecated: false
end
defmodule Maps.Fleetengine.V1.SearchVehiclesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          header: Maps.Fleetengine.V1.RequestHeader.t() | nil,
          parent: String.t(),
          pickup_point: Maps.Fleetengine.V1.TerminalLocation.t() | nil,
          dropoff_point: Maps.Fleetengine.V1.TerminalLocation.t() | nil,
          pickup_radius_meters: integer,
          count: integer,
          minimum_capacity: integer,
          trip_types: [Maps.Fleetengine.V1.TripType.t()],
          maximum_staleness: Google.Protobuf.Duration.t() | nil,
          vehicle_types: [Maps.Fleetengine.V1.Vehicle.VehicleType.t()],
          required_attributes: [Maps.Fleetengine.V1.VehicleAttribute.t()],
          required_one_of_attributes: [Maps.Fleetengine.V1.VehicleAttributeList.t()],
          required_one_of_attribute_sets: [Maps.Fleetengine.V1.VehicleAttributeList.t()],
          order_by: Maps.Fleetengine.V1.SearchVehiclesRequest.VehicleMatchOrder.t(),
          include_back_to_back: boolean,
          trip_id: String.t()
        }

  defstruct header: nil,
            parent: "",
            pickup_point: nil,
            dropoff_point: nil,
            pickup_radius_meters: 0,
            count: 0,
            minimum_capacity: 0,
            trip_types: [],
            maximum_staleness: nil,
            vehicle_types: [],
            required_attributes: [],
            required_one_of_attributes: [],
            required_one_of_attribute_sets: [],
            order_by: :UNKNOWN_VEHICLE_MATCH_ORDER,
            include_back_to_back: false,
            trip_id: ""

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
end
defmodule Maps.Fleetengine.V1.SearchVehiclesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          matches: [Maps.Fleetengine.V1.VehicleMatch.t()]
        }

  defstruct matches: []

  field :matches, 1, repeated: true, type: Maps.Fleetengine.V1.VehicleMatch
end
defmodule Maps.Fleetengine.V1.ListVehiclesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          header: Maps.Fleetengine.V1.RequestHeader.t() | nil,
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          minimum_capacity: Google.Protobuf.Int32Value.t() | nil,
          trip_types: [Maps.Fleetengine.V1.TripType.t()],
          maximum_staleness: Google.Protobuf.Duration.t() | nil,
          vehicle_type_categories: [Maps.Fleetengine.V1.Vehicle.VehicleType.Category.t()],
          required_attributes: [String.t()],
          required_one_of_attributes: [String.t()],
          required_one_of_attribute_sets: [String.t()],
          vehicle_state: Maps.Fleetengine.V1.VehicleState.t(),
          on_trip_only: boolean
        }

  defstruct header: nil,
            parent: "",
            page_size: 0,
            page_token: "",
            minimum_capacity: nil,
            trip_types: [],
            maximum_staleness: nil,
            vehicle_type_categories: [],
            required_attributes: [],
            required_one_of_attributes: [],
            required_one_of_attribute_sets: [],
            vehicle_state: :UNKNOWN_VEHICLE_STATE,
            on_trip_only: false

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
end
defmodule Maps.Fleetengine.V1.ListVehiclesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          vehicles: [Maps.Fleetengine.V1.Vehicle.t()],
          next_page_token: String.t(),
          total_size: integer
        }

  defstruct vehicles: [],
            next_page_token: "",
            total_size: 0

  field :vehicles, 1, repeated: true, type: Maps.Fleetengine.V1.Vehicle
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int64, json_name: "totalSize", deprecated: false
end
defmodule Maps.Fleetengine.V1.Waypoint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          lat_lng: Google.Type.LatLng.t() | nil,
          eta: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct lat_lng: nil,
            eta: nil

  field :lat_lng, 1, type: Google.Type.LatLng, json_name: "latLng"
  field :eta, 2, type: Google.Protobuf.Timestamp
end
defmodule Maps.Fleetengine.V1.VehicleMatch do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          vehicle: Maps.Fleetengine.V1.Vehicle.t() | nil,
          vehicle_pickup_eta: Google.Protobuf.Timestamp.t() | nil,
          vehicle_pickup_distance_meters: Google.Protobuf.Int32Value.t() | nil,
          vehicle_pickup_straight_line_distance_meters: Google.Protobuf.Int32Value.t() | nil,
          vehicle_dropoff_eta: Google.Protobuf.Timestamp.t() | nil,
          vehicle_pickup_to_dropoff_distance_meters: Google.Protobuf.Int32Value.t() | nil,
          trip_type: Maps.Fleetengine.V1.TripType.t(),
          vehicle_trips_waypoints: [Maps.Fleetengine.V1.Waypoint.t()],
          vehicle_match_type: Maps.Fleetengine.V1.VehicleMatch.VehicleMatchType.t(),
          requested_ordered_by: Maps.Fleetengine.V1.SearchVehiclesRequest.VehicleMatchOrder.t(),
          ordered_by: Maps.Fleetengine.V1.SearchVehiclesRequest.VehicleMatchOrder.t()
        }

  defstruct vehicle: nil,
            vehicle_pickup_eta: nil,
            vehicle_pickup_distance_meters: nil,
            vehicle_pickup_straight_line_distance_meters: nil,
            vehicle_dropoff_eta: nil,
            vehicle_pickup_to_dropoff_distance_meters: nil,
            trip_type: :UNKNOWN_TRIP_TYPE,
            vehicle_trips_waypoints: [],
            vehicle_match_type: :UNKNOWN,
            requested_ordered_by: :UNKNOWN_VEHICLE_MATCH_ORDER,
            ordered_by: :UNKNOWN_VEHICLE_MATCH_ORDER

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          attributes: [Maps.Fleetengine.V1.VehicleAttribute.t()]
        }

  defstruct attributes: []

  field :attributes, 1, repeated: true, type: Maps.Fleetengine.V1.VehicleAttribute
end
defmodule Maps.Fleetengine.V1.VehicleService.Service do
  @moduledoc false
  use GRPC.Service, name: "maps.fleetengine.v1.VehicleService"

  rpc :CreateVehicle, Maps.Fleetengine.V1.CreateVehicleRequest, Maps.Fleetengine.V1.Vehicle

  rpc :GetVehicle, Maps.Fleetengine.V1.GetVehicleRequest, Maps.Fleetengine.V1.Vehicle

  rpc :UpdateVehicle, Maps.Fleetengine.V1.UpdateVehicleRequest, Maps.Fleetengine.V1.Vehicle

  rpc :UpdateVehicleLocation,
      Maps.Fleetengine.V1.UpdateVehicleLocationRequest,
      Maps.Fleetengine.V1.VehicleLocation

  rpc :UpdateVehicleAttributes,
      Maps.Fleetengine.V1.UpdateVehicleAttributesRequest,
      Maps.Fleetengine.V1.UpdateVehicleAttributesResponse

  rpc :ListVehicles,
      Maps.Fleetengine.V1.ListVehiclesRequest,
      Maps.Fleetengine.V1.ListVehiclesResponse

  rpc :SearchVehicles,
      Maps.Fleetengine.V1.SearchVehiclesRequest,
      Maps.Fleetengine.V1.SearchVehiclesResponse

  rpc :SearchFuzzedVehicles,
      Maps.Fleetengine.V1.SearchVehiclesRequest,
      Maps.Fleetengine.V1.SearchVehiclesResponse
end

defmodule Maps.Fleetengine.V1.VehicleService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Maps.Fleetengine.V1.VehicleService.Service
end
