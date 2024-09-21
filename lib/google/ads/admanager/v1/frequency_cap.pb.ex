defmodule Google.Ads.Admanager.V1.TimeUnitEnum.TimeUnit do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :TIME_UNIT_UNSPECIFIED, 0
  field :MINUTE, 1
  field :HOUR, 2
  field :DAY, 3
  field :WEEK, 4
  field :MONTH, 5
  field :LIFETIME, 6
  field :POD, 7
  field :STREAM, 8
end

defmodule Google.Ads.Admanager.V1.FrequencyCap do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :max_impressions, 1, proto3_optional: true, type: :int64, json_name: "maxImpressions"
  field :time_amount, 2, proto3_optional: true, type: :int64, json_name: "timeAmount"

  field :time_unit, 3,
    proto3_optional: true,
    type: Google.Ads.Admanager.V1.TimeUnitEnum.TimeUnit,
    json_name: "timeUnit",
    enum: true
end

defmodule Google.Ads.Admanager.V1.TimeUnitEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end