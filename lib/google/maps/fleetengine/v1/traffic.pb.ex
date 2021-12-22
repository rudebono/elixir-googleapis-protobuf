defmodule Maps.Fleetengine.V1.SpeedReadingInterval.Speed do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :SPEED_UNSPECIFIED | :NORMAL | :SLOW | :TRAFFIC_JAM

  field :SPEED_UNSPECIFIED, 0
  field :NORMAL, 1
  field :SLOW, 2
  field :TRAFFIC_JAM, 3
end
defmodule Maps.Fleetengine.V1.SpeedReadingInterval do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_polyline_point_index: integer,
          end_polyline_point_index: integer,
          speed: Maps.Fleetengine.V1.SpeedReadingInterval.Speed.t()
        }

  defstruct start_polyline_point_index: 0,
            end_polyline_point_index: 0,
            speed: :SPEED_UNSPECIFIED

  field :start_polyline_point_index, 1, type: :int32, json_name: "startPolylinePointIndex"
  field :end_polyline_point_index, 2, type: :int32, json_name: "endPolylinePointIndex"
  field :speed, 3, type: Maps.Fleetengine.V1.SpeedReadingInterval.Speed, enum: true
end
defmodule Maps.Fleetengine.V1.ConsumableTrafficPolyline do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          speed_reading_interval: [Maps.Fleetengine.V1.SpeedReadingInterval.t()],
          encoded_path_to_waypoint: String.t()
        }

  defstruct speed_reading_interval: [],
            encoded_path_to_waypoint: ""

  field :speed_reading_interval, 1,
    repeated: true,
    type: Maps.Fleetengine.V1.SpeedReadingInterval,
    json_name: "speedReadingInterval"

  field :encoded_path_to_waypoint, 2, type: :string, json_name: "encodedPathToWaypoint"
end
