defmodule Google.Ads.Googleads.V13.Resources.Ad do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :ad_data, 0

  field :resource_name, 37, type: :string, json_name: "resourceName", deprecated: false
  field :id, 40, proto3_optional: true, type: :int64, deprecated: false
  field :final_urls, 41, repeated: true, type: :string, json_name: "finalUrls"

  field :final_app_urls, 35,
    repeated: true,
    type: Google.Ads.Googleads.V13.Common.FinalAppUrl,
    json_name: "finalAppUrls"

  field :final_mobile_urls, 42, repeated: true, type: :string, json_name: "finalMobileUrls"

  field :tracking_url_template, 43,
    proto3_optional: true,
    type: :string,
    json_name: "trackingUrlTemplate"

  field :final_url_suffix, 44, proto3_optional: true, type: :string, json_name: "finalUrlSuffix"

  field :url_custom_parameters, 10,
    repeated: true,
    type: Google.Ads.Googleads.V13.Common.CustomParameter,
    json_name: "urlCustomParameters"

  field :display_url, 45, proto3_optional: true, type: :string, json_name: "displayUrl"

  field :type, 5,
    type: Google.Ads.Googleads.V13.Enums.AdTypeEnum.AdType,
    enum: true,
    deprecated: false

  field :added_by_google_ads, 46,
    proto3_optional: true,
    type: :bool,
    json_name: "addedByGoogleAds",
    deprecated: false

  field :device_preference, 20,
    type: Google.Ads.Googleads.V13.Enums.DeviceEnum.Device,
    json_name: "devicePreference",
    enum: true

  field :url_collections, 26,
    repeated: true,
    type: Google.Ads.Googleads.V13.Common.UrlCollection,
    json_name: "urlCollections"

  field :name, 47, proto3_optional: true, type: :string, deprecated: false

  field :system_managed_resource_source, 27,
    type:
      Google.Ads.Googleads.V13.Enums.SystemManagedResourceSourceEnum.SystemManagedResourceSource,
    json_name: "systemManagedResourceSource",
    enum: true,
    deprecated: false

  field :text_ad, 6,
    type: Google.Ads.Googleads.V13.Common.TextAdInfo,
    json_name: "textAd",
    oneof: 0,
    deprecated: false

  field :expanded_text_ad, 7,
    type: Google.Ads.Googleads.V13.Common.ExpandedTextAdInfo,
    json_name: "expandedTextAd",
    oneof: 0

  field :call_ad, 49,
    type: Google.Ads.Googleads.V13.Common.CallAdInfo,
    json_name: "callAd",
    oneof: 0

  field :expanded_dynamic_search_ad, 14,
    type: Google.Ads.Googleads.V13.Common.ExpandedDynamicSearchAdInfo,
    json_name: "expandedDynamicSearchAd",
    oneof: 0,
    deprecated: false

  field :hotel_ad, 15,
    type: Google.Ads.Googleads.V13.Common.HotelAdInfo,
    json_name: "hotelAd",
    oneof: 0

  field :shopping_smart_ad, 17,
    type: Google.Ads.Googleads.V13.Common.ShoppingSmartAdInfo,
    json_name: "shoppingSmartAd",
    oneof: 0

  field :shopping_product_ad, 18,
    type: Google.Ads.Googleads.V13.Common.ShoppingProductAdInfo,
    json_name: "shoppingProductAd",
    oneof: 0

  field :image_ad, 22,
    type: Google.Ads.Googleads.V13.Common.ImageAdInfo,
    json_name: "imageAd",
    oneof: 0,
    deprecated: false

  field :video_ad, 24,
    type: Google.Ads.Googleads.V13.Common.VideoAdInfo,
    json_name: "videoAd",
    oneof: 0

  field :video_responsive_ad, 39,
    type: Google.Ads.Googleads.V13.Common.VideoResponsiveAdInfo,
    json_name: "videoResponsiveAd",
    oneof: 0

  field :responsive_search_ad, 25,
    type: Google.Ads.Googleads.V13.Common.ResponsiveSearchAdInfo,
    json_name: "responsiveSearchAd",
    oneof: 0

  field :legacy_responsive_display_ad, 28,
    type: Google.Ads.Googleads.V13.Common.LegacyResponsiveDisplayAdInfo,
    json_name: "legacyResponsiveDisplayAd",
    oneof: 0

  field :app_ad, 29, type: Google.Ads.Googleads.V13.Common.AppAdInfo, json_name: "appAd", oneof: 0

  field :legacy_app_install_ad, 30,
    type: Google.Ads.Googleads.V13.Common.LegacyAppInstallAdInfo,
    json_name: "legacyAppInstallAd",
    oneof: 0,
    deprecated: false

  field :responsive_display_ad, 31,
    type: Google.Ads.Googleads.V13.Common.ResponsiveDisplayAdInfo,
    json_name: "responsiveDisplayAd",
    oneof: 0

  field :local_ad, 32,
    type: Google.Ads.Googleads.V13.Common.LocalAdInfo,
    json_name: "localAd",
    oneof: 0

  field :display_upload_ad, 33,
    type: Google.Ads.Googleads.V13.Common.DisplayUploadAdInfo,
    json_name: "displayUploadAd",
    oneof: 0

  field :app_engagement_ad, 34,
    type: Google.Ads.Googleads.V13.Common.AppEngagementAdInfo,
    json_name: "appEngagementAd",
    oneof: 0

  field :shopping_comparison_listing_ad, 36,
    type: Google.Ads.Googleads.V13.Common.ShoppingComparisonListingAdInfo,
    json_name: "shoppingComparisonListingAd",
    oneof: 0

  field :smart_campaign_ad, 48,
    type: Google.Ads.Googleads.V13.Common.SmartCampaignAdInfo,
    json_name: "smartCampaignAd",
    oneof: 0

  field :app_pre_registration_ad, 50,
    type: Google.Ads.Googleads.V13.Common.AppPreRegistrationAdInfo,
    json_name: "appPreRegistrationAd",
    oneof: 0

  field :discovery_multi_asset_ad, 51,
    type: Google.Ads.Googleads.V13.Common.DiscoveryMultiAssetAdInfo,
    json_name: "discoveryMultiAssetAd",
    oneof: 0

  field :discovery_carousel_ad, 52,
    type: Google.Ads.Googleads.V13.Common.DiscoveryCarouselAdInfo,
    json_name: "discoveryCarouselAd",
    oneof: 0

  field :travel_ad, 54,
    type: Google.Ads.Googleads.V13.Common.TravelAdInfo,
    json_name: "travelAd",
    oneof: 0
end