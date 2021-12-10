defmodule Google.Maps.Routes.V1.RouteMatrixElementCondition do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer | :ROUTE_MATRIX_ELEMENT_CONDITION_UNSPECIFIED | :ROUTE_EXISTS | :ROUTE_NOT_FOUND

  field :ROUTE_MATRIX_ELEMENT_CONDITION_UNSPECIFIED, 0
  field :ROUTE_EXISTS, 1
  field :ROUTE_NOT_FOUND, 2
end
defmodule Google.Maps.Routes.V1.RouteMatrixElement do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          origin_index: integer,
          destination_index: integer,
          status: Google.Rpc.Status.t() | nil,
          condition: Google.Maps.Routes.V1.RouteMatrixElementCondition.t(),
          distance_meters: integer,
          duration: Google.Protobuf.Duration.t() | nil,
          static_duration: Google.Protobuf.Duration.t() | nil,
          travel_advisory: Google.Maps.Routes.V1.RouteTravelAdvisory.t() | nil,
          fallback_info: Google.Maps.Routes.V1.FallbackInfo.t() | nil
        }

  defstruct origin_index: 0,
            destination_index: 0,
            status: nil,
            condition: :ROUTE_MATRIX_ELEMENT_CONDITION_UNSPECIFIED,
            distance_meters: 0,
            duration: nil,
            static_duration: nil,
            travel_advisory: nil,
            fallback_info: nil

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
