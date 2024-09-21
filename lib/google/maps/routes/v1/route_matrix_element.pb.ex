defmodule Google.Maps.Routes.V1.RouteMatrixElementCondition do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ROUTE_MATRIX_ELEMENT_CONDITION_UNSPECIFIED, 0
  field :ROUTE_EXISTS, 1
  field :ROUTE_NOT_FOUND, 2
end

defmodule Google.Maps.Routes.V1.RouteMatrixElement do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :origin_index, 1, type: :int32, json_name: "originIndex"
  field :destination_index, 2, type: :int32, json_name: "destinationIndex"
  field :status, 3, type: Google.Rpc.Status
  field :condition, 9, type: Google.Maps.Routes.V1.RouteMatrixElementCondition, enum: true
  field :distance_meters, 4, type: :int32, json_name: "distanceMeters"
  field :duration, 5, type: Google.Protobuf.Duration
  field :static_duration, 6, type: Google.Protobuf.Duration, json_name: "staticDuration"

  field :travel_advisory, 7,
    type: Google.Maps.Routes.V1.RouteTravelAdvisory,
    json_name: "travelAdvisory"

  field :fallback_info, 8, type: Google.Maps.Routes.V1.FallbackInfo, json_name: "fallbackInfo"
end