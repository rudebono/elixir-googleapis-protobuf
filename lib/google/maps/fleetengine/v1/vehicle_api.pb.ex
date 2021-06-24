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

  defstruct [:header, :parent, :vehicle_id, :vehicle]

  field :header, 1, type: Maps.Fleetengine.V1.RequestHeader
  field :parent, 3, type: :string
  field :vehicle_id, 4, type: :string
  field :vehicle, 5, type: Maps.Fleetengine.V1.Vehicle
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

  defstruct [:header, :name, :current_route_segment_version, :waypoints_version]

  field :header, 1, type: Maps.Fleetengine.V1.RequestHeader
  field :name, 3, type: :string
  field :current_route_segment_version, 4, type: Google.Protobuf.Timestamp
  field :waypoints_version, 5, type: Google.Protobuf.Timestamp
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

  defstruct [:header, :name, :vehicle, :update_mask]

  field :header, 1, type: Maps.Fleetengine.V1.RequestHeader
  field :name, 3, type: :string
  field :vehicle, 4, type: Maps.Fleetengine.V1.Vehicle
  field :update_mask, 5, type: Google.Protobuf.FieldMask
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

  defstruct [:header, :name, :current_location, :current_state]

  field :header, 1, type: Maps.Fleetengine.V1.RequestHeader
  field :name, 3, type: :string
  field :current_location, 4, type: Maps.Fleetengine.V1.VehicleLocation
  field :current_state, 5, type: Maps.Fleetengine.V1.VehicleState, enum: true
end

defmodule Maps.Fleetengine.V1.UpdateVehicleAttributesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          header: Maps.Fleetengine.V1.RequestHeader.t() | nil,
          name: String.t(),
          attributes: [Maps.Fleetengine.V1.VehicleAttribute.t()]
        }

  defstruct [:header, :name, :attributes]

  field :header, 1, type: Maps.Fleetengine.V1.RequestHeader
  field :name, 3, type: :string
  field :attributes, 4, repeated: true, type: Maps.Fleetengine.V1.VehicleAttribute
end

defmodule Maps.Fleetengine.V1.UpdateVehicleAttributesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          attributes: [Maps.Fleetengine.V1.VehicleAttribute.t()]
        }

  defstruct [:attributes]

  field :attributes, 1, repeated: true, type: Maps.Fleetengine.V1.VehicleAttribute
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
          trip_types: [[Maps.Fleetengine.V1.TripType.t()]],
          maximum_staleness: Google.Protobuf.Duration.t() | nil,
          vehicle_types: [Maps.Fleetengine.V1.Vehicle.VehicleType.t()],
          required_attributes: [Maps.Fleetengine.V1.VehicleAttribute.t()],
          required_one_of_attributes: [Maps.Fleetengine.V1.VehicleAttributeList.t()],
          required_one_of_attribute_sets: [Maps.Fleetengine.V1.VehicleAttributeList.t()],
          order_by: Maps.Fleetengine.V1.SearchVehiclesRequest.VehicleMatchOrder.t(),
          include_back_to_back: boolean,
          trip_id: String.t()
        }

  defstruct [
    :header,
    :parent,
    :pickup_point,
    :dropoff_point,
    :pickup_radius_meters,
    :count,
    :minimum_capacity,
    :trip_types,
    :maximum_staleness,
    :vehicle_types,
    :required_attributes,
    :required_one_of_attributes,
    :required_one_of_attribute_sets,
    :order_by,
    :include_back_to_back,
    :trip_id
  ]

  field :header, 1, type: Maps.Fleetengine.V1.RequestHeader
  field :parent, 3, type: :string
  field :pickup_point, 4, type: Maps.Fleetengine.V1.TerminalLocation
  field :dropoff_point, 5, type: Maps.Fleetengine.V1.TerminalLocation
  field :pickup_radius_meters, 6, type: :int32
  field :count, 7, type: :int32
  field :minimum_capacity, 8, type: :int32
  field :trip_types, 9, repeated: true, type: Maps.Fleetengine.V1.TripType, enum: true
  field :maximum_staleness, 10, type: Google.Protobuf.Duration
  field :vehicle_types, 14, repeated: true, type: Maps.Fleetengine.V1.Vehicle.VehicleType
  field :required_attributes, 12, repeated: true, type: Maps.Fleetengine.V1.VehicleAttribute

  field :required_one_of_attributes, 15,
    repeated: true,
    type: Maps.Fleetengine.V1.VehicleAttributeList

  field :required_one_of_attribute_sets, 20,
    repeated: true,
    type: Maps.Fleetengine.V1.VehicleAttributeList

  field :order_by, 13,
    type: Maps.Fleetengine.V1.SearchVehiclesRequest.VehicleMatchOrder,
    enum: true

  field :include_back_to_back, 18, type: :bool
  field :trip_id, 19, type: :string
