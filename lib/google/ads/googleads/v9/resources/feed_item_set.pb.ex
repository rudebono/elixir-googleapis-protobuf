defmodule Google.Ads.Googleads.V9.Resources.FeedItemSet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dynamic_set_filter:
            {:dynamic_location_set_filter,
             Google.Ads.Googleads.V9.Common.DynamicLocationSetFilter.t() | nil}
            | {:dynamic_affiliate_location_set_filter,
               Google.Ads.Googleads.V9.Common.DynamicAffiliateLocationSetFilter.t() | nil},
          resource_name: String.t(),
          feed: String.t(),
          feed_item_set_id: integer,
          display_name: String.t(),
          status: Google.Ads.Googleads.V9.Enums.FeedItemSetStatusEnum.FeedItemSetStatus.t()
        }

  defstruct [
    :dynamic_set_filter,
    :resource_name,
    :feed,
    :feed_item_set_id,
    :display_name,
    :status
  ]

  oneof :dynamic_set_filter, 0

  field :resource_name, 1, type: :string, json_name: "resourceName"
  field :feed, 2, type: :string
  field :feed_item_set_id, 3, type: :int64, json_name: "feedItemSetId"
  field :display_name, 4, type: :string, json_name: "displayName"

  field :status, 8,
    type: Google.Ads.Googleads.V9.Enums.FeedItemSetStatusEnum.FeedItemSetStatus,
    enum: true

  field :dynamic_location_set_filter, 5,
    type: Google.Ads.Googleads.V9.Common.DynamicLocationSetFilter,
    json_name: "dynamicLocationSetFilter",
    oneof: 0

  field :dynamic_affiliate_location_set_filter, 6,
    type: Google.Ads.Googleads.V9.Common.DynamicAffiliateLocationSetFilter,
    json_name: "dynamicAffiliateLocationSetFilter",
    oneof: 0

  def transform_module(), do: nil
end
