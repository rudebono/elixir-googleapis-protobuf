defmodule Google.Ads.Googleads.V9.Resources.ChangeEvent.ChangedResource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ad: Google.Ads.Googleads.V9.Resources.Ad.t() | nil,
          ad_group: Google.Ads.Googleads.V9.Resources.AdGroup.t() | nil,
          ad_group_criterion: Google.Ads.Googleads.V9.Resources.AdGroupCriterion.t() | nil,
          campaign: Google.Ads.Googleads.V9.Resources.Campaign.t() | nil,
          campaign_budget: Google.Ads.Googleads.V9.Resources.CampaignBudget.t() | nil,
          ad_group_bid_modifier: Google.Ads.Googleads.V9.Resources.AdGroupBidModifier.t() | nil,
          campaign_criterion: Google.Ads.Googleads.V9.Resources.CampaignCriterion.t() | nil,
          feed: Google.Ads.Googleads.V9.Resources.Feed.t() | nil,
          feed_item: Google.Ads.Googleads.V9.Resources.FeedItem.t() | nil,
          campaign_feed: Google.Ads.Googleads.V9.Resources.CampaignFeed.t() | nil,
          ad_group_feed: Google.Ads.Googleads.V9.Resources.AdGroupFeed.t() | nil,
          ad_group_ad: Google.Ads.Googleads.V9.Resources.AdGroupAd.t() | nil,
          asset: Google.Ads.Googleads.V9.Resources.Asset.t() | nil,
          customer_asset: Google.Ads.Googleads.V9.Resources.CustomerAsset.t() | nil,
          campaign_asset: Google.Ads.Googleads.V9.Resources.CampaignAsset.t() | nil,
          ad_group_asset: Google.Ads.Googleads.V9.Resources.AdGroupAsset.t() | nil
        }

  defstruct [
    :ad,
    :ad_group,
    :ad_group_criterion,
    :campaign,
    :campaign_budget,
    :ad_group_bid_modifier,
    :campaign_criterion,
    :feed,
    :feed_item,
    :campaign_feed,
    :ad_group_feed,
    :ad_group_ad,
    :asset,
    :customer_asset,
    :campaign_asset,
    :ad_group_asset
  ]

  field :ad, 1, type: Google.Ads.Googleads.V9.Resources.Ad
  field :ad_group, 2, type: Google.Ads.Googleads.V9.Resources.AdGroup, json_name: "adGroup"

  field :ad_group_criterion, 3,
    type: Google.Ads.Googleads.V9.Resources.AdGroupCriterion,
    json_name: "adGroupCriterion"

  field :campaign, 4, type: Google.Ads.Googleads.V9.Resources.Campaign

  field :campaign_budget, 5,
    type: Google.Ads.Googleads.V9.Resources.CampaignBudget,
    json_name: "campaignBudget"

  field :ad_group_bid_modifier, 6,
    type: Google.Ads.Googleads.V9.Resources.AdGroupBidModifier,
    json_name: "adGroupBidModifier"

  field :campaign_criterion, 7,
    type: Google.Ads.Googleads.V9.Resources.CampaignCriterion,
    json_name: "campaignCriterion"

  field :feed, 8, type: Google.Ads.Googleads.V9.Resources.Feed
  field :feed_item, 9, type: Google.Ads.Googleads.V9.Resources.FeedItem, json_name: "feedItem"

  field :campaign_feed, 10,
    type: Google.Ads.Googleads.V9.Resources.CampaignFeed,
    json_name: "campaignFeed"

  field :ad_group_feed, 11,
    type: Google.Ads.Googleads.V9.Resources.AdGroupFeed,
    json_name: "adGroupFeed"

  field :ad_group_ad, 12,
    type: Google.Ads.Googleads.V9.Resources.AdGroupAd,
    json_name: "adGroupAd"

  field :asset, 13, type: Google.Ads.Googleads.V9.Resources.Asset

  field :customer_asset, 14,
    type: Google.Ads.Googleads.V9.Resources.CustomerAsset,
    json_name: "customerAsset"

  field :campaign_asset, 15,
    type: Google.Ads.Googleads.V9.Resources.CampaignAsset,
    json_name: "campaignAsset"

  field :ad_group_asset, 16,
    type: Google.Ads.Googleads.V9.Resources.AdGroupAsset,
    json_name: "adGroupAsset"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Resources.ChangeEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          change_date_time: String.t(),
          change_resource_type:
            Google.Ads.Googleads.V9.Enums.ChangeEventResourceTypeEnum.ChangeEventResourceType.t(),
          change_resource_name: String.t(),
          client_type: Google.Ads.Googleads.V9.Enums.ChangeClientTypeEnum.ChangeClientType.t(),
          user_email: String.t(),
          old_resource: Google.Ads.Googleads.V9.Resources.ChangeEvent.ChangedResource.t() | nil,
          new_resource: Google.Ads.Googleads.V9.Resources.ChangeEvent.ChangedResource.t() | nil,
          resource_change_operation:
            Google.Ads.Googleads.V9.Enums.ResourceChangeOperationEnum.ResourceChangeOperation.t(),
          changed_fields: Google.Protobuf.FieldMask.t() | nil,
          campaign: String.t(),
          ad_group: String.t(),
          feed: String.t(),
          feed_item: String.t(),
          asset: String.t()
        }

  defstruct [
    :resource_name,
    :change_date_time,
    :change_resource_type,
    :change_resource_name,
    :client_type,
    :user_email,
    :old_resource,
    :new_resource,
    :resource_change_operation,
    :changed_fields,
    :campaign,
    :ad_group,
    :feed,
    :feed_item,
    :asset
  ]

  field :resource_name, 1, type: :string, json_name: "resourceName"
  field :change_date_time, 2, type: :string, json_name: "changeDateTime"

  field :change_resource_type, 3,
    type: Google.Ads.Googleads.V9.Enums.ChangeEventResourceTypeEnum.ChangeEventResourceType,
    enum: true,
    json_name: "changeResourceType"

  field :change_resource_name, 4, type: :string, json_name: "changeResourceName"

  field :client_type, 5,
    type: Google.Ads.Googleads.V9.Enums.ChangeClientTypeEnum.ChangeClientType,
    enum: true,
    json_name: "clientType"

  field :user_email, 6, type: :string, json_name: "userEmail"

  field :old_resource, 7,
    type: Google.Ads.Googleads.V9.Resources.ChangeEvent.ChangedResource,
    json_name: "oldResource"

  field :new_resource, 8,
    type: Google.Ads.Googleads.V9.Resources.ChangeEvent.ChangedResource,
    json_name: "newResource"

  field :resource_change_operation, 9,
    type: Google.Ads.Googleads.V9.Enums.ResourceChangeOperationEnum.ResourceChangeOperation,
    enum: true,
    json_name: "resourceChangeOperation"

  field :changed_fields, 10, type: Google.Protobuf.FieldMask, json_name: "changedFields"
  field :campaign, 11, type: :string
  field :ad_group, 12, type: :string, json_name: "adGroup"
  field :feed, 13, type: :string
  field :feed_item, 14, type: :string, json_name: "feedItem"
  field :asset, 20, type: :string

  def transform_module(), do: nil
end
