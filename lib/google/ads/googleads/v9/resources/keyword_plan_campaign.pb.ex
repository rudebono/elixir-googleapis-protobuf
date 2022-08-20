defmodule Google.Ads.Googleads.V9.Resources.KeywordPlanCampaign do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :keyword_plan, 9,
    proto3_optional: true,
    type: :string,
    json_name: "keywordPlan",
    deprecated: false

  field :id, 10, proto3_optional: true, type: :int64, deprecated: false
  field :name, 11, proto3_optional: true, type: :string

  field :language_constants, 12,
    repeated: true,
    type: :string,
    json_name: "languageConstants",
    deprecated: false

  field :keyword_plan_network, 6,
    type: Google.Ads.Googleads.V9.Enums.KeywordPlanNetworkEnum.KeywordPlanNetwork,
    json_name: "keywordPlanNetwork",
    enum: true

  field :cpc_bid_micros, 13, proto3_optional: true, type: :int64, json_name: "cpcBidMicros"

  field :geo_targets, 8,
    repeated: true,
    type: Google.Ads.Googleads.V9.Resources.KeywordPlanGeoTarget,
    json_name: "geoTargets"
end

defmodule Google.Ads.Googleads.V9.Resources.KeywordPlanGeoTarget do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :geo_target_constant, 2,
    proto3_optional: true,
    type: :string,
    json_name: "geoTargetConstant",
    deprecated: false
end