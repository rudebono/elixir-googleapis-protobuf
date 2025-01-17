defmodule Google.Ads.Googleads.V18.Resources.Asset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :asset_data, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 11, proto3_optional: true, type: :int64, deprecated: false
  field :name, 12, proto3_optional: true, type: :string

  field :type, 4,
    type: Google.Ads.Googleads.V18.Enums.AssetTypeEnum.AssetType,
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
    type: Google.Ads.Googleads.V18.Common.CustomParameter,
    json_name: "urlCustomParameters"

  field :final_url_suffix, 19, proto3_optional: true, type: :string, json_name: "finalUrlSuffix"

  field :source, 38,
    type: Google.Ads.Googleads.V18.Enums.AssetSourceEnum.AssetSource,
    enum: true,
    deprecated: false

  field :policy_summary, 13,
    type: Google.Ads.Googleads.V18.Resources.AssetPolicySummary,
    json_name: "policySummary",
    deprecated: false

  field :field_type_policy_summaries, 40,
    repeated: true,
    type: Google.Ads.Googleads.V18.Resources.AssetFieldTypePolicySummary,
    json_name: "fieldTypePolicySummaries",
    deprecated: false

  field :youtube_video_asset, 5,
    type: Google.Ads.Googleads.V18.Common.YoutubeVideoAsset,
    json_name: "youtubeVideoAsset",
    oneof: 0,
    deprecated: false

  field :media_bundle_asset, 6,
    type: Google.Ads.Googleads.V18.Common.MediaBundleAsset,
    json_name: "mediaBundleAsset",
    oneof: 0,
    deprecated: false

  field :image_asset, 7,
    type: Google.Ads.Googleads.V18.Common.ImageAsset,
    json_name: "imageAsset",
    oneof: 0,
    deprecated: false

  field :text_asset, 8,
    type: Google.Ads.Googleads.V18.Common.TextAsset,
    json_name: "textAsset",
    oneof: 0,
    deprecated: false

  field :lead_form_asset, 9,
    type: Google.Ads.Googleads.V18.Common.LeadFormAsset,
    json_name: "leadFormAsset",
    oneof: 0

  field :book_on_google_asset, 10,
    type: Google.Ads.Googleads.V18.Common.BookOnGoogleAsset,
    json_name: "bookOnGoogleAsset",
    oneof: 0

  field :promotion_asset, 15,
    type: Google.Ads.Googleads.V18.Common.PromotionAsset,
    json_name: "promotionAsset",
    oneof: 0

  field :callout_asset, 20,
    type: Google.Ads.Googleads.V18.Common.CalloutAsset,
    json_name: "calloutAsset",
    oneof: 0

  field :structured_snippet_asset, 21,
    type: Google.Ads.Googleads.V18.Common.StructuredSnippetAsset,
    json_name: "structuredSnippetAsset",
    oneof: 0

  field :sitelink_asset, 22,
    type: Google.Ads.Googleads.V18.Common.SitelinkAsset,
    json_name: "sitelinkAsset",
    oneof: 0

  field :page_feed_asset, 23,
    type: Google.Ads.Googleads.V18.Common.PageFeedAsset,
    json_name: "pageFeedAsset",
    oneof: 0

  field :dynamic_education_asset, 24,
    type: Google.Ads.Googleads.V18.Common.DynamicEducationAsset,
    json_name: "dynamicEducationAsset",
    oneof: 0

  field :mobile_app_asset, 25,
    type: Google.Ads.Googleads.V18.Common.MobileAppAsset,
    json_name: "mobileAppAsset",
    oneof: 0

  field :hotel_callout_asset, 26,
    type: Google.Ads.Googleads.V18.Common.HotelCalloutAsset,
    json_name: "hotelCalloutAsset",
    oneof: 0

  field :call_asset, 27,
    type: Google.Ads.Googleads.V18.Common.CallAsset,
    json_name: "callAsset",
    oneof: 0

  field :price_asset, 28,
    type: Google.Ads.Googleads.V18.Common.PriceAsset,
    json_name: "priceAsset",
    oneof: 0

  field :call_to_action_asset, 29,
    type: Google.Ads.Googleads.V18.Common.CallToActionAsset,
    json_name: "callToActionAsset",
    oneof: 0,
    deprecated: false

  field :dynamic_real_estate_asset, 30,
    type: Google.Ads.Googleads.V18.Common.DynamicRealEstateAsset,
    json_name: "dynamicRealEstateAsset",
    oneof: 0

  field :dynamic_custom_asset, 31,
    type: Google.Ads.Googleads.V18.Common.DynamicCustomAsset,
    json_name: "dynamicCustomAsset",
    oneof: 0

  field :dynamic_hotels_and_rentals_asset, 32,
    type: Google.Ads.Googleads.V18.Common.DynamicHotelsAndRentalsAsset,
    json_name: "dynamicHotelsAndRentalsAsset",
    oneof: 0

  field :dynamic_flights_asset, 33,
    type: Google.Ads.Googleads.V18.Common.DynamicFlightsAsset,
    json_name: "dynamicFlightsAsset",
    oneof: 0

  field :demand_gen_carousel_card_asset, 50,
    type: Google.Ads.Googleads.V18.Common.DemandGenCarouselCardAsset,
    json_name: "demandGenCarouselCardAsset",
    oneof: 0,
    deprecated: false

  field :dynamic_travel_asset, 35,
    type: Google.Ads.Googleads.V18.Common.DynamicTravelAsset,
    json_name: "dynamicTravelAsset",
    oneof: 0

  field :dynamic_local_asset, 36,
    type: Google.Ads.Googleads.V18.Common.DynamicLocalAsset,
    json_name: "dynamicLocalAsset",
    oneof: 0

  field :dynamic_jobs_asset, 37,
    type: Google.Ads.Googleads.V18.Common.DynamicJobsAsset,
    json_name: "dynamicJobsAsset",
    oneof: 0

  field :location_asset, 39,
    type: Google.Ads.Googleads.V18.Common.LocationAsset,
    json_name: "locationAsset",
    oneof: 0,
    deprecated: false

  field :hotel_property_asset, 41,
    type: Google.Ads.Googleads.V18.Common.HotelPropertyAsset,
    json_name: "hotelPropertyAsset",
    oneof: 0,
    deprecated: false
