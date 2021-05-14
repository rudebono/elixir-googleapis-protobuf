defmodule Google.Ads.Googleads.V4.Resources.FeedItemTarget do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target: {atom, any},
          resource_name: String.t(),
          feed_item: Google.Protobuf.StringValue.t() | nil,
          feed_item_target_type:
            Google.Ads.Googleads.V4.Enums.FeedItemTargetTypeEnum.FeedItemTargetType.t(),
          feed_item_target_id: Google.Protobuf.Int64Value.t() | nil,
          status: Google.Ads.Googleads.V4.Enums.FeedItemTargetStatusEnum.FeedItemTargetStatus.t()
        }

  defstruct [
    :target,
    :resource_name,
    :feed_item,
    :feed_item_target_type,
    :feed_item_target_id,
    :status
  ]

  oneof :target, 0
  field :resource_name, 1, type: :string
  field :feed_item, 2, type: Google.Protobuf.StringValue

  field :feed_item_target_type, 3,
    type: Google.Ads.Googleads.V4.Enums.FeedItemTargetTypeEnum.FeedItemTargetType,
    enum: true

  field :feed_item_target_id, 6, type: Google.Protobuf.Int64Value

  field :status, 11,
    type: Google.Ads.Googleads.V4.Enums.FeedItemTargetStatusEnum.FeedItemTargetStatus,
    enum: true

  field :campaign, 4, type: Google.Protobuf.StringValue, oneof: 0
  field :ad_group, 5, type: Google.Protobuf.StringValue, oneof: 0
  field :keyword, 7, type: Google.Ads.Googleads.V4.Common.KeywordInfo, oneof: 0
  field :geo_target_constant, 8, type: Google.Protobuf.StringValue, oneof: 0

  field :device, 9,
    type: Google.Ads.Googleads.V4.Enums.FeedItemTargetDeviceEnum.FeedItemTargetDevice,
    enum: true,
    oneof: 0

  field :ad_schedule, 10, type: Google.Ads.Googleads.V4.Common.AdScheduleInfo, oneof: 0
end
