defmodule Google.Ads.Googleads.V9.Resources.FeedItemTarget do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :target, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :feed_item, 12,
    proto3_optional: true,
    type: :string,
    json_name: "feedItem",
    deprecated: false

  field :feed_item_target_type, 3,
    type: Google.Ads.Googleads.V9.Enums.FeedItemTargetTypeEnum.FeedItemTargetType,
    json_name: "feedItemTargetType",
    enum: true,
    deprecated: false

  field :feed_item_target_id, 13,
    proto3_optional: true,
    type: :int64,
    json_name: "feedItemTargetId",
    deprecated: false

  field :status, 11,
    type: Google.Ads.Googleads.V9.Enums.FeedItemTargetStatusEnum.FeedItemTargetStatus,
    enum: true,
    deprecated: false

  field :campaign, 14, type: :string, oneof: 0, deprecated: false
  field :ad_group, 15, type: :string, json_name: "adGroup", oneof: 0, deprecated: false
  field :keyword, 7, type: Google.Ads.Googleads.V9.Common.KeywordInfo, oneof: 0, deprecated: false

  field :geo_target_constant, 16,
    type: :string,
    json_name: "geoTargetConstant",
    oneof: 0,
    deprecated: false

  field :device, 9,
    type: Google.Ads.Googleads.V9.Enums.FeedItemTargetDeviceEnum.FeedItemTargetDevice,
    enum: true,
    oneof: 0,
    deprecated: false

  field :ad_schedule, 10,
    type: Google.Ads.Googleads.V9.Common.AdScheduleInfo,
    json_name: "adSchedule",
    oneof: 0,
    deprecated: false
end