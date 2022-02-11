defmodule Google.Ads.Googleads.V10.Resources.FeedItemSet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dynamic_set_filter:
            {:dynamic_location_set_filter,
             Google.Ads.Googleads.V10.Common.DynamicLocationSetFilter.t() | nil}
            | {:dynamic_affiliate_location_set_filter,
               Google.Ads.Googleads.V10.Common.DynamicAffiliateLocationSetFilter.t() | nil},
          resource_name: String.t(),
          feed: String.t(),
          feed_item_set_id: integer,
          display_name: String.t(),
          status: Google.Ads.Googleads.V10.Enums.FeedItemSetStatusEnum.FeedItemSetStatus.t()
        }

  defstruct dynamic_set_filter: nil,
            resource_name: "",
            feed: "",
            feed_item_set_id: 0,
            display_name: "",
            status: :UNSPECIFIED

  oneof :dynamic_set_filter, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :feed, 2, type: :string, deprecated: false
  field :feed_item_set_id, 3, type: :int64, json_name: "feedItemSetId", deprecated: false
  field :display_name, 4, type: :string, json_name: "displayName"

  field :status, 8,
    type: Google.Ads.Googleads.V10.Enums.FeedItemSetStatusEnum.FeedItemSetStatus,
    enum: true,
    deprecated: false

  field :dynamic_location_set_filter, 5,
    type: Google.Ads.Googleads.V10.Common.DynamicLocationSetFilter,
    json_name: "dynamicLocationSetFilter",
    oneof: 0

  field :dynamic_affiliate_location_set_filter, 6,
    type: Google.Ads.Googleads.V10.Common.DynamicAffiliateLocationSetFilter,
    json_name: "dynamicAffiliateLocationSetFilter",
    oneof: 0
end
