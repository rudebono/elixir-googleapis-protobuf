defmodule Google.Ads.Googleads.V9.Resources.BiddingStrategy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :scheme, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 16, proto3_optional: true, type: :int64, deprecated: false
  field :name, 17, proto3_optional: true, type: :string

  field :status, 15,
    type: Google.Ads.Googleads.V9.Enums.BiddingStrategyStatusEnum.BiddingStrategyStatus,
    enum: true,
    deprecated: false

  field :type, 5,
    type: Google.Ads.Googleads.V9.Enums.BiddingStrategyTypeEnum.BiddingStrategyType,
    enum: true,
    deprecated: false

  field :currency_code, 23, type: :string, json_name: "currencyCode", deprecated: false

  field :effective_currency_code, 20,
    proto3_optional: true,
    type: :string,
    json_name: "effectiveCurrencyCode",
    deprecated: false

  field :campaign_count, 18,
    proto3_optional: true,
    type: :int64,
    json_name: "campaignCount",
    deprecated: false

  field :non_removed_campaign_count, 19,
    proto3_optional: true,
    type: :int64,
    json_name: "nonRemovedCampaignCount",
    deprecated: false

  field :enhanced_cpc, 7,
    type: Google.Ads.Googleads.V9.Common.EnhancedCpc,
    json_name: "enhancedCpc",
    oneof: 0

  field :maximize_conversion_value, 21,
    type: Google.Ads.Googleads.V9.Common.MaximizeConversionValue,
    json_name: "maximizeConversionValue",
    oneof: 0

  field :maximize_conversions, 22,
    type: Google.Ads.Googleads.V9.Common.MaximizeConversions,
    json_name: "maximizeConversions",
    oneof: 0

  field :target_cpa, 9,
    type: Google.Ads.Googleads.V9.Common.TargetCpa,
    json_name: "targetCpa",
    oneof: 0

  field :target_impression_share, 48,
    type: Google.Ads.Googleads.V9.Common.TargetImpressionShare,
    json_name: "targetImpressionShare",
    oneof: 0

  field :target_roas, 11,
    type: Google.Ads.Googleads.V9.Common.TargetRoas,
    json_name: "targetRoas",
    oneof: 0

  field :target_spend, 12,
    type: Google.Ads.Googleads.V9.Common.TargetSpend,
    json_name: "targetSpend",
    oneof: 0
end