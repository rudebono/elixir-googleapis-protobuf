defmodule Google.Ads.Googleads.V13.Common.TextAdInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :headline, 4, proto3_optional: true, type: :string
  field :description1, 5, proto3_optional: true, type: :string
  field :description2, 6, proto3_optional: true, type: :string
end

defmodule Google.Ads.Googleads.V13.Common.ExpandedTextAdInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :headline_part1, 8, proto3_optional: true, type: :string, json_name: "headlinePart1"
  field :headline_part2, 9, proto3_optional: true, type: :string, json_name: "headlinePart2"
  field :headline_part3, 10, proto3_optional: true, type: :string, json_name: "headlinePart3"
  field :description, 11, proto3_optional: true, type: :string
  field :description2, 12, proto3_optional: true, type: :string
  field :path1, 13, proto3_optional: true, type: :string
  field :path2, 14, proto3_optional: true, type: :string
end

defmodule Google.Ads.Googleads.V13.Common.ExpandedDynamicSearchAdInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :description, 3, proto3_optional: true, type: :string
  field :description2, 4, proto3_optional: true, type: :string
end

defmodule Google.Ads.Googleads.V13.Common.HotelAdInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Ads.Googleads.V13.Common.TravelAdInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Ads.Googleads.V13.Common.ShoppingSmartAdInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Ads.Googleads.V13.Common.ShoppingProductAdInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Ads.Googleads.V13.Common.ShoppingComparisonListingAdInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :headline, 2, proto3_optional: true, type: :string
end

defmodule Google.Ads.Googleads.V13.Common.ImageAdInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :image, 0

  field :pixel_width, 15, proto3_optional: true, type: :int64, json_name: "pixelWidth"
  field :pixel_height, 16, proto3_optional: true, type: :int64, json_name: "pixelHeight"
  field :image_url, 17, proto3_optional: true, type: :string, json_name: "imageUrl"

  field :preview_pixel_width, 18,
    proto3_optional: true,
    type: :int64,
    json_name: "previewPixelWidth"

  field :preview_pixel_height, 19,
    proto3_optional: true,
    type: :int64,
    json_name: "previewPixelHeight"

  field :preview_image_url, 20, proto3_optional: true, type: :string, json_name: "previewImageUrl"

  field :mime_type, 10,
    type: Google.Ads.Googleads.V13.Enums.MimeTypeEnum.MimeType,
    json_name: "mimeType",
    enum: true

  field :name, 21, proto3_optional: true, type: :string
  field :media_file, 12, type: :string, json_name: "mediaFile", oneof: 0
  field :data, 13, type: :bytes, oneof: 0
  field :ad_id_to_copy_image_from, 14, type: :int64, json_name: "adIdToCopyImageFrom", oneof: 0
end

defmodule Google.Ads.Googleads.V13.Common.VideoBumperInStreamAdInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :companion_banner, 3,
    type: Google.Ads.Googleads.V13.Common.AdImageAsset,
    json_name: "companionBanner"

  field :action_button_label, 4, type: :string, json_name: "actionButtonLabel"
  field :action_headline, 5, type: :string, json_name: "actionHeadline"
end

defmodule Google.Ads.Googleads.V13.Common.VideoNonSkippableInStreamAdInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :companion_banner, 5,
    type: Google.Ads.Googleads.V13.Common.AdImageAsset,
    json_name: "companionBanner"

  field :action_button_label, 3, type: :string, json_name: "actionButtonLabel"
  field :action_headline, 4, type: :string, json_name: "actionHeadline"
end

defmodule Google.Ads.Googleads.V13.Common.VideoTrueViewInStreamAdInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :action_button_label, 4, type: :string, json_name: "actionButtonLabel"
  field :action_headline, 5, type: :string, json_name: "actionHeadline"

  field :companion_banner, 7,
    type: Google.Ads.Googleads.V13.Common.AdImageAsset,
    json_name: "companionBanner"
end

defmodule Google.Ads.Googleads.V13.Common.VideoOutstreamAdInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :headline, 3, type: :string
  field :description, 4, type: :string
end

defmodule Google.Ads.Googleads.V13.Common.InFeedVideoAdInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :headline, 1, type: :string
  field :description1, 2, type: :string
  field :description2, 3, type: :string

  field :thumbnail, 4,
    type: Google.Ads.Googleads.V13.Enums.VideoThumbnailEnum.VideoThumbnail,
    enum: true
end

