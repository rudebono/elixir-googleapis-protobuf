defmodule Google.Ads.Googleads.V7.Enums.ChangeStatusResourceTypeEnum.ChangeStatusResourceType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :AD_GROUP
          | :AD_GROUP_AD
          | :AD_GROUP_CRITERION
          | :CAMPAIGN
          | :CAMPAIGN_CRITERION
          | :FEED
          | :FEED_ITEM
          | :AD_GROUP_FEED
          | :CAMPAIGN_FEED
          | :AD_GROUP_BID_MODIFIER

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :AD_GROUP, 3

  field :AD_GROUP_AD, 4

  field :AD_GROUP_CRITERION, 5

  field :CAMPAIGN, 6

  field :CAMPAIGN_CRITERION, 7

  field :FEED, 9

  field :FEED_ITEM, 10

  field :AD_GROUP_FEED, 11

  field :CAMPAIGN_FEED, 12

  field :AD_GROUP_BID_MODIFIER, 13
end

defmodule Google.Ads.Googleads.V7.Enums.ChangeStatusResourceTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
