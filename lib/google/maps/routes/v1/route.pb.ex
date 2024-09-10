defmodule Google.Maps.Routes.V1.Maneuver do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :MANEUVER_UNSPECIFIED, 0
  field :TURN_SLIGHT_LEFT, 1
  field :TURN_SHARP_LEFT, 2
  field :UTURN_LEFT, 3
  field :TURN_LEFT, 4
  field :TURN_SLIGHT_RIGHT, 5
  field :TURN_SHARP_RIGHT, 6
  field :UTURN_RIGHT, 7
  field :TURN_RIGHT, 8
  field :STRAIGHT, 9
  field :RAMP_LEFT, 10
  field :RAMP_RIGHT, 11
  field :MERGE, 12
  field :FORK_LEFT, 13
  field :FORK_RIGHT, 14
  field :FERRY, 15
  field :FERRY_TRAIN, 16
  field :ROUNDABOUT_LEFT, 17
  field :ROUNDABOUT_RIGHT, 18
  field :DEPART, 19
  field :NAME_CHANGE, 20
end

defmodule Google.Maps.Routes.V1.SpeedReadingInterval.Speed do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :SPEED_UNSPECIFIED, 0
  field :NORMAL, 1
  field :SLOW, 2
  field :TRAFFIC_JAM, 3
end

defmodule Google.Maps.Routes.V1.Route do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :legs, 1, repeated: true, type: Google.Maps.Routes.V1.RouteLeg
  field :distance_meters, 2, type: :int32, json_name: "distanceMeters"
  field :duration, 3, type: Google.Protobuf.Duration
  field :static_duration, 4, type: Google.Protobuf.Duration, json_name: "staticDuration"
  field :polyline, 5, type: Google.Maps.Routes.V1.Polyline
  field :description, 6, type: :string
  field :warnings, 7, repeated: true, type: :string
  field :viewport, 8, type: Google.Geo.Type.Viewport

  field :travel_advisory, 9,
    type: Google.Maps.Routes.V1.RouteTravelAdvisory,
    json_name: "travelAdvisory"

  field :optimized_intermediate_waypoint_index, 10,
    repeated: true,
    type: :int32,
    json_name: "optimizedIntermediateWaypointIndex"
end

defmodule Google.Maps.Routes.V1.RouteTravelAdvisory do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :traffic_restriction, 1,
    type: Google.Maps.Routes.V1.TrafficRestriction,
    json_name: "trafficRestriction"

  field :toll_info, 2, type: Google.Maps.Routes.V1.TollInfo, json_name: "tollInfo"

  field :speed_reading_intervals, 3,
    repeated: true,
    type: Google.Maps.Routes.V1.SpeedReadingInterval,
    json_name: "speedReadingIntervals"

  field :custom_layer_info, 4,
    type: Google.Maps.Routes.V1.CustomLayerInfo,
    json_name: "customLayerInfo",
    deprecated: true
end

defmodule Google.Maps.Routes.V1.RouteLegTravelAdvisory do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :toll_info, 1, type: Google.Maps.Routes.V1.TollInfo, json_name: "tollInfo"

  field :speed_reading_intervals, 2,
    repeated: true,
    type: Google.Maps.Routes.V1.SpeedReadingInterval,
    json_name: "speedReadingIntervals"

  field :custom_layer_info, 3,
    type: Google.Maps.Routes.V1.CustomLayerInfo,
    json_name: "customLayerInfo",
    deprecated: true
end

defmodule Google.Maps.Routes.V1.RouteLegStepTravelAdvisory do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :speed_reading_intervals, 1,
    repeated: true,
    type: Google.Maps.Routes.V1.SpeedReadingInterval,
    json_name: "speedReadingIntervals"
end

defmodule Google.Maps.Routes.V1.TrafficRestriction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :license_plate_last_character_restriction, 1,
    type: Google.Maps.Routes.V1.LicensePlateLastCharacterRestriction,
    json_name: "licensePlateLastCharacterRestriction"
end

defmodule Google.Maps.Routes.V1.LicensePlateLastCharacterRestriction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :allowed_last_characters, 1,
    repeated: true,
    type: :string,
    json_name: "allowedLastCharacters"
end

defmodule Google.Maps.Routes.V1.RouteLeg do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :distance_meters, 1, type: :int32, json_name: "distanceMeters"
  field :duration, 2, type: Google.Protobuf.Duration
  field :static_duration, 3, type: Google.Protobuf.Duration, json_name: "staticDuration"
  field :polyline, 4, type: Google.Maps.Routes.V1.Polyline
  field :start_location, 5, type: Google.Maps.Routes.V1.Location, json_name: "startLocation"
  field :end_location, 6, type: Google.Maps.Routes.V1.Location, json_name: "endLocation"
  field :steps, 7, repeated: true, type: Google.Maps.Routes.V1.RouteLegStep

  field :travel_advisory, 8,
    type: Google.Maps.Routes.V1.RouteLegTravelAdvisory,
    json_name: "travelAdvisory"
end

defmodule Google.Maps.Routes.V1.TollInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :estimated_price, 1, repeated: true, type: Google.Type.Money, json_name: "estimatedPrice"
end

defmodule Google.Maps.Routes.V1.RouteLegStep do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :distance_meters, 1, type: :int32, json_name: "distanceMeters"
  field :static_duration, 2, type: Google.Protobuf.Duration, json_name: "staticDuration"
  field :polyline, 3, type: Google.Maps.Routes.V1.Polyline
  field :start_location, 4, type: Google.Maps.Routes.V1.Location, json_name: "startLocation"
  field :end_location, 5, type: Google.Maps.Routes.V1.Location, json_name: "endLocation"

  field :navigation_instruction, 6,
    type: Google.Maps.Routes.V1.NavigationInstruction,
    json_name: "navigationInstruction"

  field :travel_advisory, 7,
    type: Google.Maps.Routes.V1.RouteLegStepTravelAdvisory,
    json_name: "travelAdvisory"
end

defmodule Google.Maps.Routes.V1.NavigationInstruction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :maneuver, 1, type: Google.Maps.Routes.V1.Maneuver, enum: true
  field :instructions, 2, type: :string
end

defmodule Google.Maps.Routes.V1.SpeedReadingInterval do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :start_polyline_point_index, 1, type: :int32, json_name: "startPolylinePointIndex"
  field :end_polyline_point_index, 2, type: :int32, json_name: "endPolylinePointIndex"
  field :speed, 3, type: Google.Maps.Routes.V1.SpeedReadingInterval.Speed, enum: true
end

defmodule Google.Maps.Routes.V1.CustomLayerInfo.AreaInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :area_id, 1, type: :string, json_name: "areaId"
  field :distance_in_area_meters, 2, type: :float, json_name: "distanceInAreaMeters"
  field :duration_in_area, 3, type: Google.Protobuf.Duration, json_name: "durationInArea"
end

defmodule Google.Maps.Routes.V1.CustomLayerInfo do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :area_info, 1,
    repeated: true,
    type: Google.Maps.Routes.V1.CustomLayerInfo.AreaInfo,
    json_name: "areaInfo"

  field :total_distance_in_areas_meters, 2, type: :float, json_name: "totalDistanceInAreasMeters"

  field :total_duration_in_areas, 3,
    type: Google.Protobuf.Duration,
    json_name: "totalDurationInAreas"
end