defmodule Google.Ads.Googleads.V13.Common.VideoAdInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :format, 0

  field :video, 8, type: Google.Ads.Googleads.V13.Common.AdVideoAsset

  field :in_stream, 2,
    type: Google.Ads.Googleads.V13.Common.VideoTrueViewInStreamAdInfo,
    json_name: "inStream",
    oneof: 0

  field :bumper, 3, type: Google.Ads.Googleads.V13.Common.VideoBumperInStreamAdInfo, oneof: 0

  field :out_stream, 4,
    type: Google.Ads.Googleads.V13.Common.VideoOutstreamAdInfo,
    json_name: "outStream",
    oneof: 0

  field :non_skippable, 5,
    type: Google.Ads.Googleads.V13.Common.VideoNonSkippableInStreamAdInfo,
    json_name: "nonSkippable",
    oneof: 0

  field :in_feed, 9,
    type: Google.Ads.Googleads.V13.Common.InFeedVideoAdInfo,
    json_name: "inFeed",
    oneof: 0
end

defmodule Google.Ads.Googleads.V13.Common.VideoResponsiveAdInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :headlines, 1, repeated: true, type: Google.Ads.Googleads.V13.Common.AdTextAsset

  field :long_headlines, 2,
    repeated: true,
    type: Google.Ads.Googleads.V13.Common.AdTextAsset,
    json_name: "longHeadlines"

  field :descriptions, 3, repeated: true, type: Google.Ads.Googleads.V13.Common.AdTextAsset

  field :call_to_actions, 4,
    repeated: true,
    type: Google.Ads.Googleads.V13.Common.AdTextAsset,
    json_name: "callToActions"

  field :videos, 5, repeated: true, type: Google.Ads.Googleads.V13.Common.AdVideoAsset

  field :companion_banners, 6,
    repeated: true,
    type: Google.Ads.Googleads.V13.Common.AdImageAsset,
    json_name: "companionBanners"

  field :breadcrumb1, 7, type: :string
  field :breadcrumb2, 8, type: :string
end

defmodule Google.Ads.Googleads.V13.Common.ResponsiveSearchAdInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :headlines, 1, repeated: true, type: Google.Ads.Googleads.V13.Common.AdTextAsset
  field :descriptions, 2, repeated: true, type: Google.Ads.Googleads.V13.Common.AdTextAsset
  field :path1, 5, proto3_optional: true, type: :string
  field :path2, 6, proto3_optional: true, type: :string
end

defmodule Google.Ads.Googleads.V13.Common.LegacyResponsiveDisplayAdInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :short_headline, 16, proto3_optional: true, type: :string, json_name: "shortHeadline"
  field :long_headline, 17, proto3_optional: true, type: :string, json_name: "longHeadline"
  field :description, 18, proto3_optional: true, type: :string
  field :business_name, 19, proto3_optional: true, type: :string, json_name: "businessName"

  field :allow_flexible_color, 20,
    proto3_optional: true,
    type: :bool,
    json_name: "allowFlexibleColor"

  field :accent_color, 21, proto3_optional: true, type: :string, json_name: "accentColor"
  field :main_color, 22, proto3_optional: true, type: :string, json_name: "mainColor"

  field :call_to_action_text, 23,
    proto3_optional: true,
    type: :string,
    json_name: "callToActionText"

  field :logo_image, 24, proto3_optional: true, type: :string, json_name: "logoImage"
  field :square_logo_image, 25, proto3_optional: true, type: :string, json_name: "squareLogoImage"
  field :marketing_image, 26, proto3_optional: true, type: :string, json_name: "marketingImage"

  field :square_marketing_image, 27,
    proto3_optional: true,
    type: :string,
    json_name: "squareMarketingImage"

  field :format_setting, 13,
    type: Google.Ads.Googleads.V13.Enums.DisplayAdFormatSettingEnum.DisplayAdFormatSetting,
    json_name: "formatSetting",
    enum: true

  field :price_prefix, 28, proto3_optional: true, type: :string, json_name: "pricePrefix"
  field :promo_text, 29, proto3_optional: true, type: :string, json_name: "promoText"
end

defmodule Google.Ads.Googleads.V13.Common.AppAdInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :mandatory_ad_text, 1,
    type: Google.Ads.Googleads.V13.Common.AdTextAsset,
    json_name: "mandatoryAdText"

  field :headlines, 2, repeated: true, type: Google.Ads.Googleads.V13.Common.AdTextAsset
  field :descriptions, 3, repeated: true, type: Google.Ads.Googleads.V13.Common.AdTextAsset
  field :images, 4, repeated: true, type: Google.Ads.Googleads.V13.Common.AdImageAsset

  field :youtube_videos, 5,
    repeated: true,
    type: Google.Ads.Googleads.V13.Common.AdVideoAsset,
    json_name: "youtubeVideos"

  field :html5_media_bundles, 6,
    repeated: true,
    type: Google.Ads.Googleads.V13.Common.AdMediaBundleAsset,
    json_name: "html5MediaBundles"
