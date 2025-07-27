defmodule Maps.Fleetengine.V1.ReportBillableTripRequest.SolutionType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SOLUTION_TYPE_UNSPECIFIED, 0
  field :ON_DEMAND_RIDESHARING_AND_DELIVERIES, 1
end

defmodule Maps.Fleetengine.V1.CreateTripRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :header, 1, type: Maps.Fleetengine.V1.RequestHeader
  field :parent, 3, type: :string, deprecated: false
  field :trip_id, 5, type: :string, json_name: "tripId", deprecated: false
  field :trip, 4, type: Maps.Fleetengine.V1.Trip, deprecated: false
end

defmodule Maps.Fleetengine.V1.GetTripRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :header, 1, type: Maps.Fleetengine.V1.RequestHeader
  field :name, 3, type: :string, deprecated: false
  field :view, 11, type: Maps.Fleetengine.V1.TripView, enum: true

  field :current_route_segment_version, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "currentRouteSegmentVersion"

  field :remaining_waypoints_version, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "remainingWaypointsVersion",
    deprecated: true

  field :route_format_type, 8,
    type: Maps.Fleetengine.V1.PolylineFormatType,
    json_name: "routeFormatType",
    enum: true

  field :current_route_segment_traffic_version, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "currentRouteSegmentTrafficVersion"

  field :remaining_waypoints_route_version, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "remainingWaypointsRouteVersion"
end

defmodule Maps.Fleetengine.V1.DeleteTripRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :header, 1, type: Maps.Fleetengine.V1.RequestHeader, deprecated: false
  field :name, 2, type: :string, deprecated: false
end

defmodule Maps.Fleetengine.V1.ReportBillableTripRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :trips, 1, repeated: true, type: Maps.Fleetengine.V1.Trip
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Maps.Fleetengine.V1.TripService.Service do
  @moduledoc false

  use GRPC.Service, name: "maps.fleetengine.v1.TripService", protoc_gen_elixir_version: "0.15.0"

  rpc :CreateTrip, Maps.Fleetengine.V1.CreateTripRequest, Maps.Fleetengine.V1.Trip

  rpc :GetTrip, Maps.Fleetengine.V1.GetTripRequest, Maps.Fleetengine.V1.Trip

  rpc :DeleteTrip, Maps.Fleetengine.V1.DeleteTripRequest, Google.Protobuf.Empty

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