end

defmodule Google.Ads.Googleads.V18.Resources.AssetFieldTypePolicySummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :asset_field_type, 1,
    proto3_optional: true,
    type: Google.Ads.Googleads.V18.Enums.AssetFieldTypeEnum.AssetFieldType,
    json_name: "assetFieldType",
    enum: true,
    deprecated: false

  field :asset_source, 2,
    proto3_optional: true,
    type: Google.Ads.Googleads.V18.Enums.AssetSourceEnum.AssetSource,
    json_name: "assetSource",
    enum: true,
    deprecated: false

  field :policy_summary_info, 3,
    proto3_optional: true,
    type: Google.Ads.Googleads.V18.Resources.AssetPolicySummary,
    json_name: "policySummaryInfo",
    deprecated: false
end

defmodule Google.Ads.Googleads.V18.Resources.AssetPolicySummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :policy_topic_entries, 1,
    repeated: true,
    type: Google.Ads.Googleads.V18.Common.PolicyTopicEntry,
    json_name: "policyTopicEntries",
    deprecated: false

  field :review_status, 2,
    type: Google.Ads.Googleads.V18.Enums.PolicyReviewStatusEnum.PolicyReviewStatus,
    json_name: "reviewStatus",
    enum: true,
    deprecated: false

  field :approval_status, 3,
    type: Google.Ads.Googleads.V18.Enums.PolicyApprovalStatusEnum.PolicyApprovalStatus,
    json_name: "approvalStatus",
    enum: true,
    deprecated: false
end
