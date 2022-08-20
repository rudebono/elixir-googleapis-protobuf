defmodule Google.Ads.Googleads.V10.Enums.ChangeStatusResourceTypeEnum.ChangeStatusResourceType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  field :SHARED_SET, 14
  field :CAMPAIGN_SHARED_SET, 15
  field :ASSET, 16
  field :CUSTOMER_ASSET, 17
  field :CAMPAIGN_ASSET, 18
  field :AD_GROUP_ASSET, 19
end

defmodule Google.Ads.Googleads.V10.Enums.ChangeStatusResourceTypeEnum do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end