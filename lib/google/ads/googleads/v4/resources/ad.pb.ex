defmodule Google.Ads.Googleads.V4.Resources.Ad do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ad_data: {atom, any},
          resource_name: String.t(),
          id: Google.Protobuf.Int64Value.t() | nil,
          final_urls: [Google.Protobuf.StringValue.t()],
          final_app_urls: [Google.Ads.Googleads.V4.Common.FinalAppUrl.t()],
          final_mobile_urls: [Google.Protobuf.StringValue.t()],
          tracking_url_template: Google.Protobuf.StringValue.t() | nil,
          final_url_suffix: Google.Protobuf.StringValue.t() | nil,
          url_custom_parameters: [Google.Ads.Googleads.V4.Common.CustomParameter.t()],
          display_url: Google.Protobuf.StringValue.t() | nil,
          type: Google.Ads.Googleads.V4.Enums.AdTypeEnum.AdType.t(),
          added_by_google_ads: Google.Protobuf.BoolValue.t() | nil,
          device_preference: Google.Ads.Googleads.V4.Enums.DeviceEnum.Device.t(),
          url_collections: [Google.Ads.Googleads.V4.Common.UrlCollection.t()],
          name: Google.Protobuf.StringValue.t() | nil,
          system_managed_resource_source:
            Google.Ads.Googleads.V4.Enums.SystemManagedResourceSourceEnum.SystemManagedResourceSource.t()
        }

  defstruct [
    :ad_data,
    :resource_name,
    :id,
    :final_urls,
    :final_app_urls,
    :final_mobile_urls,
    :tracking_url_template,
    :final_url_suffix,
    :url_custom_parameters,
    :display_url,
    :type,
    :added_by_google_ads,
    :device_preference,
    :url_collections,
    :name,
    :system_managed_resource_source
  ]

  oneof :ad_data, 0
  field :resource_name, 37, type: :string
  field :id, 1, type: Google.Protobuf.Int64Value
  field :final_urls, 2, repeated: true, type: Google.Protobuf.StringValue
  field :final_app_urls, 35, repeated: true, type: Google.Ads.Googleads.V4.Common.FinalAppUrl
  field :final_mobile_urls, 16, repeated: true, type: Google.Protobuf.StringValue
  field :tracking_url_template, 12, type: Google.Protobuf.StringValue
  field :final_url_suffix, 38, type: Google.Protobuf.StringValue

  field :url_custom_parameters, 10,
    repeated: true,
    type: Google.Ads.Googleads.V4.Common.CustomParameter

  field :display_url, 4, type: Google.Protobuf.StringValue
  field :type, 5, type: Google.Ads.Googleads.V4.Enums.AdTypeEnum.AdType, enum: true
  field :added_by_google_ads, 19, type: Google.Protobuf.BoolValue
  field :device_preference, 20, type: Google.Ads.Googleads.V4.Enums.DeviceEnum.Device, enum: true
  field :url_collections, 26, repeated: true, type: Google.Ads.Googleads.V4.Common.UrlCollection
  field :name, 23, type: Google.Protobuf.StringValue

  field :system_managed_resource_source, 27,
    type:
      Google.Ads.Googleads.V4.Enums.SystemManagedResourceSourceEnum.SystemManagedResourceSource,
    enum: true

  field :text_ad, 6, type: Google.Ads.Googleads.V4.Common.TextAdInfo, oneof: 0
  field :expanded_text_ad, 7, type: Google.Ads.Googleads.V4.Common.ExpandedTextAdInfo, oneof: 0
  field :call_only_ad, 13, type: Google.Ads.Googleads.V4.Common.CallOnlyAdInfo, oneof: 0

  field :expanded_dynamic_search_ad, 14,
    type: Google.Ads.Googleads.V4.Common.ExpandedDynamicSearchAdInfo,
    oneof: 0

  field :hotel_ad, 15, type: Google.Ads.Googleads.V4.Common.HotelAdInfo, oneof: 0
  field :shopping_smart_ad, 17, type: Google.Ads.Googleads.V4.Common.ShoppingSmartAdInfo, oneof: 0

  field :shopping_product_ad, 18,
    type: Google.Ads.Googleads.V4.Common.ShoppingProductAdInfo,
    oneof: 0

  field :gmail_ad, 21, type: Google.Ads.Googleads.V4.Common.GmailAdInfo, oneof: 0
  field :image_ad, 22, type: Google.Ads.Googleads.V4.Common.ImageAdInfo, oneof: 0
  field :video_ad, 24, type: Google.Ads.Googleads.V4.Common.VideoAdInfo, oneof: 0

  field :responsive_search_ad, 25,
    type: Google.Ads.Googleads.V4.Common.ResponsiveSearchAdInfo,
    oneof: 0

  field :legacy_responsive_display_ad, 28,
    type: Google.Ads.Googleads.V4.Common.LegacyResponsiveDisplayAdInfo,
    oneof: 0

  field :app_ad, 29, type: Google.Ads.Googleads.V4.Common.AppAdInfo, oneof: 0

  field :legacy_app_install_ad, 30,
    type: Google.Ads.Googleads.V4.Common.LegacyAppInstallAdInfo,
    oneof: 0

  field :responsive_display_ad, 31,
    type: Google.Ads.Googleads.V4.Common.ResponsiveDisplayAdInfo,
    oneof: 0

  field :local_ad, 32, type: Google.Ads.Googleads.V4.Common.LocalAdInfo, oneof: 0
  field :display_upload_ad, 33, type: Google.Ads.Googleads.V4.Common.DisplayUploadAdInfo, oneof: 0
  field :app_engagement_ad, 34, type: Google.Ads.Googleads.V4.Common.AppEngagementAdInfo, oneof: 0

  field :shopping_comparison_listing_ad, 36,
    type: Google.Ads.Googleads.V4.Common.ShoppingComparisonListingAdInfo,
    oneof: 0
end
