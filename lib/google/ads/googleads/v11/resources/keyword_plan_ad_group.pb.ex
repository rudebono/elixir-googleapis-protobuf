defmodule Google.Ads.Googleads.V11.Resources.KeywordPlanAdGroup do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :keyword_plan_campaign, 6,
    proto3_optional: true,
    type: :string,
    json_name: "keywordPlanCampaign",
    deprecated: false

  field :id, 7, proto3_optional: true, type: :int64, deprecated: false
  field :name, 8, proto3_optional: true, type: :string
  field :cpc_bid_micros, 9, proto3_optional: true, type: :int64, json_name: "cpcBidMicros"
end