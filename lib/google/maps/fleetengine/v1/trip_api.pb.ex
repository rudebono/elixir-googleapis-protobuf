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

  defstruct header: nil,
            parent: "",
            trip_id: "",
            trip: nil

  field :header, 1, type: Maps.Fleetengine.V1.RequestHeader
  field :parent, 3, type: :string, deprecated: false
  field :trip_id, 5, type: :string, json_name: "tripId", deprecated: false
  field :trip, 4, type: Maps.Fleetengine.V1.Trip, deprecated: false
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

  defstruct header: nil,
            name: "",
            view: :TRIP_VIEW_UNSPECIFIED,
            current_route_segment_version: nil,
            remaining_waypoints_version: nil,
            route_format_type: :UNKNOWN_FORMAT_TYPE

  field :header, 1, type: Maps.Fleetengine.V1.RequestHeader
  field :name, 3, type: :string, deprecated: false
  field :view, 11, type: Maps.Fleetengine.V1.TripView, enum: true

  field :current_route_segment_version, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "currentRouteSegmentVersion"

  field :remaining_waypoints_version, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "remainingWaypointsVersion"

  field :route_format_type, 8,
    type: Maps.Fleetengine.V1.PolylineFormatType,
    json_name: "routeFormatType",
    enum: true
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

  defstruct name: "",
            country_code: "",
            platform: :BILLING_PLATFORM_IDENTIFIER_UNSPECIFIED,
            related_ids: [],
            solution_type: :SOLUTION_TYPE_UNSPECIFIED

  field :name, 2, type: :string, deprecated: false
  field :country_code, 3, type: :string, json_name: "countryCode", deprecated: false
  field :platform, 5, type: Maps.Fleetengine.V1.BillingPlatformIdentifier, enum: true
  field :related_ids, 6, repeated: true, type: :string, json_name: "relatedIds"

  field :solution_type, 7,
    type: Maps.Fleetengine.V1.ReportBillableTripRequest.SolutionType,
    json_name: "solutionType",
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

  defstruct header: nil,
            name: "",
            trip: nil,
            update_mask: nil

  field :header, 1, type: Maps.Fleetengine.V1.RequestHeader
  field :name, 3, type: :string, deprecated: false
  field :trip, 4, type: Maps.Fleetengine.V1.Trip, deprecated: false

  field :update_mask, 5,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
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

  defstruct header: nil,
            parent: "",
            vehicle_id: "",
            active_trips_only: false,
            page_size: 0,
            page_token: "",
            minimum_staleness: nil

  field :header, 1, type: Maps.Fleetengine.V1.RequestHeader
  field :parent, 3, type: :string, deprecated: false
  field :vehicle_id, 4, type: :string, json_name: "vehicleId"
  field :active_trips_only, 5, type: :bool, json_name: "activeTripsOnly"
  field :page_size, 6, type: :int32, json_name: "pageSize"
  field :page_token, 7, type: :string, json_name: "pageToken"
  field :minimum_staleness, 8, type: Google.Protobuf.Duration, json_name: "minimumStaleness"
end
defmodule Maps.Fleetengine.V1.SearchTripsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          trips: [Maps.Fleetengine.V1.Trip.t()],
          next_page_token: String.t()
        }

  defstruct trips: [],
            next_page_token: ""

  field :trips, 1, repeated: true, type: Maps.Fleetengine.V1.Trip
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
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
