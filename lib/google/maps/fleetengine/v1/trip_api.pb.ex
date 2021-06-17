defmodule Maps.Fleetengine.V1.ReportBillableTripRequest.SolutionType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :SOLUTION_TYPE_UNSPECIFIED | :ON_DEMAND_RIDESHARING_AND_DELIVERIES

  field :SOLUTION_TYPE_UNSPECIFIED, 0

  field :ON_DEMAND_RIDESHARING_AND_DELIVERIES, 1
end

defmodule Maps.Fleetengine.V1.CreateTripRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          header: Maps.Fleetengine.V1.RequestHeader.t() | nil,
          parent: String.t(),
          trip_id: String.t(),
          trip: Maps.Fleetengine.V1.Trip.t() | nil
        }

  defstruct [:header, :parent, :trip_id, :trip]

  field :header, 1, type: Maps.Fleetengine.V1.RequestHeader
  field :parent, 3, type: :string
  field :trip_id, 5, type: :string
  field :trip, 4, type: Maps.Fleetengine.V1.Trip
end

defmodule Maps.Fleetengine.V1.GetTripRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          header: Maps.Fleetengine.V1.RequestHeader.t() | nil,
          name: String.t(),
          view: Maps.Fleetengine.V1.TripView.t(),
          current_route_segment_version: Google.Protobuf.Timestamp.t() | nil,
          remaining_waypoints_version: Google.Protobuf.Timestamp.t() | nil,
          route_format_type: Maps.Fleetengine.V1.PolylineFormatType.t()
        }

  defstruct [
    :header,
    :name,
    :view,
    :current_route_segment_version,
    :remaining_waypoints_version,
    :route_format_type
  ]

  field :header, 1, type: Maps.Fleetengine.V1.RequestHeader
  field :name, 3, type: :string
  field :view, 11, type: Maps.Fleetengine.V1.TripView, enum: true
  field :current_route_segment_version, 6, type: Google.Protobuf.Timestamp
  field :remaining_waypoints_version, 7, type: Google.Protobuf.Timestamp
  field :route_format_type, 8, type: Maps.Fleetengine.V1.PolylineFormatType, enum: true
end

defmodule Maps.Fleetengine.V1.ReportBillableTripRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          country_code: String.t(),
          platform: Maps.Fleetengine.V1.BillingPlatformIdentifier.t(),
          related_ids: [String.t()],
          solution_type: Maps.Fleetengine.V1.ReportBillableTripRequest.SolutionType.t()
        }

  defstruct [:name, :country_code, :platform, :related_ids, :solution_type]

  field :name, 2, type: :string
  field :country_code, 3, type: :string
  field :platform, 5, type: Maps.Fleetengine.V1.BillingPlatformIdentifier, enum: true
  field :related_ids, 6, repeated: true, type: :string

  field :solution_type, 7,
    type: Maps.Fleetengine.V1.ReportBillableTripRequest.SolutionType,
    enum: true
end

defmodule Maps.Fleetengine.V1.UpdateTripRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          header: Maps.Fleetengine.V1.RequestHeader.t() | nil,
          name: String.t(),
          trip: Maps.Fleetengine.V1.Trip.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:header, :name, :trip, :update_mask]

  field :header, 1, type: Maps.Fleetengine.V1.RequestHeader
  field :name, 3, type: :string
  field :trip, 4, type: Maps.Fleetengine.V1.Trip
  field :update_mask, 5, type: Google.Protobuf.FieldMask
end

defmodule Maps.Fleetengine.V1.SearchTripsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          header: Maps.Fleetengine.V1.RequestHeader.t() | nil,
          parent: String.t(),
          vehicle_id: String.t(),
          active_trips_only: boolean,
          page_size: integer,
          page_token: String.t(),
          minimum_staleness: Google.Protobuf.Duration.t() | nil
        }

  defstruct [
    :header,
    :parent,
    :vehicle_id,
    :active_trips_only,
    :page_size,
    :page_token,
    :minimum_staleness
  ]

  field :header, 1, type: Maps.Fleetengine.V1.RequestHeader
  field :parent, 3, type: :string
  field :vehicle_id, 4, type: :string
  field :active_trips_only, 5, type: :bool
  field :page_size, 6, type: :int32
  field :page_token, 7, type: :string
  field :minimum_staleness, 8, type: Google.Protobuf.Duration
end

defmodule Maps.Fleetengine.V1.SearchTripsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          trips: [Maps.Fleetengine.V1.Trip.t()],
          next_page_token: String.t()
        }

  defstruct [:trips, :next_page_token]

  field :trips, 1, repeated: true, type: Maps.Fleetengine.V1.Trip
  field :next_page_token, 2, type: :string
end

defmodule Maps.Fleetengine.V1.TripService.Service do
  @moduledoc false
  use GRPC.Service, name: "maps.fleetengine.v1.TripService"

  rpc :CreateTrip, Maps.Fleetengine.V1.CreateTripRequest, Maps.Fleetengine.V1.Trip

  rpc :GetTrip, Maps.Fleetengine.V1.GetTripRequest, Maps.Fleetengine.V1.Trip

  rpc :ReportBillableTrip, Maps.Fleetengine.V1.ReportBillableTripRequest, Google.Protobuf.Empty

  rpc :SearchTrips,
      Maps.Fleetengine.V1.SearchTripsRequest,
      Maps.Fleetengine.V1.SearchTripsResponse

  rpc :UpdateTrip, Maps.Fleetengine.V1.UpdateTripRequest, Maps.Fleetengine.V1.Trip
end

defmodule Maps.Fleetengine.V1.TripService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Maps.Fleetengine.V1.TripService.Service
end
