defmodule Google.Maps.Weather.V1.ForecastHour do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :interval, 1, type: Google.Type.Interval
  field :display_date_time, 2, type: Google.Type.DateTime, json_name: "displayDateTime"
  field :is_daytime, 3, proto3_optional: true, type: :bool, json_name: "isDaytime"

  field :weather_condition, 4,
    type: Google.Maps.Weather.V1.WeatherCondition,
    json_name: "weatherCondition"

  field :temperature, 5, type: Google.Maps.Weather.V1.Temperature

  field :feels_like_temperature, 6,
    type: Google.Maps.Weather.V1.Temperature,
    json_name: "feelsLikeTemperature"

  field :dew_point, 7, type: Google.Maps.Weather.V1.Temperature, json_name: "dewPoint"
  field :heat_index, 8, type: Google.Maps.Weather.V1.Temperature, json_name: "heatIndex"
  field :wind_chill, 9, type: Google.Maps.Weather.V1.Temperature, json_name: "windChill"

  field :wet_bulb_temperature, 10,
    type: Google.Maps.Weather.V1.Temperature,
    json_name: "wetBulbTemperature"

  field :relative_humidity, 11, proto3_optional: true, type: :int32, json_name: "relativeHumidity"
  field :uv_index, 12, proto3_optional: true, type: :int32, json_name: "uvIndex"
  field :precipitation, 13, type: Google.Maps.Weather.V1.Precipitation

  field :thunderstorm_probability, 14,
    proto3_optional: true,
    type: :int32,
    json_name: "thunderstormProbability"

  field :air_pressure, 15, type: Google.Maps.Weather.V1.AirPressure, json_name: "airPressure"
  field :wind, 16, type: Google.Maps.Weather.V1.Wind
  field :visibility, 17, type: Google.Maps.Weather.V1.Visibility
  field :cloud_cover, 18, proto3_optional: true, type: :int32, json_name: "cloudCover"
  field :ice_thickness, 19, type: Google.Maps.Weather.V1.IceThickness, json_name: "iceThickness"
end
