defmodule Maps.Fleetengine.Delivery.V1.Task.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :PICKUP, 1
  field :DELIVERY, 2
  field :SCHEDULED_STOP, 3
  field :UNAVAILABLE, 4
end

defmodule Maps.Fleetengine.Delivery.V1.Task.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :OPEN, 1
  field :CLOSED, 2
end

defmodule Maps.Fleetengine.Delivery.V1.Task.TaskOutcome do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :TASK_OUTCOME_UNSPECIFIED, 0
  field :SUCCEEDED, 1
  field :FAILED, 2
end

defmodule Maps.Fleetengine.Delivery.V1.Task.TaskOutcomeLocationSource do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :TASK_OUTCOME_LOCATION_SOURCE_UNSPECIFIED, 0
  field :PROVIDER, 2
  field :LAST_VEHICLE_LOCATION, 3
end

defmodule Maps.Fleetengine.Delivery.V1.Task.JourneySharingInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :remaining_vehicle_journey_segments, 1,
    repeated: true,
    type: Maps.Fleetengine.Delivery.V1.VehicleJourneySegment,
    json_name: "remainingVehicleJourneySegments"

  field :last_location, 2,
    type: Maps.Fleetengine.Delivery.V1.DeliveryVehicleLocation,
    json_name: "lastLocation"

  field :last_location_snappable, 3, type: :bool, json_name: "lastLocationSnappable"
end

defmodule Maps.Fleetengine.Delivery.V1.Task do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :type, 2, type: Maps.Fleetengine.Delivery.V1.Task.Type, enum: true, deprecated: false
  field :state, 3, type: Maps.Fleetengine.Delivery.V1.Task.State, enum: true, deprecated: false

  field :task_outcome, 9,
    type: Maps.Fleetengine.Delivery.V1.Task.TaskOutcome,
    json_name: "taskOutcome",
    enum: true

  field :task_outcome_time, 10, type: Google.Protobuf.Timestamp, json_name: "taskOutcomeTime"

  field :task_outcome_location, 11,
    type: Maps.Fleetengine.Delivery.V1.LocationInfo,
    json_name: "taskOutcomeLocation"

  field :task_outcome_location_source, 12,
    type: Maps.Fleetengine.Delivery.V1.Task.TaskOutcomeLocationSource,
    json_name: "taskOutcomeLocationSource",
    enum: true

  field :tracking_id, 4, type: :string, json_name: "trackingId", deprecated: false
  field :delivery_vehicle_id, 5, type: :string, json_name: "deliveryVehicleId", deprecated: false

  field :planned_location, 6,
    type: Maps.Fleetengine.Delivery.V1.LocationInfo,
    json_name: "plannedLocation",
    deprecated: false

  field :task_duration, 7,
    type: Google.Protobuf.Duration,
    json_name: "taskDuration",
    deprecated: false

  field :target_time_window, 14,
    type: Maps.Fleetengine.Delivery.V1.TimeWindow,
    json_name: "targetTimeWindow"

  field :journey_sharing_info, 8,
    type: Maps.Fleetengine.Delivery.V1.Task.JourneySharingInfo,
    json_name: "journeySharingInfo",
    deprecated: false

  field :task_tracking_view_config, 13,
    type: Maps.Fleetengine.Delivery.V1.TaskTrackingViewConfig,
    json_name: "taskTrackingViewConfig"

  field :attributes, 15, repeated: true, type: Maps.Fleetengine.Delivery.V1.TaskAttribute
end

defmodule Maps.Fleetengine.Delivery.V1.TaskTrackingViewConfig.VisibilityOption do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :visibility_option, 0

  field :remaining_stop_count_threshold, 1,
    type: :int32,
    json_name: "remainingStopCountThreshold",
    oneof: 0

  field :duration_until_estimated_arrival_time_threshold, 2,
    type: Google.Protobuf.Duration,
    json_name: "durationUntilEstimatedArrivalTimeThreshold",
    oneof: 0

  field :remaining_driving_distance_meters_threshold, 3,
    type: :int32,
    json_name: "remainingDrivingDistanceMetersThreshold",
    oneof: 0

  field :always, 4, type: :bool, oneof: 0
  field :never, 5, type: :bool, oneof: 0
end

defmodule Maps.Fleetengine.Delivery.V1.TaskTrackingViewConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :route_polyline_points_visibility, 1,
    type: Maps.Fleetengine.Delivery.V1.TaskTrackingViewConfig.VisibilityOption,
    json_name: "routePolylinePointsVisibility"

  field :estimated_arrival_time_visibility, 2,
    type: Maps.Fleetengine.Delivery.V1.TaskTrackingViewConfig.VisibilityOption,
    json_name: "estimatedArrivalTimeVisibility"

  field :estimated_task_completion_time_visibility, 3,
    type: Maps.Fleetengine.Delivery.V1.TaskTrackingViewConfig.VisibilityOption,
    json_name: "estimatedTaskCompletionTimeVisibility"

  field :remaining_driving_distance_visibility, 4,
    type: Maps.Fleetengine.Delivery.V1.TaskTrackingViewConfig.VisibilityOption,
    json_name: "remainingDrivingDistanceVisibility"

  field :remaining_stop_count_visibility, 5,
    type: Maps.Fleetengine.Delivery.V1.TaskTrackingViewConfig.VisibilityOption,
    json_name: "remainingStopCountVisibility"

  field :vehicle_location_visibility, 6,
    type: Maps.Fleetengine.Delivery.V1.TaskTrackingViewConfig.VisibilityOption,
    json_name: "vehicleLocationVisibility"
end
