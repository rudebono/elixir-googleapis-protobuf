defmodule Google.Maps.Weather.V1.AirPressure do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :mean_sea_level_millibars, 1,
    proto3_optional: true,
    type: :float,
    json_name: "meanSeaLevelMillibars"
end
