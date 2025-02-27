defmodule Maps.Fleetengine.Delivery.V1.DeliveryVehicle.DeliveryVehicleType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :DELIVERY_VEHICLE_TYPE_UNSPECIFIED, 0
  field :AUTO, 1
  field :TWO_WHEELER, 2
  field :BICYCLE, 3
  field :PEDESTRIAN, 4
end

defmodule Maps.Fleetengine.Delivery.V1.VehicleStop.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :NEW, 1
  field :ENROUTE, 2
  field :ARRIVED, 3
end

defmodule Maps.Fleetengine.Delivery.V1.DeliveryVehicle do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string

  field :last_location, 2,
    type: Maps.Fleetengine.Delivery.V1.DeliveryVehicleLocation,
    json_name: "lastLocation"

  field :past_locations, 12,
    repeated: true,
    type: Maps.Fleetengine.Delivery.V1.DeliveryVehicleLocation,
    json_name: "pastLocations",
    deprecated: false

  field :navigation_status, 3,
    type: Maps.Fleetengine.Delivery.V1.DeliveryVehicleNavigationStatus,
    json_name: "navigationStatus",
    enum: true

  field :current_route_segment, 4, type: :bytes, json_name: "currentRouteSegment"

  field :current_route_segment_end_point, 5,
    type: Google.Type.LatLng,
    json_name: "currentRouteSegmentEndPoint"

  field :remaining_distance_meters, 6,
    type: Google.Protobuf.Int32Value,
    json_name: "remainingDistanceMeters"

  field :remaining_duration, 7, type: Google.Protobuf.Duration, json_name: "remainingDuration"

  field :remaining_vehicle_journey_segments, 8,
    repeated: true,
    type: Maps.Fleetengine.Delivery.V1.VehicleJourneySegment,
    json_name: "remainingVehicleJourneySegments"

  field :attributes, 9,
    repeated: true,
    type: Maps.Fleetengine.Delivery.V1.DeliveryVehicleAttribute

  field :type, 10,
    type: Maps.Fleetengine.Delivery.V1.DeliveryVehicle.DeliveryVehicleType,
    enum: true
end

defmodule Maps.Fleetengine.Delivery.V1.LocationInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :point, 1, type: Google.Type.LatLng
end

defmodule Maps.Fleetengine.Delivery.V1.VehicleJourneySegment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :stop, 1, type: Maps.Fleetengine.Delivery.V1.VehicleStop

  field :driving_distance_meters, 2,
    type: Google.Protobuf.Int32Value,
    json_name: "drivingDistanceMeters",
    deprecated: false

  field :driving_duration, 3,
    type: Google.Protobuf.Duration,
    json_name: "drivingDuration",
    deprecated: false

  field :path, 5, repeated: true, type: Google.Type.LatLng, deprecated: false
end

defmodule Maps.Fleetengine.Delivery.V1.VehicleStop.TaskInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :task_id, 1, type: :string, json_name: "taskId"

  field :task_duration, 2,
    type: Google.Protobuf.Duration,
    json_name: "taskDuration",
    deprecated: false

  field :target_time_window, 3,
    type: Maps.Fleetengine.Delivery.V1.TimeWindow,
    json_name: "targetTimeWindow",
    deprecated: false
end

defmodule Maps.Fleetengine.Delivery.V1.VehicleStop do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :planned_location, 1,
    type: Maps.Fleetengine.Delivery.V1.LocationInfo,
    json_name: "plannedLocation",
    deprecated: false

  field :tasks, 2, repeated: true, type: Maps.Fleetengine.Delivery.V1.VehicleStop.TaskInfo
  field :state, 3, type: Maps.Fleetengine.Delivery.V1.VehicleStop.State, enum: true
end
