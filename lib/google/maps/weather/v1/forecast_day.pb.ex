defmodule Google.Maps.Weather.V1.ForecastDay do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :interval, 1, type: Google.Type.Interval
  field :display_date, 2, type: Google.Type.Date, json_name: "displayDate"

  field :daytime_forecast, 3,
    type: Google.Maps.Weather.V1.ForecastDayPart,
    json_name: "daytimeForecast"

  field :nighttime_forecast, 4,
    type: Google.Maps.Weather.V1.ForecastDayPart,
    json_name: "nighttimeForecast"

  field :max_temperature, 5, type: Google.Maps.Weather.V1.Temperature, json_name: "maxTemperature"
  field :min_temperature, 6, type: Google.Maps.Weather.V1.Temperature, json_name: "minTemperature"

  field :feels_like_max_temperature, 7,
    type: Google.Maps.Weather.V1.Temperature,
    json_name: "feelsLikeMaxTemperature"

  field :feels_like_min_temperature, 8,
    type: Google.Maps.Weather.V1.Temperature,
    json_name: "feelsLikeMinTemperature"

  field :max_heat_index, 11, type: Google.Maps.Weather.V1.Temperature, json_name: "maxHeatIndex"
  field :sun_events, 9, type: Google.Maps.Weather.V1.SunEvents, json_name: "sunEvents"
  field :moon_events, 10, type: Google.Maps.Weather.V1.MoonEvents, json_name: "moonEvents"
end

defmodule Google.Maps.Weather.V1.ForecastDayPart do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :interval, 1, type: Google.Type.Interval

  field :weather_condition, 2,
    type: Google.Maps.Weather.V1.WeatherCondition,
    json_name: "weatherCondition"

  field :relative_humidity, 3, proto3_optional: true, type: :int32, json_name: "relativeHumidity"
  field :uv_index, 4, proto3_optional: true, type: :int32, json_name: "uvIndex"
  field :precipitation, 5, type: Google.Maps.Weather.V1.Precipitation

  field :thunderstorm_probability, 6,
    proto3_optional: true,
    type: :int32,
    json_name: "thunderstormProbability"

  field :wind, 7, type: Google.Maps.Weather.V1.Wind
  field :cloud_cover, 8, proto3_optional: true, type: :int32, json_name: "cloudCover"
  field :ice_thickness, 9, type: Google.Maps.Weather.V1.IceThickness, json_name: "iceThickness"
end
