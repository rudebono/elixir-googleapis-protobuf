defmodule Google.Maps.Routing.V2.SpeedReadingInterval.Speed do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :SPEED_UNSPECIFIED, 0
  field :NORMAL, 1
  field :SLOW, 2
  field :TRAFFIC_JAM, 3
end
defmodule Google.Maps.Routing.V2.SpeedReadingInterval do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :start_polyline_point_index, 1, type: :int32, json_name: "startPolylinePointIndex"
  field :end_polyline_point_index, 2, type: :int32, json_name: "endPolylinePointIndex"
  field :speed, 3, type: Google.Maps.Routing.V2.SpeedReadingInterval.Speed, enum: true
end
