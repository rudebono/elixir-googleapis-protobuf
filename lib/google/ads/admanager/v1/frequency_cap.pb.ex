defmodule Google.Ads.Admanager.V1.FrequencyCap do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :max_impressions, 1, proto3_optional: true, type: :int64, json_name: "maxImpressions"
  field :time_amount, 2, proto3_optional: true, type: :int64, json_name: "timeAmount"

  field :time_unit, 3,
    proto3_optional: true,
    type: Google.Ads.Admanager.V1.TimeUnitEnum.TimeUnit,
    json_name: "timeUnit",
    enum: true
end
