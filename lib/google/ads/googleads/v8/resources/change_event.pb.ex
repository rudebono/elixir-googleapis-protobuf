defmodule Google.Ads.Googleads.V8.Resources.ChangeEvent.ChangedResource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ad: Google.Ads.Googleads.V8.Resources.Ad.t() | nil,
          ad_group: Google.Ads.Googleads.V8.Resources.AdGroup.t() | nil,
          ad_group_criterion: Google.Ads.Googleads.V8.Resources.AdGroupCriterion.t() | nil,
          campaign: Google.Ads.Googleads.V8.Resources.Campaign.t() | nil,
          campaign_budget: Google.Ads.Googleads.V8.Resources.CampaignBudget.t() | nil,
          ad_group_bid_modifier: Google.Ads.Googleads.V8.Resources.AdGroupBidModifier.t() | nil,
          campaign_criterion: Google.Ads.Googleads.V8.Resources.CampaignCriterion.t() | nil,
          feed: Google.Ads.Googleads.V8.Resources.Feed.t() | nil,
          feed_item: Google.Ads.Googleads.V8.Resources.FeedItem.t() | nil,
          campaign_feed: Google.Ads.Googleads.V8.Resources.CampaignFeed.t() | nil,
          ad_group_feed: Google.Ads.Googleads.V8.Resources.AdGroupFeed.t() | nil,
          ad_group_ad: Google.Ads.Googleads.V8.Resources.AdGroupAd.t() | nil,
          asset: Google.Ads.Googleads.V8.Resources.Asset.t() | nil,
          customer_asset: Google.Ads.Googleads.V8.Resources.CustomerAsset.t() | nil,
          campaign_asset: Google.Ads.Googleads.V8.Resources.CampaignAsset.t() | nil,
          ad_group_asset: Google.Ads.Googleads.V8.Resources.AdGroupAsset.t() | nil
        }

  defstruct ad: nil,
            ad_group: nil,
            ad_group_criterion: nil,
            campaign: nil,
            campaign_budget: nil,
            ad_group_bid_modifier: nil,
            campaign_criterion: nil,
            feed: nil,
            feed_item: nil,
            campaign_feed: nil,
            ad_group_feed: nil,
            ad_group_ad: nil,
            asset: nil,
            customer_asset: nil,
            campaign_asset: nil,
            ad_group_asset: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          change_date_time: String.t(),
          change_resource_type:
            Google.Ads.Googleads.V8.Enums.ChangeEventResourceTypeEnum.ChangeEventResourceType.t(),
          change_resource_name: String.t(),
          client_type: Google.Ads.Googleads.V8.Enums.ChangeClientTypeEnum.ChangeClientType.t(),
          user_email: String.t(),
          old_resource: Google.Ads.Googleads.V8.Resources.ChangeEvent.ChangedResource.t() | nil,
          new_resource: Google.Ads.Googleads.V8.Resources.ChangeEvent.ChangedResource.t() | nil,
          resource_change_operation:
            Google.Ads.Googleads.V8.Enums.ResourceChangeOperationEnum.ResourceChangeOperation.t(),
          changed_fields: Google.Protobuf.FieldMask.t() | nil,
          campaign: String.t(),
          ad_group: String.t(),
          feed: String.t(),
          feed_item: String.t(),
          asset: String.t()
        }

  defstruct resource_name: "",
            change_date_time: "",
            change_resource_type: :UNSPECIFIED,
            change_resource_name: "",
            client_type: :UNSPECIFIED,
            user_email: "",
            old_resource: nil,
            new_resource: nil,
            resource_change_operation: :UNSPECIFIED,
            changed_fields: nil,
            campaign: "",
            ad_group: "",
            feed: "",
            feed_item: "",
            asset: ""

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
