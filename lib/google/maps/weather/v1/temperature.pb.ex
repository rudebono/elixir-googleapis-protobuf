defmodule Google.Maps.Weather.V1.TemperatureUnit do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TEMPERATURE_UNIT_UNSPECIFIED, 0
  field :CELSIUS, 1
  field :FAHRENHEIT, 2
end

defmodule Google.Maps.Weather.V1.Temperature do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :degrees, 1, proto3_optional: true, type: :float
  field :unit, 2, type: Google.Maps.Weather.V1.TemperatureUnit, enum: true
end
