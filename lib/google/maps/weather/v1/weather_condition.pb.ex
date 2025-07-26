defmodule Google.Maps.Weather.V1.WeatherCondition.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :CLEAR, 1
  field :MOSTLY_CLEAR, 2
  field :PARTLY_CLOUDY, 3
  field :MOSTLY_CLOUDY, 4
  field :CLOUDY, 5
  field :WINDY, 6
  field :WIND_AND_RAIN, 7
  field :LIGHT_RAIN_SHOWERS, 8
  field :CHANCE_OF_SHOWERS, 9
  field :SCATTERED_SHOWERS, 10
  field :RAIN_SHOWERS, 12
  field :HEAVY_RAIN_SHOWERS, 13
  field :LIGHT_TO_MODERATE_RAIN, 14
  field :MODERATE_TO_HEAVY_RAIN, 15
  field :RAIN, 16
  field :LIGHT_RAIN, 17
  field :HEAVY_RAIN, 18
  field :RAIN_PERIODICALLY_HEAVY, 19
  field :LIGHT_SNOW_SHOWERS, 20
  field :CHANCE_OF_SNOW_SHOWERS, 21
  field :SCATTERED_SNOW_SHOWERS, 22
  field :SNOW_SHOWERS, 23
  field :HEAVY_SNOW_SHOWERS, 24
  field :LIGHT_TO_MODERATE_SNOW, 25
  field :MODERATE_TO_HEAVY_SNOW, 26
  field :SNOW, 27
  field :LIGHT_SNOW, 28
  field :HEAVY_SNOW, 29
  field :SNOWSTORM, 30
  field :SNOW_PERIODICALLY_HEAVY, 31
  field :HEAVY_SNOW_STORM, 32
  field :BLOWING_SNOW, 33
  field :RAIN_AND_SNOW, 34
  field :HAIL, 35
  field :HAIL_SHOWERS, 36
  field :THUNDERSTORM, 37
  field :THUNDERSHOWER, 38
  field :LIGHT_THUNDERSTORM_RAIN, 39
  field :SCATTERED_THUNDERSTORMS, 40
  field :HEAVY_THUNDERSTORM, 41
end

defmodule Google.Maps.Weather.V1.WeatherCondition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :icon_base_uri, 1, type: :string, json_name: "iconBaseUri"
  field :description, 2, type: Google.Type.LocalizedText
  field :type, 3, type: Google.Maps.Weather.V1.WeatherCondition.Type, enum: true
end
