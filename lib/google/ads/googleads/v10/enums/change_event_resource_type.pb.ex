defmodule Google.Ads.Googleads.V10.Enums.ChangeEventResourceTypeEnum.ChangeEventResourceType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :AD
          | :AD_GROUP
          | :AD_GROUP_CRITERION
          | :CAMPAIGN
          | :CAMPAIGN_BUDGET
          | :AD_GROUP_BID_MODIFIER
          | :CAMPAIGN_CRITERION
          | :FEED
          | :FEED_ITEM
          | :CAMPAIGN_FEED
          | :AD_GROUP_FEED
          | :AD_GROUP_AD
          | :ASSET
          | :CUSTOMER_ASSET
          | :CAMPAIGN_ASSET
          | :AD_GROUP_ASSET
          | :ASSET_SET
          | :ASSET_SET_ASSET
          | :CAMPAIGN_ASSET_SET

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :AD, 2
  field :AD_GROUP, 3
  field :AD_GROUP_CRITERION, 4
  field :CAMPAIGN, 5
  field :CAMPAIGN_BUDGET, 6
  field :AD_GROUP_BID_MODIFIER, 7
  field :CAMPAIGN_CRITERION, 8
  field :FEED, 9
  field :FEED_ITEM, 10
  field :CAMPAIGN_FEED, 11
  field :AD_GROUP_FEED, 12
  field :AD_GROUP_AD, 13
  field :ASSET, 14
  field :CUSTOMER_ASSET, 15
  field :CAMPAIGN_ASSET, 16
  field :AD_GROUP_ASSET, 17
  field :ASSET_SET, 18
  field :ASSET_SET_ASSET, 19
  field :CAMPAIGN_ASSET_SET, 20
end
defmodule Google.Ads.Googleads.V10.Enums.ChangeEventResourceTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
