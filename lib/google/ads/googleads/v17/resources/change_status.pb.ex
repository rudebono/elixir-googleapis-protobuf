defmodule Google.Ads.Googleads.V17.Resources.ChangeStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :last_change_date_time, 24,
    proto3_optional: true,
    type: :string,
    json_name: "lastChangeDateTime",
    deprecated: false

  field :resource_type, 4,
    type: Google.Ads.Googleads.V17.Enums.ChangeStatusResourceTypeEnum.ChangeStatusResourceType,
    json_name: "resourceType",
    enum: true,
    deprecated: false

  field :campaign, 17, proto3_optional: true, type: :string, deprecated: false

  field :ad_group, 18,
    proto3_optional: true,
    type: :string,
    json_name: "adGroup",
    deprecated: false

  field :resource_status, 8,
    type: Google.Ads.Googleads.V17.Enums.ChangeStatusOperationEnum.ChangeStatusOperation,
    json_name: "resourceStatus",
    enum: true,
    deprecated: false

  field :ad_group_ad, 25,
    proto3_optional: true,
    type: :string,
    json_name: "adGroupAd",
    deprecated: false

  field :ad_group_criterion, 26,
    proto3_optional: true,
    type: :string,
    json_name: "adGroupCriterion",
    deprecated: false

  field :campaign_criterion, 27,
    proto3_optional: true,
    type: :string,
    json_name: "campaignCriterion",
    deprecated: false

  field :feed, 28, proto3_optional: true, type: :string, deprecated: false

  field :feed_item, 29,
    proto3_optional: true,
    type: :string,
    json_name: "feedItem",
    deprecated: false

  field :ad_group_feed, 30,
    proto3_optional: true,
    type: :string,
    json_name: "adGroupFeed",
    deprecated: false

  field :campaign_feed, 31,
    proto3_optional: true,
    type: :string,
    json_name: "campaignFeed",
    deprecated: false

  field :ad_group_bid_modifier, 32,
    proto3_optional: true,
    type: :string,
    json_name: "adGroupBidModifier",
    deprecated: false

  field :shared_set, 33, type: :string, json_name: "sharedSet", deprecated: false
  field :campaign_shared_set, 34, type: :string, json_name: "campaignSharedSet", deprecated: false
  field :asset, 35, type: :string, deprecated: false
  field :customer_asset, 36, type: :string, json_name: "customerAsset", deprecated: false
  field :campaign_asset, 37, type: :string, json_name: "campaignAsset", deprecated: false
  field :ad_group_asset, 38, type: :string, json_name: "adGroupAsset", deprecated: false
  field :combined_audience, 40, type: :string, json_name: "combinedAudience", deprecated: false
  field :asset_group, 41, type: :string, json_name: "assetGroup", deprecated: false
end