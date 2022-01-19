defmodule Maps.Fleetengine.Delivery.V1.VehicleStop.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATE_UNSPECIFIED | :NEW | :ENROUTE | :ARRIVED

  field :STATE_UNSPECIFIED, 0
  field :NEW, 1
  field :ENROUTE, 2
  field :ARRIVED, 3
end
defmodule Maps.Fleetengine.Delivery.V1.DeliveryVehicle do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          last_location: Maps.Fleetengine.V1.VehicleLocation.t() | nil,
          navigation_status: Maps.Fleetengine.V1.NavigationStatus.t(),
          current_route_segment: binary,
          current_route_segment_end_point: Google.Type.LatLng.t() | nil,
          remaining_distance_meters: Google.Protobuf.Int32Value.t() | nil,
          remaining_duration: Google.Protobuf.Duration.t() | nil,
          remaining_vehicle_journey_segments: [
            Maps.Fleetengine.Delivery.V1.VehicleJourneySegment.t()
          ],
          attributes: [Maps.Fleetengine.V1.VehicleAttribute.t()]
        }

  defstruct name: "",
            last_location: nil,
            navigation_status: :UNKNOWN_NAVIGATION_STATUS,
            current_route_segment: "",
            current_route_segment_end_point: nil,
            remaining_distance_meters: nil,
            remaining_duration: nil,
            remaining_vehicle_journey_segments: [],
            attributes: []

  field :name, 1, type: :string
  field :last_location, 2, type: Maps.Fleetengine.V1.VehicleLocation, json_name: "lastLocation"

  field :navigation_status, 3,
    type: Maps.Fleetengine.V1.NavigationStatus,
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

  field :attributes, 9, repeated: true, type: Maps.Fleetengine.V1.VehicleAttribute
end
defmodule Maps.Fleetengine.Delivery.V1.LocationInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          point: Google.Type.LatLng.t() | nil
        }

  defstruct point: nil

  field :point, 1, type: Google.Type.LatLng
end
defmodule Maps.Fleetengine.Delivery.V1.VehicleJourneySegment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          stop: Maps.Fleetengine.Delivery.V1.VehicleStop.t() | nil,
          driving_distance_meters: Google.Protobuf.Int32Value.t() | nil,
          driving_duration: Google.Protobuf.Duration.t() | nil,
          path: [Google.Type.LatLng.t()]
        }

  defstruct stop: nil,
            driving_distance_meters: nil,
            driving_duration: nil,
            path: []

  field :stop, 1, type: Maps.Fleetengine.Delivery.V1.VehicleStop

  field :driving_distance_meters, 2,
    type: Google.Protobuf.Int32Value,
    json_name: "drivingDistanceMeters",
    deprecated: false

  field :driving_duration, 3,
    type: Google.Protobuf.Duration,
    json_name: "drivingDuration",
    deprecated: false

  field :path, 5, repeated: true, type: Google.Type.LatLng
end
defmodule Maps.Fleetengine.Delivery.V1.VehicleStop.TaskInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          task_id: String.t(),
          task_duration: Google.Protobuf.Duration.t() | nil
        }

  defstruct task_id: "",
            task_duration: nil

  field :task_id, 1, type: :string, json_name: "taskId"
  field :task_duration, 2, type: Google.Protobuf.Duration, json_name: "taskDuration"
end
defmodule Maps.Fleetengine.Delivery.V1.VehicleStop do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          planned_location: Maps.Fleetengine.Delivery.V1.LocationInfo.t() | nil,
          tasks: [Maps.Fleetengine.Delivery.V1.VehicleStop.TaskInfo.t()],
          state: Maps.Fleetengine.Delivery.V1.VehicleStop.State.t()
        }

  defstruct planned_location: nil,
            tasks: [],
            state: :STATE_UNSPECIFIED

  field :planned_location, 1,
    type: Maps.Fleetengine.Delivery.V1.LocationInfo,
    json_name: "plannedLocation",
    deprecated: false

  field :tasks, 2, repeated: true, type: Maps.Fleetengine.Delivery.V1.VehicleStop.TaskInfo
  field :state, 3, type: Maps.Fleetengine.Delivery.V1.VehicleStop.State, enum: true
end
