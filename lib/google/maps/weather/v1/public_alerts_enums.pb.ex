defmodule Google.Maps.Weather.V1.WeatherEventType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :WEATHER_EVENT_TYPE_UNSPECIFIED, 0
  field :ACID_RAIN, 1
  field :AFTERSHOCK, 2
  field :AVALANCHE, 3
  field :BLIZZARD, 4
  field :BLOWING_SNOW, 5
  field :BUSHFIRE, 6
  field :COASTAL_FLOOD, 7
  field :COASTAL_HAZARD, 8
  field :COLD, 9
  field :CYCLONE, 10
  field :DROUGHT, 11
  field :DUST_STORM, 12
  field :EARTHQUAKE, 13
  field :EXTRATROPICAL_CYCLONE, 14
  field :FIRE, 15
  field :FIRE_WEATHER, 16
  field :FLASH_FLOOD, 17
  field :FLOOD, 18
  field :FOG, 19
  field :FREEZING, 20
  field :FREEZING_AIR_TEMPERATURE, 21
  field :FREEZING_DRIZZLE, 22
  field :FREEZING_RAIN_EVENT, 23
  field :FROST, 24
  field :GALE, 25
  field :GLAZE, 26
  field :HAIL, 27
  field :HAZARDOUS_SEAS, 28
  field :HEAT, 29
  field :HUMIDITY, 30
  field :HURRICANE, 31
  field :ICE_STORM, 32
  field :INDUSTRIAL_FIRE, 33
  field :LAKE_EFFECT_SNOW, 34
  field :LANDSLIDE, 35
  field :MONSOON, 36
  field :MUDDY_FLOOD, 37
  field :OUTFLOW, 38
  field :RADIATION, 39
  field :RAIN_EVENT, 40
  field :RIVER_FLOODING, 41
  field :SEVERE_THUNDERSTORM_WARNING, 42
  field :SNOWSQUALL, 43
  field :SNOW_EVENT, 44
  field :STORM, 45
  field :STORM_SURGE, 46
  field :THUNDER, 47
  field :THUNDERSTORM, 48
  field :TORNADO, 49
  field :TORNADO_WARNING, 50
  field :TROPICAL_CYCLONE, 51
  field :TROPICAL_CYCLONE_WARNINGS_AND_WATCHES, 52
  field :TROPICAL_DISTURBANCE, 53
  field :TROPICAL_STORM, 54
  field :TSUNAMI, 55
  field :TYPHOON, 56
  field :VOLCANIC_ASH, 57
  field :VOLCANIC_ERUPTION, 58
  field :WILDFIRE, 59
  field :WIND, 60
  field :WIND_CHILL, 61
  field :WIND_WAVE, 62
  field :WINTER_STORM, 63
end

defmodule Google.Maps.Weather.V1.Publisher do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PUBLISHER_UNSPECIFIED, 0
  field :AUSTRALIA_ACT_ESA, 1
  field :AUSTRALIA_NSW_RFS, 2
  field :AUSTRALIA_QLD_QFES, 3
  field :AUSTRALIA_SA_CFS, 4
  field :METEO_ALARM_AT, 5
  field :METEO_ALARM_BS, 6
  field :BRAZIL_CENAD, 7
  field :BRAZIL_INMET, 8
  field :UK_ENV_AGENCY, 9
  field :METEO_ALARM_BG, 10
  field :METEO_ALARM_CR, 11
  field :METEO_ALARM_CY, 12
  field :METEO_ALARM_CS, 13
  field :METEO_ALARM_DK, 14
  field :EC_INAMHI, 15
  field :METEO_ALARM_FI, 16
  field :METEO_ALARM_FR, 17
  field :DE_DWD, 18
  field :METEO_ALARM_GB, 19
  field :METEO_ALARM_GR, 20
  field :METEO_ALARM_HU, 21
  field :METEO_ALARM_IS, 22
  field :METEO_ALARM_IE, 23
  field :METEO_ALARM_IT, 24
  field :JM_JMS, 25
  field :JMA, 26
  field :METEO_ALARM_NL, 27
  field :METEO_ALARM_LV, 28
  field :METEO_ALARM_LT, 29
  field :METEO_ALARM_LU, 30
  field :MEXICO_CIRES, 31
  field :NZ_GEONET, 32
  field :NZ_NMS, 33
  field :METEO_ALARM_MK, 34
  field :METEO_ALARM_NO, 35
  field :PHILIPPINES_PAGASA, 36
  field :METEO_ALARM_PL, 37
  field :METEO_ALARM_PT, 38
  field :METEO_ALARM_RO, 39
  field :METEO_ALARM_RS, 40
  field :SG_MSS, 41
  field :METEO_ALARM_SK, 42
  field :METEO_ALARM_SI, 43
  field :SB_MET, 44
  field :METEO_ALARM_ES, 45
  field :METEO_ALARM_SE, 46
  field :METEO_ALARM_CH, 47
  field :TAIWAN_NCDR, 48
  field :NOAA, 49
  field :WCATWC, 50
end

defmodule Google.Maps.Weather.V1.Urgency do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :URGENCY_UNKNOWN, 0
  field :IMMEDIATE, 1
  field :EXPECTED, 2
  field :FUTURE, 3
  field :PAST, 4
end

defmodule Google.Maps.Weather.V1.Severity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SEVERITY_UNKNOWN, 0
  field :EXTREME, 1
  field :SEVERE, 2
  field :MODERATE, 3
  field :MINOR, 4
end

defmodule Google.Maps.Weather.V1.Certainty do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CERTAINTY_UNKNOWN, 0
  field :OBSERVED, 1
  field :VERY_LIKELY, 2
  field :LIKELY, 3
  field :POSSIBLE, 4
  field :UNLIKELY, 5
end
