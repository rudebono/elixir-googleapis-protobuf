defmodule Maps.Fleetengine.Delivery.V1.Task.Type do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :PICKUP, 1
  field :DELIVERY, 2
  field :SCHEDULED_STOP, 3
  field :UNAVAILABLE, 4
end

defmodule Maps.Fleetengine.Delivery.V1.Task.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :OPEN, 1
  field :CLOSED, 2
end

defmodule Maps.Fleetengine.Delivery.V1.Task.TaskOutcome do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :TASK_OUTCOME_UNSPECIFIED, 0
  field :SUCCEEDED, 1
  field :FAILED, 2
end

defmodule Maps.Fleetengine.Delivery.V1.Task.TaskOutcomeLocationSource do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :TASK_OUTCOME_LOCATION_SOURCE_UNSPECIFIED, 0
  field :PROVIDER, 2
  field :LAST_VEHICLE_LOCATION, 3
end

defmodule Maps.Fleetengine.Delivery.V1.Task.JourneySharingInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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

  field :journey_sharing_info, 8,
    type: Maps.Fleetengine.Delivery.V1.Task.JourneySharingInfo,
    json_name: "journeySharingInfo",
    deprecated: false
end