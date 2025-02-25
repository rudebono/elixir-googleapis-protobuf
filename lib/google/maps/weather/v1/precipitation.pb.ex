defmodule Google.Maps.Weather.V1.PrecipitationType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :PRECIPITATION_TYPE_UNSPECIFIED, 0
  field :NONE, 8
  field :SNOW, 1
  field :RAIN, 2
  field :LIGHT_RAIN, 3
  field :HEAVY_RAIN, 4
  field :RAIN_AND_SNOW, 5
  field :SLEET, 6
  field :FREEZING_RAIN, 7
end

defmodule Google.Maps.Weather.V1.QuantitativePrecipitationForecast.Unit do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNIT_UNSPECIFIED, 0
  field :MILLIMETERS, 3
  field :INCHES, 2
end

defmodule Google.Maps.Weather.V1.Precipitation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :probability, 1, type: Google.Maps.Weather.V1.PrecipitationProbability
  field :qpf, 4, type: Google.Maps.Weather.V1.QuantitativePrecipitationForecast
end

defmodule Google.Maps.Weather.V1.PrecipitationProbability do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :percent, 1, proto3_optional: true, type: :int32
  field :type, 2, type: Google.Maps.Weather.V1.PrecipitationType, enum: true
end

defmodule Google.Maps.Weather.V1.QuantitativePrecipitationForecast do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :quantity, 1, proto3_optional: true, type: :float
  field :unit, 2, type: Google.Maps.Weather.V1.QuantitativePrecipitationForecast.Unit, enum: true
end
