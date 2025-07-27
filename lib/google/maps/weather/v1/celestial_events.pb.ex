defmodule Google.Maps.Weather.V1.MoonPhase do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :MOON_PHASE_UNSPECIFIED, 0
  field :NEW_MOON, 1
  field :WAXING_CRESCENT, 2
  field :FIRST_QUARTER, 3
  field :WAXING_GIBBOUS, 4
  field :FULL_MOON, 5
  field :WANING_GIBBOUS, 6
  field :LAST_QUARTER, 7
  field :WANING_CRESCENT, 8
end

defmodule Google.Maps.Weather.V1.SunEvents do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :sunrise_time, 1, type: Google.Protobuf.Timestamp, json_name: "sunriseTime"
  field :sunset_time, 2, type: Google.Protobuf.Timestamp, json_name: "sunsetTime"
end

defmodule Google.Maps.Weather.V1.MoonEvents do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :moonrise_times, 4,
    repeated: true,
    type: Google.Protobuf.Timestamp,
    json_name: "moonriseTimes"

  field :moonset_times, 5,
    repeated: true,
    type: Google.Protobuf.Timestamp,
    json_name: "moonsetTimes"

  field :moon_phase, 3, type: Google.Maps.Weather.V1.MoonPhase, json_name: "moonPhase", enum: true
end
