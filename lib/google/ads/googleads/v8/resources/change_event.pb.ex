defmodule Google.Ads.Googleads.V8.Resources.ChangeEvent.ChangedResource do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :ad, 1, type: Google.Ads.Googleads.V8.Resources.Ad, deprecated: false

  field :ad_group, 2,
    type: Google.Ads.Googleads.V8.Resources.AdGroup,
    json_name: "adGroup",
    deprecated: false

  field :ad_group_criterion, 3,
    type: Google.Ads.Googleads.V8.Resources.AdGroupCriterion,
    json_name: "adGroupCriterion",
    deprecated: false

  field :campaign, 4, type: Google.Ads.Googleads.V8.Resources.Campaign, deprecated: false

  field :campaign_budget, 5,
    type: Google.Ads.Googleads.V8.Resources.CampaignBudget,
    json_name: "campaignBudget",
    deprecated: false

  field :ad_group_bid_modifier, 6,
    type: Google.Ads.Googleads.V8.Resources.AdGroupBidModifier,
    json_name: "adGroupBidModifier",
    deprecated: false

  field :campaign_criterion, 7,
    type: Google.Ads.Googleads.V8.Resources.CampaignCriterion,
    json_name: "campaignCriterion",
    deprecated: false

  field :feed, 8, type: Google.Ads.Googleads.V8.Resources.Feed, deprecated: false

  field :feed_item, 9,
    type: Google.Ads.Googleads.V8.Resources.FeedItem,
    json_name: "feedItem",
    deprecated: false

  field :campaign_feed, 10,
    type: Google.Ads.Googleads.V8.Resources.CampaignFeed,
    json_name: "campaignFeed",
    deprecated: false

  field :ad_group_feed, 11,
    type: Google.Ads.Googleads.V8.Resources.AdGroupFeed,
    json_name: "adGroupFeed",
    deprecated: false

  field :ad_group_ad, 12,
    type: Google.Ads.Googleads.V8.Resources.AdGroupAd,
    json_name: "adGroupAd",
    deprecated: false

  field :asset, 13, type: Google.Ads.Googleads.V8.Resources.Asset, deprecated: false

  field :customer_asset, 14,
    type: Google.Ads.Googleads.V8.Resources.CustomerAsset,
    json_name: "customerAsset",
    deprecated: false

  field :campaign_asset, 15,
    type: Google.Ads.Googleads.V8.Resources.CampaignAsset,
    json_name: "campaignAsset",
    deprecated: false

  field :ad_group_asset, 16,
    type: Google.Ads.Googleads.V8.Resources.AdGroupAsset,
    json_name: "adGroupAsset",
    deprecated: false
end
defmodule Google.Ads.Googleads.V8.Resources.ChangeEvent do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :change_date_time, 2, type: :string, json_name: "changeDateTime", deprecated: false

  field :change_resource_type, 3,
    type: Google.Ads.Googleads.V8.Enums.ChangeEventResourceTypeEnum.ChangeEventResourceType,
    json_name: "changeResourceType",
    enum: true,
    deprecated: false

  field :change_resource_name, 4,
    type: :string,
    json_name: "changeResourceName",
    deprecated: false

  field :client_type, 5,
    type: Google.Ads.Googleads.V8.Enums.ChangeClientTypeEnum.ChangeClientType,
    json_name: "clientType",
    enum: true,
    deprecated: false

  field :user_email, 6, type: :string, json_name: "userEmail", deprecated: false

  field :old_resource, 7,
    type: Google.Ads.Googleads.V8.Resources.ChangeEvent.ChangedResource,
    json_name: "oldResource",
    deprecated: false

  field :new_resource, 8,
    type: Google.Ads.Googleads.V8.Resources.ChangeEvent.ChangedResource,
    json_name: "newResource",
    deprecated: false

  field :resource_change_operation, 9,
    type: Google.Ads.Googleads.V8.Enums.ResourceChangeOperationEnum.ResourceChangeOperation,
    json_name: "resourceChangeOperation",
    enum: true,
    deprecated: false

  field :changed_fields, 10,
    type: Google.Protobuf.FieldMask,
    json_name: "changedFields",
    deprecated: false

  field :campaign, 11, type: :string, deprecated: false
  field :ad_group, 12, type: :string, json_name: "adGroup", deprecated: false
  field :feed, 13, type: :string, deprecated: false
  field :feed_item, 14, type: :string, json_name: "feedItem", deprecated: false
  field :asset, 20, type: :string, deprecated: false
end
