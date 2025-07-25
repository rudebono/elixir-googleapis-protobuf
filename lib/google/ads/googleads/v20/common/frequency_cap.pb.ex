defmodule Google.Ads.Googleads.V20.Common.FrequencyCapEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: Google.Ads.Googleads.V20.Common.FrequencyCapKey
  field :cap, 3, proto3_optional: true, type: :int32
end

defmodule Google.Ads.Googleads.V20.Common.FrequencyCapKey do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :level, 1,
    type: Google.Ads.Googleads.V20.Enums.FrequencyCapLevelEnum.FrequencyCapLevel,
    enum: true

  field :event_type, 3,
    type: Google.Ads.Googleads.V20.Enums.FrequencyCapEventTypeEnum.FrequencyCapEventType,
    json_name: "eventType",
    enum: true

  field :time_unit, 2,
    type: Google.Ads.Googleads.V20.Enums.FrequencyCapTimeUnitEnum.FrequencyCapTimeUnit,
    json_name: "timeUnit",
    enum: true

  field :time_length, 5, proto3_optional: true, type: :int32, json_name: "timeLength"
end
