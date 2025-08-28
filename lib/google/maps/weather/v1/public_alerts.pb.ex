defmodule Google.Maps.Weather.V1.DataSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :publisher, 1, type: Google.Maps.Weather.V1.Publisher, enum: true
  field :name, 2, type: :string
  field :authority_uri, 3, type: :string, json_name: "authorityUri"
end

defmodule Google.Maps.Weather.V1.SafetyRecommendation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :directive, 1, type: :string
  field :subtext, 2, proto3_optional: true, type: :string
end

defmodule Google.Maps.Weather.V1.PublicAlerts do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :alert_id, 1, type: :string, json_name: "alertId"
  field :alert_title, 2, type: Google.Type.LocalizedText, json_name: "alertTitle"

  field :event_type, 3,
    type: Google.Maps.Weather.V1.WeatherEventType,
    json_name: "eventType",
    enum: true

  field :area_name, 4, type: :string, json_name: "areaName"
  field :polygon, 5, proto3_optional: true, type: :string
  field :description, 6, proto3_optional: true, type: :string
  field :severity, 7, type: Google.Maps.Weather.V1.Severity, enum: true
  field :certainty, 8, proto3_optional: true, type: Google.Maps.Weather.V1.Certainty, enum: true
  field :urgency, 9, proto3_optional: true, type: Google.Maps.Weather.V1.Urgency, enum: true
  field :instruction, 10, repeated: true, type: :string

  field :safety_recommendations, 11,
    repeated: true,
    type: Google.Maps.Weather.V1.SafetyRecommendation,
    json_name: "safetyRecommendations"

  field :timezone_offset, 12, type: :string, json_name: "timezoneOffset"
  field :start_time, 13, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :expiration_time, 14, type: Google.Protobuf.Timestamp, json_name: "expirationTime"
  field :data_source, 15, type: Google.Maps.Weather.V1.DataSource, json_name: "dataSource"
end
