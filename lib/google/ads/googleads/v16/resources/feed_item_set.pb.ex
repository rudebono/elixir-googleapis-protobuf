defmodule Google.Ads.Googleads.V16.Resources.FeedItemSet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :dynamic_set_filter, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :feed, 2, type: :string, deprecated: false
  field :feed_item_set_id, 3, type: :int64, json_name: "feedItemSetId", deprecated: false
  field :display_name, 4, type: :string, json_name: "displayName"

  field :status, 8,
    type: Google.Ads.Googleads.V16.Enums.FeedItemSetStatusEnum.FeedItemSetStatus,
    enum: true,
    deprecated: false

  field :dynamic_location_set_filter, 5,
    type: Google.Ads.Googleads.V16.Common.DynamicLocationSetFilter,
    json_name: "dynamicLocationSetFilter",
    oneof: 0

  field :dynamic_affiliate_location_set_filter, 6,
    type: Google.Ads.Googleads.V16.Common.DynamicAffiliateLocationSetFilter,
    json_name: "dynamicAffiliateLocationSetFilter",
    oneof: 0
end
