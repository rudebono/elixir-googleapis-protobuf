defmodule Google.Ads.Googleads.V13.Resources.ExtensionFeedItem do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :extension, 0

  oneof :serving_resource_targeting, 1

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 25, proto3_optional: true, type: :int64, deprecated: false

  field :extension_type, 13,
    type: Google.Ads.Googleads.V13.Enums.ExtensionTypeEnum.ExtensionType,
    json_name: "extensionType",
    enum: true,
    deprecated: false

  field :start_date_time, 26, proto3_optional: true, type: :string, json_name: "startDateTime"
  field :end_date_time, 27, proto3_optional: true, type: :string, json_name: "endDateTime"

  field :ad_schedules, 16,
    repeated: true,
    type: Google.Ads.Googleads.V13.Common.AdScheduleInfo,
    json_name: "adSchedules"

  field :device, 17,
    type: Google.Ads.Googleads.V13.Enums.FeedItemTargetDeviceEnum.FeedItemTargetDevice,
    enum: true

  field :targeted_geo_target_constant, 30,
    proto3_optional: true,
    type: :string,
    json_name: "targetedGeoTargetConstant",
    deprecated: false

  field :targeted_keyword, 22,
    type: Google.Ads.Googleads.V13.Common.KeywordInfo,
    json_name: "targetedKeyword"

  field :status, 4,
    type: Google.Ads.Googleads.V13.Enums.FeedItemStatusEnum.FeedItemStatus,
    enum: true,
    deprecated: false

  field :sitelink_feed_item, 2,
    type: Google.Ads.Googleads.V13.Common.SitelinkFeedItem,
    json_name: "sitelinkFeedItem",
    oneof: 0

  field :structured_snippet_feed_item, 3,
    type: Google.Ads.Googleads.V13.Common.StructuredSnippetFeedItem,
    json_name: "structuredSnippetFeedItem",
    oneof: 0

  field :app_feed_item, 7,
    type: Google.Ads.Googleads.V13.Common.AppFeedItem,
    json_name: "appFeedItem",
    oneof: 0

  field :call_feed_item, 8,
    type: Google.Ads.Googleads.V13.Common.CallFeedItem,
    json_name: "callFeedItem",
    oneof: 0

  field :callout_feed_item, 9,
    type: Google.Ads.Googleads.V13.Common.CalloutFeedItem,
    json_name: "calloutFeedItem",
    oneof: 0

  field :text_message_feed_item, 10,
    type: Google.Ads.Googleads.V13.Common.TextMessageFeedItem,
    json_name: "textMessageFeedItem",
    oneof: 0

  field :price_feed_item, 11,
    type: Google.Ads.Googleads.V13.Common.PriceFeedItem,
    json_name: "priceFeedItem",
    oneof: 0

  field :promotion_feed_item, 12,
    type: Google.Ads.Googleads.V13.Common.PromotionFeedItem,
    json_name: "promotionFeedItem",
    oneof: 0

  field :location_feed_item, 14,
    type: Google.Ads.Googleads.V13.Common.LocationFeedItem,
    json_name: "locationFeedItem",
    oneof: 0,
    deprecated: false

  field :affiliate_location_feed_item, 15,
    type: Google.Ads.Googleads.V13.Common.AffiliateLocationFeedItem,
    json_name: "affiliateLocationFeedItem",
    oneof: 0,
    deprecated: false

  field :hotel_callout_feed_item, 23,
    type: Google.Ads.Googleads.V13.Common.HotelCalloutFeedItem,
    json_name: "hotelCalloutFeedItem",
    oneof: 0

  field :image_feed_item, 31,
    type: Google.Ads.Googleads.V13.Common.ImageFeedItem,
    json_name: "imageFeedItem",
    oneof: 0,
    deprecated: false

  field :targeted_campaign, 28,
    type: :string,
    json_name: "targetedCampaign",
    oneof: 1,
    deprecated: false

  field :targeted_ad_group, 29,
    type: :string,
    json_name: "targetedAdGroup",
    oneof: 1,
    deprecated: false
end