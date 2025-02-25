defmodule Google.Maps.Weather.V1.CardinalDirection do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :CARDINAL_DIRECTION_UNSPECIFIED, 0
  field :NORTH, 1
  field :NORTH_NORTHEAST, 2
  field :NORTHEAST, 3
  field :EAST_NORTHEAST, 4
  field :EAST, 5
  field :EAST_SOUTHEAST, 6
  field :SOUTHEAST, 7
  field :SOUTH_SOUTHEAST, 8
  field :SOUTH, 9
  field :SOUTH_SOUTHWEST, 10
  field :SOUTHWEST, 11
  field :WEST_SOUTHWEST, 12
  field :WEST, 13
  field :WEST_NORTHWEST, 14
  field :NORTHWEST, 15
  field :NORTH_NORTHWEST, 16
end

defmodule Google.Maps.Weather.V1.SpeedUnit do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SPEED_UNIT_UNSPECIFIED, 0
  field :KILOMETERS_PER_HOUR, 1
  field :MILES_PER_HOUR, 2
end

defmodule Google.Maps.Weather.V1.Wind do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :direction, 1, type: Google.Maps.Weather.V1.WindDirection
  field :speed, 2, type: Google.Maps.Weather.V1.WindSpeed
  field :gust, 3, type: Google.Maps.Weather.V1.WindSpeed
end

defmodule Google.Maps.Weather.V1.WindDirection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :degrees, 1, proto3_optional: true, type: :int32
  field :cardinal, 2, type: Google.Maps.Weather.V1.CardinalDirection, enum: true
end

defmodule Google.Maps.Weather.V1.WindSpeed do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :value, 1, proto3_optional: true, type: :float
  field :unit, 2, type: Google.Maps.Weather.V1.SpeedUnit, enum: true
end
