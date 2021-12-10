defmodule Google.Ads.Googleads.V7.Resources.ChangeEvent.ChangedResource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ad: Google.Ads.Googleads.V7.Resources.Ad.t() | nil,
          ad_group: Google.Ads.Googleads.V7.Resources.AdGroup.t() | nil,
          ad_group_criterion: Google.Ads.Googleads.V7.Resources.AdGroupCriterion.t() | nil,
          campaign: Google.Ads.Googleads.V7.Resources.Campaign.t() | nil,
          campaign_budget: Google.Ads.Googleads.V7.Resources.CampaignBudget.t() | nil,
          ad_group_bid_modifier: Google.Ads.Googleads.V7.Resources.AdGroupBidModifier.t() | nil,
          campaign_criterion: Google.Ads.Googleads.V7.Resources.CampaignCriterion.t() | nil,
          feed: Google.Ads.Googleads.V7.Resources.Feed.t() | nil,
          feed_item: Google.Ads.Googleads.V7.Resources.FeedItem.t() | nil,
          campaign_feed: Google.Ads.Googleads.V7.Resources.CampaignFeed.t() | nil,
          ad_group_feed: Google.Ads.Googleads.V7.Resources.AdGroupFeed.t() | nil,
          ad_group_ad: Google.Ads.Googleads.V7.Resources.AdGroupAd.t() | nil
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
            ad_group_ad: nil

  field :ad, 1, type: Google.Ads.Googleads.V7.Resources.Ad, deprecated: false

  field :ad_group, 2,
    type: Google.Ads.Googleads.V7.Resources.AdGroup,
    json_name: "adGroup",
    deprecated: false

  field :ad_group_criterion, 3,
    type: Google.Ads.Googleads.V7.Resources.AdGroupCriterion,
    json_name: "adGroupCriterion",
    deprecated: false

  field :campaign, 4, type: Google.Ads.Googleads.V7.Resources.Campaign, deprecated: false

  field :campaign_budget, 5,
    type: Google.Ads.Googleads.V7.Resources.CampaignBudget,
    json_name: "campaignBudget",
    deprecated: false

  field :ad_group_bid_modifier, 6,
    type: Google.Ads.Googleads.V7.Resources.AdGroupBidModifier,
    json_name: "adGroupBidModifier",
    deprecated: false

  field :campaign_criterion, 7,
    type: Google.Ads.Googleads.V7.Resources.CampaignCriterion,
    json_name: "campaignCriterion",
    deprecated: false

  field :feed, 8, type: Google.Ads.Googleads.V7.Resources.Feed, deprecated: false

  field :feed_item, 9,
    type: Google.Ads.Googleads.V7.Resources.FeedItem,
    json_name: "feedItem",
    deprecated: false

  field :campaign_feed, 10,
    type: Google.Ads.Googleads.V7.Resources.CampaignFeed,
    json_name: "campaignFeed",
    deprecated: false

  field :ad_group_feed, 11,
    type: Google.Ads.Googleads.V7.Resources.AdGroupFeed,
    json_name: "adGroupFeed",
    deprecated: false

  field :ad_group_ad, 12,
    type: Google.Ads.Googleads.V7.Resources.AdGroupAd,
    json_name: "adGroupAd",
    deprecated: false
end
defmodule Google.Ads.Googleads.V7.Resources.ChangeEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          change_date_time: String.t(),
          change_resource_type:
            Google.Ads.Googleads.V7.Enums.ChangeEventResourceTypeEnum.ChangeEventResourceType.t(),
          change_resource_name: String.t(),
          client_type: Google.Ads.Googleads.V7.Enums.ChangeClientTypeEnum.ChangeClientType.t(),
          user_email: String.t(),
          old_resource: Google.Ads.Googleads.V7.Resources.ChangeEvent.ChangedResource.t() | nil,
          new_resource: Google.Ads.Googleads.V7.Resources.ChangeEvent.ChangedResource.t() | nil,
          resource_change_operation:
            Google.Ads.Googleads.V7.Enums.ResourceChangeOperationEnum.ResourceChangeOperation.t(),
          changed_fields: Google.Protobuf.FieldMask.t() | nil,
          campaign: String.t(),
          ad_group: String.t(),
          feed: String.t(),
          feed_item: String.t()
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
            feed_item: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :change_date_time, 2, type: :string, json_name: "changeDateTime", deprecated: false

  field :change_resource_type, 3,
    type: Google.Ads.Googleads.V7.Enums.ChangeEventResourceTypeEnum.ChangeEventResourceType,
    json_name: "changeResourceType",
    enum: true,
    deprecated: false

  field :change_resource_name, 4,
    type: :string,
    json_name: "changeResourceName",
    deprecated: false

  field :client_type, 5,
    type: Google.Ads.Googleads.V7.Enums.ChangeClientTypeEnum.ChangeClientType,
    json_name: "clientType",
    enum: true,
    deprecated: false

  field :user_email, 6, type: :string, json_name: "userEmail", deprecated: false

  field :old_resource, 7,
    type: Google.Ads.Googleads.V7.Resources.ChangeEvent.ChangedResource,
    json_name: "oldResource",
    deprecated: false

  field :new_resource, 8,
    type: Google.Ads.Googleads.V7.Resources.ChangeEvent.ChangedResource,
    json_name: "newResource",
    deprecated: false

  field :resource_change_operation, 9,
    type: Google.Ads.Googleads.V7.Enums.ResourceChangeOperationEnum.ResourceChangeOperation,
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
end
