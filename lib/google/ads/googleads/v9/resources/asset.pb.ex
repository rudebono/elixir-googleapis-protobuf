defmodule Google.Ads.Googleads.V9.Resources.Asset do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :asset_data, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 11, proto3_optional: true, type: :int64, deprecated: false
  field :name, 12, proto3_optional: true, type: :string

  field :type, 4,
    type: Google.Ads.Googleads.V9.Enums.AssetTypeEnum.AssetType,
    enum: true,
    deprecated: false

  field :final_urls, 14, repeated: true, type: :string, json_name: "finalUrls"
  field :final_mobile_urls, 16, repeated: true, type: :string, json_name: "finalMobileUrls"

  field :tracking_url_template, 17,
    proto3_optional: true,
    type: :string,
    json_name: "trackingUrlTemplate"

  field :url_custom_parameters, 18,
    repeated: true,
    type: Google.Ads.Googleads.V9.Common.CustomParameter,
    json_name: "urlCustomParameters"

  field :final_url_suffix, 19, proto3_optional: true, type: :string, json_name: "finalUrlSuffix"

  field :policy_summary, 13,
    type: Google.Ads.Googleads.V9.Resources.AssetPolicySummary,
    json_name: "policySummary",
    deprecated: false

  field :youtube_video_asset, 5,
    type: Google.Ads.Googleads.V9.Common.YoutubeVideoAsset,
    json_name: "youtubeVideoAsset",
    oneof: 0,
    deprecated: false

  field :media_bundle_asset, 6,
    type: Google.Ads.Googleads.V9.Common.MediaBundleAsset,
    json_name: "mediaBundleAsset",
    oneof: 0,
    deprecated: false

  field :image_asset, 7,
    type: Google.Ads.Googleads.V9.Common.ImageAsset,
    json_name: "imageAsset",
    oneof: 0,
    deprecated: false

  field :text_asset, 8,
    type: Google.Ads.Googleads.V9.Common.TextAsset,
    json_name: "textAsset",
    oneof: 0,
    deprecated: false

  field :lead_form_asset, 9,
    type: Google.Ads.Googleads.V9.Common.LeadFormAsset,
    json_name: "leadFormAsset",
    oneof: 0

  field :book_on_google_asset, 10,
    type: Google.Ads.Googleads.V9.Common.BookOnGoogleAsset,
    json_name: "bookOnGoogleAsset",
    oneof: 0

  field :promotion_asset, 15,
    type: Google.Ads.Googleads.V9.Common.PromotionAsset,
    json_name: "promotionAsset",
    oneof: 0

  field :callout_asset, 20,
    type: Google.Ads.Googleads.V9.Common.CalloutAsset,
    json_name: "calloutAsset",
    oneof: 0

  field :structured_snippet_asset, 21,
    type: Google.Ads.Googleads.V9.Common.StructuredSnippetAsset,
    json_name: "structuredSnippetAsset",
    oneof: 0

  field :sitelink_asset, 22,
    type: Google.Ads.Googleads.V9.Common.SitelinkAsset,
    json_name: "sitelinkAsset",
    oneof: 0

  field :page_feed_asset, 23,
    type: Google.Ads.Googleads.V9.Common.PageFeedAsset,
    json_name: "pageFeedAsset",
    oneof: 0

  field :dynamic_education_asset, 24,
    type: Google.Ads.Googleads.V9.Common.DynamicEducationAsset,
    json_name: "dynamicEducationAsset",
    oneof: 0

  field :mobile_app_asset, 25,
    type: Google.Ads.Googleads.V9.Common.MobileAppAsset,
    json_name: "mobileAppAsset",
    oneof: 0

  field :hotel_callout_asset, 26,
    type: Google.Ads.Googleads.V9.Common.HotelCalloutAsset,
    json_name: "hotelCalloutAsset",
    oneof: 0

  field :call_asset, 27,
    type: Google.Ads.Googleads.V9.Common.CallAsset,
    json_name: "callAsset",
    oneof: 0

  field :price_asset, 28,
    type: Google.Ads.Googleads.V9.Common.PriceAsset,
    json_name: "priceAsset",
    oneof: 0

  field :call_to_action_asset, 29,
    type: Google.Ads.Googleads.V9.Common.CallToActionAsset,
    json_name: "callToActionAsset",
    oneof: 0,
    deprecated: false
end

defmodule Google.Ads.Googleads.V9.Resources.AssetPolicySummary do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :policy_topic_entries, 1,
    repeated: true,
    type: Google.Ads.Googleads.V9.Common.PolicyTopicEntry,
    json_name: "policyTopicEntries",
    deprecated: false

  field :review_status, 2,
    type: Google.Ads.Googleads.V9.Enums.PolicyReviewStatusEnum.PolicyReviewStatus,
    json_name: "reviewStatus",
    enum: true,
    deprecated: false

  field :approval_status, 3,
    type: Google.Ads.Googleads.V9.Enums.PolicyApprovalStatusEnum.PolicyApprovalStatus,
    json_name: "approvalStatus",
    enum: true,
    deprecated: false
end