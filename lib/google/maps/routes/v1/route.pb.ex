defmodule Google.Maps.Routes.V1.Maneuver do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :MANEUVER_UNSPECIFIED
          | :TURN_SLIGHT_LEFT
          | :TURN_SHARP_LEFT
          | :UTURN_LEFT
          | :TURN_LEFT
          | :TURN_SLIGHT_RIGHT
          | :TURN_SHARP_RIGHT
          | :UTURN_RIGHT
          | :TURN_RIGHT
          | :STRAIGHT
          | :RAMP_LEFT
          | :RAMP_RIGHT
          | :MERGE
          | :FORK_LEFT
          | :FORK_RIGHT
          | :FERRY
          | :FERRY_TRAIN
          | :ROUNDABOUT_LEFT
          | :ROUNDABOUT_RIGHT

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
end
defmodule Google.Maps.Routes.V1.SpeedReadingInterval.Speed do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :SPEED_UNSPECIFIED | :NORMAL | :SLOW | :TRAFFIC_JAM

  field :SPEED_UNSPECIFIED, 0
  field :NORMAL, 1
  field :SLOW, 2
  field :TRAFFIC_JAM, 3
end
defmodule Google.Maps.Routes.V1.Route do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          legs: [Google.Maps.Routes.V1.RouteLeg.t()],
          distance_meters: integer,
          duration: Google.Protobuf.Duration.t() | nil,
          static_duration: Google.Protobuf.Duration.t() | nil,
          polyline: Google.Maps.Routes.V1.Polyline.t() | nil,
          description: String.t(),
          warnings: [String.t()],
          viewport: Google.Geo.Type.Viewport.t() | nil,
          travel_advisory: Google.Maps.Routes.V1.RouteTravelAdvisory.t() | nil
        }

  defstruct legs: [],
            distance_meters: 0,
            duration: nil,
            static_duration: nil,
            polyline: nil,
            description: "",
            warnings: [],
            viewport: nil,
            travel_advisory: nil

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
end
defmodule Google.Maps.Routes.V1.RouteTravelAdvisory do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          traffic_restriction: Google.Maps.Routes.V1.TrafficRestriction.t() | nil,
          toll_info: Google.Maps.Routes.V1.TollInfo.t() | nil,
          speed_reading_intervals: [Google.Maps.Routes.V1.SpeedReadingInterval.t()]
        }

  defstruct traffic_restriction: nil,
            toll_info: nil,
            speed_reading_intervals: []

  field :traffic_restriction, 1,
    type: Google.Maps.Routes.V1.TrafficRestriction,
    json_name: "trafficRestriction"

  field :toll_info, 2, type: Google.Maps.Routes.V1.TollInfo, json_name: "tollInfo"

  field :speed_reading_intervals, 3,
    repeated: true,
    type: Google.Maps.Routes.V1.SpeedReadingInterval,
    json_name: "speedReadingIntervals"
end
defmodule Google.Maps.Routes.V1.RouteLegTravelAdvisory do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          toll_info: Google.Maps.Routes.V1.TollInfo.t() | nil,
          speed_reading_intervals: [Google.Maps.Routes.V1.SpeedReadingInterval.t()]
        }

  defstruct toll_info: nil,
            speed_reading_intervals: []

  field :toll_info, 1, type: Google.Maps.Routes.V1.TollInfo, json_name: "tollInfo"

  field :speed_reading_intervals, 2,
    repeated: true,
    type: Google.Maps.Routes.V1.SpeedReadingInterval,
    json_name: "speedReadingIntervals"
end
defmodule Google.Maps.Routes.V1.RouteLegStepTravelAdvisory do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          speed_reading_intervals: [Google.Maps.Routes.V1.SpeedReadingInterval.t()]
        }

  defstruct speed_reading_intervals: []

  field :speed_reading_intervals, 1,
    repeated: true,
    type: Google.Maps.Routes.V1.SpeedReadingInterval,
    json_name: "speedReadingIntervals"
end
defmodule Google.Maps.Routes.V1.TrafficRestriction do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          license_plate_last_character_restriction:
            Google.Maps.Routes.V1.LicensePlateLastCharacterRestriction.t() | nil
        }

  defstruct license_plate_last_character_restriction: nil

  field :license_plate_last_character_restriction, 1,
    type: Google.Maps.Routes.V1.LicensePlateLastCharacterRestriction,
    json_name: "licensePlateLastCharacterRestriction"
end
defmodule Google.Maps.Routes.V1.LicensePlateLastCharacterRestriction do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          allowed_last_characters: [String.t()]
        }

  defstruct allowed_last_characters: []

  field :allowed_last_characters, 1,
    repeated: true,
    type: :string,
    json_name: "allowedLastCharacters"
end
defmodule Google.Maps.Routes.V1.RouteLeg do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          distance_meters: integer,
          duration: Google.Protobuf.Duration.t() | nil,
          static_duration: Google.Protobuf.Duration.t() | nil,
          polyline: Google.Maps.Routes.V1.Polyline.t() | nil,
          start_location: Google.Maps.Routes.V1.Location.t() | nil,
          end_location: Google.Maps.Routes.V1.Location.t() | nil,
          steps: [Google.Maps.Routes.V1.RouteLegStep.t()],
          travel_advisory: Google.Maps.Routes.V1.RouteLegTravelAdvisory.t() | nil
        }

  defstruct distance_meters: 0,
            duration: nil,
            static_duration: nil,
            polyline: nil,
            start_location: nil,
            end_location: nil,
            steps: [],
            travel_advisory: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          estimated_price: [Google.Type.Money.t()]
        }

  defstruct estimated_price: []

  field :estimated_price, 1, repeated: true, type: Google.Type.Money, json_name: "estimatedPrice"
end
defmodule Google.Maps.Routes.V1.RouteLegStep do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          distance_meters: integer,
          static_duration: Google.Protobuf.Duration.t() | nil,
          polyline: Google.Maps.Routes.V1.Polyline.t() | nil,
          start_location: Google.Maps.Routes.V1.Location.t() | nil,
          end_location: Google.Maps.Routes.V1.Location.t() | nil,
          navigation_instruction: Google.Maps.Routes.V1.NavigationInstruction.t() | nil,
          travel_advisory: Google.Maps.Routes.V1.RouteLegStepTravelAdvisory.t() | nil
        }

  defstruct distance_meters: 0,
            static_duration: nil,
            polyline: nil,
            start_location: nil,
            end_location: nil,
            navigation_instruction: nil,
            travel_advisory: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          maneuver: Google.Maps.Routes.V1.Maneuver.t(),
          instructions: String.t()
        }

  defstruct maneuver: :MANEUVER_UNSPECIFIED,
            instructions: ""

  field :maneuver, 1, type: Google.Maps.Routes.V1.Maneuver, enum: true
  field :instructions, 2, type: :string
end
defmodule Google.Maps.Routes.V1.SpeedReadingInterval do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_polyline_point_index: integer,
          end_polyline_point_index: integer,
          speed: Google.Maps.Routes.V1.SpeedReadingInterval.Speed.t()
        }

  defstruct start_polyline_point_index: 0,
            end_polyline_point_index: 0,
            speed: :SPEED_UNSPECIFIED

  field :start_polyline_point_index, 1, type: :int32, json_name: "startPolylinePointIndex"
  field :end_polyline_point_index, 2, type: :int32, json_name: "endPolylinePointIndex"
  field :speed, 3, type: Google.Maps.Routes.V1.SpeedReadingInterval.Speed, enum: true
end
