defmodule Google.Ads.Googleads.V12.Resources.KeywordPlanAdGroupKeyword do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :keyword_plan_ad_group, 8,
    proto3_optional: true,
    type: :string,
    json_name: "keywordPlanAdGroup",
    deprecated: false

  field :id, 9, proto3_optional: true, type: :int64, deprecated: false
  field :text, 10, proto3_optional: true, type: :string

  field :match_type, 5,
    type: Google.Ads.Googleads.V12.Enums.KeywordMatchTypeEnum.KeywordMatchType,
    json_name: "matchType",
    enum: true

  field :cpc_bid_micros, 11, proto3_optional: true, type: :int64, json_name: "cpcBidMicros"
  field :negative, 12, proto3_optional: true, type: :bool, deprecated: false
end