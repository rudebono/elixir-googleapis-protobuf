defmodule Google.Maps.Weather.V1.LookupCurrentConditionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :location, 1, type: Google.Type.LatLng, deprecated: false

  field :units_system, 2,
    type: Google.Maps.Weather.V1.UnitsSystem,
    json_name: "unitsSystem",
    enum: true,
    deprecated: false

  field :language_code, 3,
    proto3_optional: true,
    type: :string,
    json_name: "languageCode",
    deprecated: false
end

defmodule Google.Maps.Weather.V1.LookupCurrentConditionsResponse.CurrentConditionsHistory do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :temperature_change, 1,
    type: Google.Maps.Weather.V1.Temperature,
    json_name: "temperatureChange"

  field :max_temperature, 2, type: Google.Maps.Weather.V1.Temperature, json_name: "maxTemperature"
  field :min_temperature, 3, type: Google.Maps.Weather.V1.Temperature, json_name: "minTemperature"

  field :snow_qpf, 5,
    type: Google.Maps.Weather.V1.QuantitativePrecipitationForecast,
    json_name: "snowQpf"

  field :qpf, 6, type: Google.Maps.Weather.V1.QuantitativePrecipitationForecast
end

defmodule Google.Maps.Weather.V1.LookupCurrentConditionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :current_time, 1, type: Google.Protobuf.Timestamp, json_name: "currentTime"
  field :time_zone, 2, type: Google.Type.TimeZone, json_name: "timeZone"
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
  field :relative_humidity, 10, proto3_optional: true, type: :int32, json_name: "relativeHumidity"
  field :uv_index, 11, proto3_optional: true, type: :int32, json_name: "uvIndex"
  field :precipitation, 12, type: Google.Maps.Weather.V1.Precipitation

  field :thunderstorm_probability, 13,
    proto3_optional: true,
    type: :int32,
    json_name: "thunderstormProbability"

  field :air_pressure, 14, type: Google.Maps.Weather.V1.AirPressure, json_name: "airPressure"
  field :wind, 15, type: Google.Maps.Weather.V1.Wind
  field :visibility, 16, type: Google.Maps.Weather.V1.Visibility
  field :cloud_cover, 17, proto3_optional: true, type: :int32, json_name: "cloudCover"

  field :current_conditions_history, 18,
    type: Google.Maps.Weather.V1.LookupCurrentConditionsResponse.CurrentConditionsHistory,
    json_name: "currentConditionsHistory"
end

defmodule Google.Maps.Weather.V1.LookupForecastHoursRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :location, 1, type: Google.Type.LatLng, deprecated: false
  field :hours, 2, proto3_optional: true, type: :int32, deprecated: false

  field :units_system, 3,
    type: Google.Maps.Weather.V1.UnitsSystem,
    json_name: "unitsSystem",
    enum: true,
    deprecated: false

  field :language_code, 4,
    proto3_optional: true,
    type: :string,
    json_name: "languageCode",
    deprecated: false

  field :page_size, 5, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 6, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Maps.Weather.V1.LookupForecastHoursResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :forecast_hours, 1,
    repeated: true,
    type: Google.Maps.Weather.V1.ForecastHour,
    json_name: "forecastHours"

  field :time_zone, 2, type: Google.Type.TimeZone, json_name: "timeZone"
  field :next_page_token, 3, type: :string, json_name: "nextPageToken"
end

defmodule Google.Maps.Weather.V1.LookupForecastDaysRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :location, 1, type: Google.Type.LatLng, deprecated: false
  field :days, 2, proto3_optional: true, type: :int32, deprecated: false

  field :units_system, 3,
    type: Google.Maps.Weather.V1.UnitsSystem,
    json_name: "unitsSystem",
    enum: true,
    deprecated: false

  field :language_code, 4,
    proto3_optional: true,
    type: :string,
    json_name: "languageCode",
    deprecated: false

  field :page_size, 5, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 6, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Maps.Weather.V1.LookupForecastDaysResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :forecast_days, 1,
    repeated: true,
    type: Google.Maps.Weather.V1.ForecastDay,
    json_name: "forecastDays"

  field :time_zone, 2, type: Google.Type.TimeZone, json_name: "timeZone"
  field :next_page_token, 3, type: :string, json_name: "nextPageToken"
end

defmodule Google.Maps.Weather.V1.LookupHistoryHoursRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :location, 1, type: Google.Type.LatLng, deprecated: false
  field :hours, 2, proto3_optional: true, type: :int32, deprecated: false

  field :units_system, 3,
    type: Google.Maps.Weather.V1.UnitsSystem,
    json_name: "unitsSystem",
    enum: true,
    deprecated: false

  field :language_code, 4,
    proto3_optional: true,
    type: :string,
    json_name: "languageCode",
    deprecated: false

  field :page_size, 5, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 6, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Maps.Weather.V1.LookupHistoryHoursResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :history_hours, 1,
    repeated: true,
    type: Google.Maps.Weather.V1.HistoryHour,
    json_name: "historyHours"

  field :time_zone, 2, type: Google.Type.TimeZone, json_name: "timeZone"
  field :next_page_token, 3, type: :string, json_name: "nextPageToken"
end

defmodule Google.Maps.Weather.V1.LookupPublicAlertsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Maps.Weather.V1.LookupPublicAlertsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Maps.Weather.V1.Weather.Service do
  @moduledoc false

  use GRPC.Service, name: "google.maps.weather.v1.Weather", protoc_gen_elixir_version: "0.15.0"

  rpc :LookupCurrentConditions,
      Google.Maps.Weather.V1.LookupCurrentConditionsRequest,
      Google.Maps.Weather.V1.LookupCurrentConditionsResponse

  rpc :LookupForecastHours,
      Google.Maps.Weather.V1.LookupForecastHoursRequest,
      Google.Maps.Weather.V1.LookupForecastHoursResponse

  rpc :LookupForecastDays,
      Google.Maps.Weather.V1.LookupForecastDaysRequest,
      Google.Maps.Weather.V1.LookupForecastDaysResponse

  rpc :LookupHistoryHours,
      Google.Maps.Weather.V1.LookupHistoryHoursRequest,
      Google.Maps.Weather.V1.LookupHistoryHoursResponse

  rpc :LookupPublicAlerts,
      Google.Maps.Weather.V1.LookupPublicAlertsRequest,
      Google.Maps.Weather.V1.LookupPublicAlertsResponse
end

defmodule Google.Maps.Weather.V1.Weather.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Maps.Weather.V1.Weather.Service
end