end

defmodule Google.Ads.Googleads.V13.Common.AppEngagementAdInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :headlines, 1, repeated: true, type: Google.Ads.Googleads.V13.Common.AdTextAsset
  field :descriptions, 2, repeated: true, type: Google.Ads.Googleads.V13.Common.AdTextAsset
  field :images, 3, repeated: true, type: Google.Ads.Googleads.V13.Common.AdImageAsset
  field :videos, 4, repeated: true, type: Google.Ads.Googleads.V13.Common.AdVideoAsset
end

defmodule Google.Ads.Googleads.V13.Common.AppPreRegistrationAdInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :headlines, 1, repeated: true, type: Google.Ads.Googleads.V13.Common.AdTextAsset
  field :descriptions, 2, repeated: true, type: Google.Ads.Googleads.V13.Common.AdTextAsset
  field :images, 3, repeated: true, type: Google.Ads.Googleads.V13.Common.AdImageAsset

  field :youtube_videos, 4,
    repeated: true,
    type: Google.Ads.Googleads.V13.Common.AdVideoAsset,
    json_name: "youtubeVideos"
end

defmodule Google.Ads.Googleads.V13.Common.LegacyAppInstallAdInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :app_id, 6, proto3_optional: true, type: :string, json_name: "appId"

  field :app_store, 2,
    type:
      Google.Ads.Googleads.V13.Enums.LegacyAppInstallAdAppStoreEnum.LegacyAppInstallAdAppStore,
    json_name: "appStore",
    enum: true

  field :headline, 7, proto3_optional: true, type: :string
  field :description1, 8, proto3_optional: true, type: :string
  field :description2, 9, proto3_optional: true, type: :string
end

defmodule Google.Ads.Googleads.V13.Common.ResponsiveDisplayAdInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :marketing_images, 1,
    repeated: true,
    type: Google.Ads.Googleads.V13.Common.AdImageAsset,
    json_name: "marketingImages"

  field :square_marketing_images, 2,
    repeated: true,
    type: Google.Ads.Googleads.V13.Common.AdImageAsset,
    json_name: "squareMarketingImages"

  field :logo_images, 3,
    repeated: true,
    type: Google.Ads.Googleads.V13.Common.AdImageAsset,
    json_name: "logoImages"

  field :square_logo_images, 4,
    repeated: true,
    type: Google.Ads.Googleads.V13.Common.AdImageAsset,
    json_name: "squareLogoImages"

  field :headlines, 5, repeated: true, type: Google.Ads.Googleads.V13.Common.AdTextAsset

  field :long_headline, 6,
    type: Google.Ads.Googleads.V13.Common.AdTextAsset,
    json_name: "longHeadline"

  field :descriptions, 7, repeated: true, type: Google.Ads.Googleads.V13.Common.AdTextAsset

  field :youtube_videos, 8,
    repeated: true,
    type: Google.Ads.Googleads.V13.Common.AdVideoAsset,
    json_name: "youtubeVideos"

  field :business_name, 17, proto3_optional: true, type: :string, json_name: "businessName"
  field :main_color, 18, proto3_optional: true, type: :string, json_name: "mainColor"
  field :accent_color, 19, proto3_optional: true, type: :string, json_name: "accentColor"

  field :allow_flexible_color, 20,
    proto3_optional: true,
    type: :bool,
    json_name: "allowFlexibleColor"

  field :call_to_action_text, 21,
    proto3_optional: true,
    type: :string,
    json_name: "callToActionText"

  field :price_prefix, 22, proto3_optional: true, type: :string, json_name: "pricePrefix"
  field :promo_text, 23, proto3_optional: true, type: :string, json_name: "promoText"

  field :format_setting, 16,
    type: Google.Ads.Googleads.V13.Enums.DisplayAdFormatSettingEnum.DisplayAdFormatSetting,
    json_name: "formatSetting",
    enum: true

  field :control_spec, 24,
    type: Google.Ads.Googleads.V13.Common.ResponsiveDisplayAdControlSpec,
    json_name: "controlSpec"
end

defmodule Google.Ads.Googleads.V13.Common.LocalAdInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :headlines, 1, repeated: true, type: Google.Ads.Googleads.V13.Common.AdTextAsset
  field :descriptions, 2, repeated: true, type: Google.Ads.Googleads.V13.Common.AdTextAsset

  field :call_to_actions, 3,
    repeated: true,
    type: Google.Ads.Googleads.V13.Common.AdTextAsset,
    json_name: "callToActions"

  field :marketing_images, 4,
    repeated: true,
    type: Google.Ads.Googleads.V13.Common.AdImageAsset,
    json_name: "marketingImages"

  field :logo_images, 5,
    repeated: true,
    type: Google.Ads.Googleads.V13.Common.AdImageAsset,
    json_name: "logoImages"

  field :videos, 6, repeated: true, type: Google.Ads.Googleads.V13.Common.AdVideoAsset
  field :path1, 9, proto3_optional: true, type: :string
  field :path2, 10, proto3_optional: true, type: :string