end

defmodule Maps.Fleetengine.V1.SearchVehiclesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          matches: [Maps.Fleetengine.V1.VehicleMatch.t()]
        }

  defstruct [:matches]

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
          trip_types: [[Maps.Fleetengine.V1.TripType.t()]],
          maximum_staleness: Google.Protobuf.Duration.t() | nil,
          vehicle_type_categories: [[Maps.Fleetengine.V1.Vehicle.VehicleType.Category.t()]],
          required_attributes: [String.t()],
          required_one_of_attributes: [String.t()],
          required_one_of_attribute_sets: [String.t()],
          vehicle_state: Maps.Fleetengine.V1.VehicleState.t(),
          on_trip_only: boolean
        }

  defstruct [
    :header,
    :parent,
    :page_size,
    :page_token,
    :minimum_capacity,
    :trip_types,
    :maximum_staleness,
    :vehicle_type_categories,
    :required_attributes,
    :required_one_of_attributes,
    :required_one_of_attribute_sets,
    :vehicle_state,
    :on_trip_only
  ]

  field :header, 12, type: Maps.Fleetengine.V1.RequestHeader
  field :parent, 1, type: :string
  field :page_size, 3, type: :int32
  field :page_token, 4, type: :string
  field :minimum_capacity, 6, type: Google.Protobuf.Int32Value
  field :trip_types, 7, repeated: true, type: Maps.Fleetengine.V1.TripType, enum: true
  field :maximum_staleness, 8, type: Google.Protobuf.Duration

  field :vehicle_type_categories, 9,
    repeated: true,
    type: Maps.Fleetengine.V1.Vehicle.VehicleType.Category,
    enum: true

  field :required_attributes, 10, repeated: true, type: :string
  field :required_one_of_attributes, 13, repeated: true, type: :string
  field :required_one_of_attribute_sets, 15, repeated: true, type: :string
  field :vehicle_state, 11, type: Maps.Fleetengine.V1.VehicleState, enum: true
  field :on_trip_only, 14, type: :bool
end

defmodule Maps.Fleetengine.V1.ListVehiclesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          vehicles: [Maps.Fleetengine.V1.Vehicle.t()],
          next_page_token: String.t(),
          total_size: integer
        }

  defstruct [:vehicles, :next_page_token, :total_size]

  field :vehicles, 1, repeated: true, type: Maps.Fleetengine.V1.Vehicle
  field :next_page_token, 2, type: :string
  field :total_size, 3, type: :int64
end

defmodule Maps.Fleetengine.V1.Waypoint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          lat_lng: Google.Type.LatLng.t() | nil,
          eta: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:lat_lng, :eta]

  field :lat_lng, 1, type: Google.Type.LatLng
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

  defstruct [
    :vehicle,
    :vehicle_pickup_eta,
    :vehicle_pickup_distance_meters,
    :vehicle_pickup_straight_line_distance_meters,
    :vehicle_dropoff_eta,
    :vehicle_pickup_to_dropoff_distance_meters,
    :trip_type,
    :vehicle_trips_waypoints,
    :vehicle_match_type,
    :requested_ordered_by,
    :ordered_by
  ]

  field :vehicle, 1, type: Maps.Fleetengine.V1.Vehicle
  field :vehicle_pickup_eta, 2, type: Google.Protobuf.Timestamp
  field :vehicle_pickup_distance_meters, 3, type: Google.Protobuf.Int32Value
  field :vehicle_pickup_straight_line_distance_meters, 11, type: Google.Protobuf.Int32Value
  field :vehicle_dropoff_eta, 4, type: Google.Protobuf.Timestamp
  field :vehicle_pickup_to_dropoff_distance_meters, 5, type: Google.Protobuf.Int32Value
  field :trip_type, 6, type: Maps.Fleetengine.V1.TripType, enum: true
  field :vehicle_trips_waypoints, 7, repeated: true, type: Maps.Fleetengine.V1.Waypoint

  field :vehicle_match_type, 8,
    type: Maps.Fleetengine.V1.VehicleMatch.VehicleMatchType,
    enum: true

  field :requested_ordered_by, 9,
    type: Maps.Fleetengine.V1.SearchVehiclesRequest.VehicleMatchOrder,
    enum: true

  field :ordered_by, 10,
    type: Maps.Fleetengine.V1.SearchVehiclesRequest.VehicleMatchOrder,
    enum: true
end

defmodule Maps.Fleetengine.V1.VehicleAttributeList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          attributes: [Maps.Fleetengine.V1.VehicleAttribute.t()]
        }

  defstruct [:attributes]

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