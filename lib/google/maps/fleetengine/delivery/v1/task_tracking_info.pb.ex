defmodule Maps.Fleetengine.Delivery.V1.TaskTrackingInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :tracking_id, 2, type: :string, json_name: "trackingId", deprecated: false

  field :vehicle_location, 3,
    type: Maps.Fleetengine.Delivery.V1.DeliveryVehicleLocation,
    json_name: "vehicleLocation"

  field :route_polyline_points, 4,
    repeated: true,
    type: Google.Type.LatLng,
    json_name: "routePolylinePoints"

  field :remaining_stop_count, 5,
    type: Google.Protobuf.Int32Value,
    json_name: "remainingStopCount"

  field :remaining_driving_distance_meters, 6,
    type: Google.Protobuf.Int32Value,
    json_name: "remainingDrivingDistanceMeters"

  field :estimated_arrival_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "estimatedArrivalTime"

  field :estimated_task_completion_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "estimatedTaskCompletionTime"

  field :state, 11, type: Maps.Fleetengine.Delivery.V1.Task.State, enum: true

  field :task_outcome, 9,
    type: Maps.Fleetengine.Delivery.V1.Task.TaskOutcome,
    json_name: "taskOutcome",
    enum: true

  field :task_outcome_time, 12, type: Google.Protobuf.Timestamp, json_name: "taskOutcomeTime"

  field :planned_location, 10,
    type: Maps.Fleetengine.Delivery.V1.LocationInfo,
    json_name: "plannedLocation",
    deprecated: false

  field :target_time_window, 13,
    type: Maps.Fleetengine.Delivery.V1.TimeWindow,
    json_name: "targetTimeWindow"

  field :attributes, 14, repeated: true, type: Maps.Fleetengine.Delivery.V1.TaskAttribute
end