end

defmodule Google.Ads.Googleads.V13.Common.DisplayUploadAdInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :media_asset, 0

  field :display_upload_product_type, 1,
    type: Google.Ads.Googleads.V13.Enums.DisplayUploadProductTypeEnum.DisplayUploadProductType,
    json_name: "displayUploadProductType",
    enum: true

  field :media_bundle, 2,
    type: Google.Ads.Googleads.V13.Common.AdMediaBundleAsset,
    json_name: "mediaBundle",
    oneof: 0
end

defmodule Google.Ads.Googleads.V13.Common.ResponsiveDisplayAdControlSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :enable_asset_enhancements, 1, type: :bool, json_name: "enableAssetEnhancements"
  field :enable_autogen_video, 2, type: :bool, json_name: "enableAutogenVideo"
end

defmodule Google.Ads.Googleads.V13.Common.SmartCampaignAdInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :headlines, 1, repeated: true, type: Google.Ads.Googleads.V13.Common.AdTextAsset
  field :descriptions, 2, repeated: true, type: Google.Ads.Googleads.V13.Common.AdTextAsset
end

defmodule Google.Ads.Googleads.V13.Common.CallAdInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :country_code, 1, type: :string, json_name: "countryCode"
  field :phone_number, 2, type: :string, json_name: "phoneNumber"
  field :business_name, 3, type: :string, json_name: "businessName"
  field :headline1, 11, type: :string
  field :headline2, 12, type: :string
  field :description1, 4, type: :string
  field :description2, 5, type: :string
  field :call_tracked, 6, type: :bool, json_name: "callTracked"
  field :disable_call_conversion, 7, type: :bool, json_name: "disableCallConversion"
  field :phone_number_verification_url, 8, type: :string, json_name: "phoneNumberVerificationUrl"
  field :conversion_action, 9, type: :string, json_name: "conversionAction"

  field :conversion_reporting_state, 10,
    type:
      Google.Ads.Googleads.V13.Enums.CallConversionReportingStateEnum.CallConversionReportingState,
    json_name: "conversionReportingState",
    enum: true

  field :path1, 13, type: :string
  field :path2, 14, type: :string
end

defmodule Google.Ads.Googleads.V13.Common.DiscoveryMultiAssetAdInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :marketing_images, 1,
    repeated: true,
    type: Google.Ads.Googleads.V13.Common.AdImageAsset,
    json_name: "marketingImages"

  field :square_marketing_images, 2,
    repeated: true,
    type: Google.Ads.Googleads.V13.Common.AdImageAsset,
    json_name: "squareMarketingImages"

  field :portrait_marketing_images, 3,
    repeated: true,
    type: Google.Ads.Googleads.V13.Common.AdImageAsset,
    json_name: "portraitMarketingImages"

  field :logo_images, 4,
    repeated: true,
    type: Google.Ads.Googleads.V13.Common.AdImageAsset,
    json_name: "logoImages"

  field :headlines, 5, repeated: true, type: Google.Ads.Googleads.V13.Common.AdTextAsset
  field :descriptions, 6, repeated: true, type: Google.Ads.Googleads.V13.Common.AdTextAsset
  field :business_name, 7, proto3_optional: true, type: :string, json_name: "businessName"

  field :call_to_action_text, 8,
    proto3_optional: true,
    type: :string,
    json_name: "callToActionText"

  field :lead_form_only, 9, proto3_optional: true, type: :bool, json_name: "leadFormOnly"
end

defmodule Google.Ads.Googleads.V13.Common.DiscoveryCarouselAdInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :business_name, 1, type: :string, json_name: "businessName", deprecated: false

  field :logo_image, 2,
    type: Google.Ads.Googleads.V13.Common.AdImageAsset,
    json_name: "logoImage",
    deprecated: false

  field :headline, 3, type: Google.Ads.Googleads.V13.Common.AdTextAsset, deprecated: false
  field :description, 4, type: Google.Ads.Googleads.V13.Common.AdTextAsset, deprecated: false
  field :call_to_action_text, 5, type: :string, json_name: "callToActionText"

  field :carousel_cards, 6,
    repeated: true,
    type: Google.Ads.Googleads.V13.Common.AdDiscoveryCarouselCardAsset,
    json_name: "carouselCards",
    deprecated: false
end