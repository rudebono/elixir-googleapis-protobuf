defmodule Google.Maps.Routing.V2.Route.RouteLocalizedValues do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :distance, 1, type: Google.Type.LocalizedText
  field :duration, 2, type: Google.Type.LocalizedText
  field :static_duration, 3, type: Google.Type.LocalizedText, json_name: "staticDuration"
  field :transit_fare, 4, type: Google.Type.LocalizedText, json_name: "transitFare"
end

defmodule Google.Maps.Routing.V2.Route do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :route_labels, 13,
    repeated: true,
    type: Google.Maps.Routing.V2.RouteLabel,
    json_name: "routeLabels",
    enum: true

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

  field :optimized_intermediate_waypoint_index, 10,
    repeated: true,
    type: :int32,
    json_name: "optimizedIntermediateWaypointIndex"

  field :localized_values, 11,
    type: Google.Maps.Routing.V2.Route.RouteLocalizedValues,
    json_name: "localizedValues"

  field :route_token, 12, type: :string, json_name: "routeToken"

  field :polyline_details, 14,
    type: Google.Maps.Routing.V2.PolylineDetails,
    json_name: "polylineDetails"
end

defmodule Google.Maps.Routing.V2.RouteTravelAdvisory do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :toll_info, 2, type: Google.Maps.Routing.V2.TollInfo, json_name: "tollInfo"

  field :speed_reading_intervals, 3,
    repeated: true,
    type: Google.Maps.Routing.V2.SpeedReadingInterval,
    json_name: "speedReadingIntervals"

  field :fuel_consumption_microliters, 5, type: :int64, json_name: "fuelConsumptionMicroliters"

  field :route_restrictions_partially_ignored, 6,
    type: :bool,
    json_name: "routeRestrictionsPartiallyIgnored"

  field :transit_fare, 7, type: Google.Type.Money, json_name: "transitFare"
end

defmodule Google.Maps.Routing.V2.RouteLegTravelAdvisory do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :toll_info, 1, type: Google.Maps.Routing.V2.TollInfo, json_name: "tollInfo"

  field :speed_reading_intervals, 2,
    repeated: true,
    type: Google.Maps.Routing.V2.SpeedReadingInterval,
    json_name: "speedReadingIntervals"
end

defmodule Google.Maps.Routing.V2.RouteLegStepTravelAdvisory do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :speed_reading_intervals, 1,
    repeated: true,
    type: Google.Maps.Routing.V2.SpeedReadingInterval,
    json_name: "speedReadingIntervals"
end

defmodule Google.Maps.Routing.V2.RouteLeg.RouteLegLocalizedValues do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :distance, 1, type: Google.Type.LocalizedText
  field :duration, 2, type: Google.Type.LocalizedText
  field :static_duration, 3, type: Google.Type.LocalizedText, json_name: "staticDuration"
end

defmodule Google.Maps.Routing.V2.RouteLeg.StepsOverview.MultiModalSegment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :step_start_index, 1, proto3_optional: true, type: :int32, json_name: "stepStartIndex"
  field :step_end_index, 2, proto3_optional: true, type: :int32, json_name: "stepEndIndex"

  field :navigation_instruction, 3,
    type: Google.Maps.Routing.V2.NavigationInstruction,
    json_name: "navigationInstruction"

  field :travel_mode, 4,
    type: Google.Maps.Routing.V2.RouteTravelMode,
    json_name: "travelMode",
    enum: true
end

defmodule Google.Maps.Routing.V2.RouteLeg.StepsOverview do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :multi_modal_segments, 1,
    repeated: true,
    type: Google.Maps.Routing.V2.RouteLeg.StepsOverview.MultiModalSegment,
    json_name: "multiModalSegments"
end

defmodule Google.Maps.Routing.V2.RouteLeg do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

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

  field :localized_values, 9,
    type: Google.Maps.Routing.V2.RouteLeg.RouteLegLocalizedValues,
    json_name: "localizedValues"

  field :steps_overview, 10,
    type: Google.Maps.Routing.V2.RouteLeg.StepsOverview,
    json_name: "stepsOverview"
end

defmodule Google.Maps.Routing.V2.RouteLegStep.RouteLegStepLocalizedValues do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :distance, 1, type: Google.Type.LocalizedText
  field :static_duration, 3, type: Google.Type.LocalizedText, json_name: "staticDuration"
end

defmodule Google.Maps.Routing.V2.RouteLegStep do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

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

  field :localized_values, 8,
    type: Google.Maps.Routing.V2.RouteLegStep.RouteLegStepLocalizedValues,
    json_name: "localizedValues"

  field :transit_details, 9,
    type: Google.Maps.Routing.V2.RouteLegStepTransitDetails,
    json_name: "transitDetails"

  field :travel_mode, 10,
    type: Google.Maps.Routing.V2.RouteTravelMode,
    json_name: "travelMode",
    enum: true
end

defmodule Google.Maps.Routing.V2.RouteLegStepTransitDetails.TransitStopDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :arrival_stop, 1, type: Google.Maps.Routing.V2.TransitStop, json_name: "arrivalStop"
  field :arrival_time, 2, type: Google.Protobuf.Timestamp, json_name: "arrivalTime"
  field :departure_stop, 3, type: Google.Maps.Routing.V2.TransitStop, json_name: "departureStop"
  field :departure_time, 4, type: Google.Protobuf.Timestamp, json_name: "departureTime"
end

defmodule Google.Maps.Routing.V2.RouteLegStepTransitDetails.TransitDetailsLocalizedValues do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :arrival_time, 1, type: Google.Maps.Routing.V2.LocalizedTime, json_name: "arrivalTime"
  field :departure_time, 2, type: Google.Maps.Routing.V2.LocalizedTime, json_name: "departureTime"
end

defmodule Google.Maps.Routing.V2.RouteLegStepTransitDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :stop_details, 1,
    type: Google.Maps.Routing.V2.RouteLegStepTransitDetails.TransitStopDetails,
    json_name: "stopDetails"

  field :localized_values, 2,
    type: Google.Maps.Routing.V2.RouteLegStepTransitDetails.TransitDetailsLocalizedValues,
    json_name: "localizedValues"

  field :headsign, 3, type: :string
  field :headway, 4, type: Google.Protobuf.Duration
  field :transit_line, 5, type: Google.Maps.Routing.V2.TransitLine, json_name: "transitLine"
  field :stop_count, 6, type: :int32, json_name: "stopCount"
  field :trip_short_text, 7, type: :string, json_name: "tripShortText"
end