defmodule Google.Maps.Routing.V2.Route do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :legs, 1, repeated: true, type: Google.Maps.Routing.V2.RouteLeg
  field :distance_meters, 2, type: :int32, json_name: "distanceMeters"
  field :duration, 3, type: Google.Protobuf.Duration
  field :static_duration, 4, type: Google.Protobuf.Duration, json_name: "staticDuration"
  field :polyline, 5, type: Google.Maps.Routing.V2.Polyline
  field :description, 6, type: :string
  field :warnings, 7, repeated: true, type: :string
  field :viewport, 8, type: Google.Geo.Type.Viewport

  field :travel_advisory, 9,
    type: Google.Maps.Routing.V2.RouteTravelAdvisory,
    json_name: "travelAdvisory"
end

defmodule Google.Maps.Routing.V2.RouteTravelAdvisory do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :toll_info, 2, type: Google.Maps.Routing.V2.TollInfo, json_name: "tollInfo"

  field :speed_reading_intervals, 3,
    repeated: true,
    type: Google.Maps.Routing.V2.SpeedReadingInterval,
    json_name: "speedReadingIntervals"
end

defmodule Google.Maps.Routing.V2.RouteLegTravelAdvisory do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :toll_info, 1, type: Google.Maps.Routing.V2.TollInfo, json_name: "tollInfo"

  field :speed_reading_intervals, 2,
    repeated: true,
    type: Google.Maps.Routing.V2.SpeedReadingInterval,
    json_name: "speedReadingIntervals"
end

defmodule Google.Maps.Routing.V2.RouteLegStepTravelAdvisory do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :speed_reading_intervals, 1,
    repeated: true,
    type: Google.Maps.Routing.V2.SpeedReadingInterval,
    json_name: "speedReadingIntervals"
end

defmodule Google.Maps.Routing.V2.RouteLeg do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :distance_meters, 1, type: :int32, json_name: "distanceMeters"
  field :duration, 2, type: Google.Protobuf.Duration
  field :static_duration, 3, type: Google.Protobuf.Duration, json_name: "staticDuration"
  field :polyline, 4, type: Google.Maps.Routing.V2.Polyline
  field :start_location, 5, type: Google.Maps.Routing.V2.Location, json_name: "startLocation"
  field :end_location, 6, type: Google.Maps.Routing.V2.Location, json_name: "endLocation"
  field :steps, 7, repeated: true, type: Google.Maps.Routing.V2.RouteLegStep

  field :travel_advisory, 8,
    type: Google.Maps.Routing.V2.RouteLegTravelAdvisory,
    json_name: "travelAdvisory"
end

defmodule Google.Maps.Routing.V2.RouteLegStep do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :distance_meters, 1, type: :int32, json_name: "distanceMeters"
  field :static_duration, 2, type: Google.Protobuf.Duration, json_name: "staticDuration"
  field :polyline, 3, type: Google.Maps.Routing.V2.Polyline
  field :start_location, 4, type: Google.Maps.Routing.V2.Location, json_name: "startLocation"
  field :end_location, 5, type: Google.Maps.Routing.V2.Location, json_name: "endLocation"

  field :navigation_instruction, 6,
    type: Google.Maps.Routing.V2.NavigationInstruction,
    json_name: "navigationInstruction"

  field :travel_advisory, 7,
    type: Google.Maps.Routing.V2.RouteLegStepTravelAdvisory,
    json_name: "travelAdvisory"
end