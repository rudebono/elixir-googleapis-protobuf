defmodule Google.Ads.Googleads.V10.Enums.AttributionModelEnum.AttributionModel do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :EXTERNAL, 100
  field :GOOGLE_ADS_LAST_CLICK, 101
  field :GOOGLE_SEARCH_ATTRIBUTION_FIRST_CLICK, 102
  field :GOOGLE_SEARCH_ATTRIBUTION_LINEAR, 103
  field :GOOGLE_SEARCH_ATTRIBUTION_TIME_DECAY, 104
  field :GOOGLE_SEARCH_ATTRIBUTION_POSITION_BASED, 105
  field :GOOGLE_SEARCH_ATTRIBUTION_DATA_DRIVEN, 106
end
defmodule Google.Ads.Googleads.V10.Enums.AttributionModelEnum do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
