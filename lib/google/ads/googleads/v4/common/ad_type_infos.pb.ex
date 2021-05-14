defmodule Google.Ads.Googleads.V4.Common.TextAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          headline: Google.Protobuf.StringValue.t() | nil,
          description1: Google.Protobuf.StringValue.t() | nil,
          description2: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:headline, :description1, :description2]

  field :headline, 1, type: Google.Protobuf.StringValue
  field :description1, 2, type: Google.Protobuf.StringValue
  field :description2, 3, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.ExpandedTextAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          headline_part1: Google.Protobuf.StringValue.t() | nil,
          headline_part2: Google.Protobuf.StringValue.t() | nil,
          headline_part3: Google.Protobuf.StringValue.t() | nil,
          description: Google.Protobuf.StringValue.t() | nil,
          description2: Google.Protobuf.StringValue.t() | nil,
          path1: Google.Protobuf.StringValue.t() | nil,
          path2: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [
    :headline_part1,
    :headline_part2,
    :headline_part3,
    :description,
    :description2,
    :path1,
    :path2
  ]

  field :headline_part1, 1, type: Google.Protobuf.StringValue
  field :headline_part2, 2, type: Google.Protobuf.StringValue
  field :headline_part3, 6, type: Google.Protobuf.StringValue
  field :description, 3, type: Google.Protobuf.StringValue
  field :description2, 7, type: Google.Protobuf.StringValue
  field :path1, 4, type: Google.Protobuf.StringValue
  field :path2, 5, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.CallOnlyAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          country_code: Google.Protobuf.StringValue.t() | nil,
          phone_number: Google.Protobuf.StringValue.t() | nil,
          business_name: Google.Protobuf.StringValue.t() | nil,
          headline1: Google.Protobuf.StringValue.t() | nil,
          headline2: Google.Protobuf.StringValue.t() | nil,
          description1: Google.Protobuf.StringValue.t() | nil,
          description2: Google.Protobuf.StringValue.t() | nil,
          call_tracked: Google.Protobuf.BoolValue.t() | nil,
          disable_call_conversion: Google.Protobuf.BoolValue.t() | nil,
          phone_number_verification_url: Google.Protobuf.StringValue.t() | nil,
          conversion_action: Google.Protobuf.StringValue.t() | nil,
          conversion_reporting_state:
            Google.Ads.Googleads.V4.Enums.CallConversionReportingStateEnum.CallConversionReportingState.t()
        }

  defstruct [
    :country_code,
    :phone_number,
    :business_name,
    :headline1,
    :headline2,
    :description1,
    :description2,
    :call_tracked,
    :disable_call_conversion,
    :phone_number_verification_url,
    :conversion_action,
    :conversion_reporting_state
  ]

  field :country_code, 1, type: Google.Protobuf.StringValue
  field :phone_number, 2, type: Google.Protobuf.StringValue
  field :business_name, 3, type: Google.Protobuf.StringValue
  field :headline1, 11, type: Google.Protobuf.StringValue
  field :headline2, 12, type: Google.Protobuf.StringValue
  field :description1, 4, type: Google.Protobuf.StringValue
  field :description2, 5, type: Google.Protobuf.StringValue
  field :call_tracked, 6, type: Google.Protobuf.BoolValue
  field :disable_call_conversion, 7, type: Google.Protobuf.BoolValue
  field :phone_number_verification_url, 8, type: Google.Protobuf.StringValue
  field :conversion_action, 9, type: Google.Protobuf.StringValue

  field :conversion_reporting_state, 10,
    type:
      Google.Ads.Googleads.V4.Enums.CallConversionReportingStateEnum.CallConversionReportingState,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Common.ExpandedDynamicSearchAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          description: Google.Protobuf.StringValue.t() | nil,
          description2: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:description, :description2]

  field :description, 1, type: Google.Protobuf.StringValue
  field :description2, 2, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.HotelAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Ads.Googleads.V4.Common.ShoppingSmartAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Ads.Googleads.V4.Common.ShoppingProductAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Ads.Googleads.V4.Common.ShoppingComparisonListingAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          headline: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:headline]

  field :headline, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.GmailAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          teaser: Google.Ads.Googleads.V4.Common.GmailTeaser.t() | nil,
          header_image: Google.Protobuf.StringValue.t() | nil,
          marketing_image: Google.Protobuf.StringValue.t() | nil,
          marketing_image_headline: Google.Protobuf.StringValue.t() | nil,
          marketing_image_description: Google.Protobuf.StringValue.t() | nil,
          marketing_image_display_call_to_action:
            Google.Ads.Googleads.V4.Common.DisplayCallToAction.t() | nil,
          product_images: [Google.Ads.Googleads.V4.Common.ProductImage.t()],
          product_videos: [Google.Ads.Googleads.V4.Common.ProductVideo.t()]
        }

  defstruct [
    :teaser,
    :header_image,
    :marketing_image,
    :marketing_image_headline,
    :marketing_image_description,
    :marketing_image_display_call_to_action,
    :product_images,
    :product_videos
  ]

  field :teaser, 1, type: Google.Ads.Googleads.V4.Common.GmailTeaser
  field :header_image, 2, type: Google.Protobuf.StringValue
  field :marketing_image, 3, type: Google.Protobuf.StringValue
  field :marketing_image_headline, 4, type: Google.Protobuf.StringValue
  field :marketing_image_description, 5, type: Google.Protobuf.StringValue

  field :marketing_image_display_call_to_action, 6,
    type: Google.Ads.Googleads.V4.Common.DisplayCallToAction

  field :product_images, 7, repeated: true, type: Google.Ads.Googleads.V4.Common.ProductImage
  field :product_videos, 8, repeated: true, type: Google.Ads.Googleads.V4.Common.ProductVideo
end

defmodule Google.Ads.Googleads.V4.Common.GmailTeaser do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          headline: Google.Protobuf.StringValue.t() | nil,
          description: Google.Protobuf.StringValue.t() | nil,
          business_name: Google.Protobuf.StringValue.t() | nil,
          logo_image: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:headline, :description, :business_name, :logo_image]

  field :headline, 1, type: Google.Protobuf.StringValue
  field :description, 2, type: Google.Protobuf.StringValue
  field :business_name, 3, type: Google.Protobuf.StringValue
  field :logo_image, 4, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.DisplayCallToAction do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: Google.Protobuf.StringValue.t() | nil,
          text_color: Google.Protobuf.StringValue.t() | nil,
          url_collection_id: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:text, :text_color, :url_collection_id]

  field :text, 1, type: Google.Protobuf.StringValue
  field :text_color, 2, type: Google.Protobuf.StringValue
  field :url_collection_id, 3, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.ProductImage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          product_image: Google.Protobuf.StringValue.t() | nil,
          description: Google.Protobuf.StringValue.t() | nil,
          display_call_to_action: Google.Ads.Googleads.V4.Common.DisplayCallToAction.t() | nil
        }

  defstruct [:product_image, :description, :display_call_to_action]

  field :product_image, 1, type: Google.Protobuf.StringValue
  field :description, 2, type: Google.Protobuf.StringValue
  field :display_call_to_action, 3, type: Google.Ads.Googleads.V4.Common.DisplayCallToAction
end

defmodule Google.Ads.Googleads.V4.Common.ProductVideo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          product_video: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:product_video]

  field :product_video, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.ImageAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          image: {atom, any},
          pixel_width: Google.Protobuf.Int64Value.t() | nil,
          pixel_height: Google.Protobuf.Int64Value.t() | nil,
          image_url: Google.Protobuf.StringValue.t() | nil,
          preview_pixel_width: Google.Protobuf.Int64Value.t() | nil,
          preview_pixel_height: Google.Protobuf.Int64Value.t() | nil,
          preview_image_url: Google.Protobuf.StringValue.t() | nil,
          mime_type: Google.Ads.Googleads.V4.Enums.MimeTypeEnum.MimeType.t(),
          name: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [
    :image,
    :pixel_width,
    :pixel_height,
    :image_url,
    :preview_pixel_width,
    :preview_pixel_height,
    :preview_image_url,
    :mime_type,
    :name
  ]

  oneof :image, 0
  field :pixel_width, 4, type: Google.Protobuf.Int64Value
  field :pixel_height, 5, type: Google.Protobuf.Int64Value
  field :image_url, 6, type: Google.Protobuf.StringValue
  field :preview_pixel_width, 7, type: Google.Protobuf.Int64Value
  field :preview_pixel_height, 8, type: Google.Protobuf.Int64Value
  field :preview_image_url, 9, type: Google.Protobuf.StringValue
  field :mime_type, 10, type: Google.Ads.Googleads.V4.Enums.MimeTypeEnum.MimeType, enum: true
  field :name, 11, type: Google.Protobuf.StringValue
  field :media_file, 1, type: Google.Protobuf.StringValue, oneof: 0
  field :data, 2, type: Google.Protobuf.BytesValue, oneof: 0
  field :ad_id_to_copy_image_from, 3, type: Google.Protobuf.Int64Value, oneof: 0
end

defmodule Google.Ads.Googleads.V4.Common.VideoBumperInStreamAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          companion_banner: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:companion_banner]

  field :companion_banner, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.VideoNonSkippableInStreamAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          companion_banner: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:companion_banner]

  field :companion_banner, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.VideoTrueViewInStreamAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          action_button_label: Google.Protobuf.StringValue.t() | nil,
          action_headline: Google.Protobuf.StringValue.t() | nil,
          companion_banner: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:action_button_label, :action_headline, :companion_banner]

  field :action_button_label, 1, type: Google.Protobuf.StringValue
  field :action_headline, 2, type: Google.Protobuf.StringValue
  field :companion_banner, 3, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.VideoOutstreamAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          headline: Google.Protobuf.StringValue.t() | nil,
          description: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:headline, :description]

  field :headline, 1, type: Google.Protobuf.StringValue
  field :description, 2, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.VideoTrueViewDiscoveryAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          headline: Google.Protobuf.StringValue.t() | nil,
          description1: Google.Protobuf.StringValue.t() | nil,
          description2: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:headline, :description1, :description2]

  field :headline, 1, type: Google.Protobuf.StringValue
  field :description1, 2, type: Google.Protobuf.StringValue
  field :description2, 3, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.VideoAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          format: {atom, any},
          media_file: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:format, :media_file]

  oneof :format, 0
  field :media_file, 1, type: Google.Protobuf.StringValue
  field :in_stream, 2, type: Google.Ads.Googleads.V4.Common.VideoTrueViewInStreamAdInfo, oneof: 0
  field :bumper, 3, type: Google.Ads.Googleads.V4.Common.VideoBumperInStreamAdInfo, oneof: 0
  field :out_stream, 4, type: Google.Ads.Googleads.V4.Common.VideoOutstreamAdInfo, oneof: 0

  field :non_skippable, 5,
    type: Google.Ads.Googleads.V4.Common.VideoNonSkippableInStreamAdInfo,
    oneof: 0

  field :discovery, 6, type: Google.Ads.Googleads.V4.Common.VideoTrueViewDiscoveryAdInfo, oneof: 0
end

defmodule Google.Ads.Googleads.V4.Common.ResponsiveSearchAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          headlines: [Google.Ads.Googleads.V4.Common.AdTextAsset.t()],
          descriptions: [Google.Ads.Googleads.V4.Common.AdTextAsset.t()],
          path1: Google.Protobuf.StringValue.t() | nil,
          path2: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:headlines, :descriptions, :path1, :path2]

  field :headlines, 1, repeated: true, type: Google.Ads.Googleads.V4.Common.AdTextAsset
  field :descriptions, 2, repeated: true, type: Google.Ads.Googleads.V4.Common.AdTextAsset
  field :path1, 3, type: Google.Protobuf.StringValue
  field :path2, 4, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.LegacyResponsiveDisplayAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          short_headline: Google.Protobuf.StringValue.t() | nil,
          long_headline: Google.Protobuf.StringValue.t() | nil,
          description: Google.Protobuf.StringValue.t() | nil,
          business_name: Google.Protobuf.StringValue.t() | nil,
          allow_flexible_color: Google.Protobuf.BoolValue.t() | nil,
          accent_color: Google.Protobuf.StringValue.t() | nil,
          main_color: Google.Protobuf.StringValue.t() | nil,
          call_to_action_text: Google.Protobuf.StringValue.t() | nil,
          logo_image: Google.Protobuf.StringValue.t() | nil,
          square_logo_image: Google.Protobuf.StringValue.t() | nil,
          marketing_image: Google.Protobuf.StringValue.t() | nil,
          square_marketing_image: Google.Protobuf.StringValue.t() | nil,
          format_setting:
            Google.Ads.Googleads.V4.Enums.DisplayAdFormatSettingEnum.DisplayAdFormatSetting.t(),
          price_prefix: Google.Protobuf.StringValue.t() | nil,
          promo_text: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [
    :short_headline,
    :long_headline,
    :description,
    :business_name,
    :allow_flexible_color,
    :accent_color,
    :main_color,
    :call_to_action_text,
    :logo_image,
    :square_logo_image,
    :marketing_image,
    :square_marketing_image,
    :format_setting,
    :price_prefix,
    :promo_text
  ]

  field :short_headline, 1, type: Google.Protobuf.StringValue
  field :long_headline, 2, type: Google.Protobuf.StringValue
  field :description, 3, type: Google.Protobuf.StringValue
  field :business_name, 4, type: Google.Protobuf.StringValue
  field :allow_flexible_color, 5, type: Google.Protobuf.BoolValue
  field :accent_color, 6, type: Google.Protobuf.StringValue
  field :main_color, 7, type: Google.Protobuf.StringValue
  field :call_to_action_text, 8, type: Google.Protobuf.StringValue
  field :logo_image, 9, type: Google.Protobuf.StringValue
  field :square_logo_image, 10, type: Google.Protobuf.StringValue
  field :marketing_image, 11, type: Google.Protobuf.StringValue
  field :square_marketing_image, 12, type: Google.Protobuf.StringValue

  field :format_setting, 13,
    type: Google.Ads.Googleads.V4.Enums.DisplayAdFormatSettingEnum.DisplayAdFormatSetting,
    enum: true

  field :price_prefix, 14, type: Google.Protobuf.StringValue
  field :promo_text, 15, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.AppAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          mandatory_ad_text: Google.Ads.Googleads.V4.Common.AdTextAsset.t() | nil,
          headlines: [Google.Ads.Googleads.V4.Common.AdTextAsset.t()],
          descriptions: [Google.Ads.Googleads.V4.Common.AdTextAsset.t()],
          images: [Google.Ads.Googleads.V4.Common.AdImageAsset.t()],
          youtube_videos: [Google.Ads.Googleads.V4.Common.AdVideoAsset.t()],
          html5_media_bundles: [Google.Ads.Googleads.V4.Common.AdMediaBundleAsset.t()]
        }

  defstruct [
    :mandatory_ad_text,
    :headlines,
    :descriptions,
    :images,
    :youtube_videos,
    :html5_media_bundles
  ]

  field :mandatory_ad_text, 1, type: Google.Ads.Googleads.V4.Common.AdTextAsset
  field :headlines, 2, repeated: true, type: Google.Ads.Googleads.V4.Common.AdTextAsset
  field :descriptions, 3, repeated: true, type: Google.Ads.Googleads.V4.Common.AdTextAsset
  field :images, 4, repeated: true, type: Google.Ads.Googleads.V4.Common.AdImageAsset
  field :youtube_videos, 5, repeated: true, type: Google.Ads.Googleads.V4.Common.AdVideoAsset

  field :html5_media_bundles, 6,
    repeated: true,
    type: Google.Ads.Googleads.V4.Common.AdMediaBundleAsset
end

defmodule Google.Ads.Googleads.V4.Common.AppEngagementAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          headlines: [Google.Ads.Googleads.V4.Common.AdTextAsset.t()],
          descriptions: [Google.Ads.Googleads.V4.Common.AdTextAsset.t()],
          images: [Google.Ads.Googleads.V4.Common.AdImageAsset.t()],
          videos: [Google.Ads.Googleads.V4.Common.AdVideoAsset.t()]
        }

  defstruct [:headlines, :descriptions, :images, :videos]

  field :headlines, 1, repeated: true, type: Google.Ads.Googleads.V4.Common.AdTextAsset
  field :descriptions, 2, repeated: true, type: Google.Ads.Googleads.V4.Common.AdTextAsset
  field :images, 3, repeated: true, type: Google.Ads.Googleads.V4.Common.AdImageAsset
  field :videos, 4, repeated: true, type: Google.Ads.Googleads.V4.Common.AdVideoAsset
end

defmodule Google.Ads.Googleads.V4.Common.LegacyAppInstallAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          app_id: Google.Protobuf.StringValue.t() | nil,
          app_store:
            Google.Ads.Googleads.V4.Enums.LegacyAppInstallAdAppStoreEnum.LegacyAppInstallAdAppStore.t(),
          headline: Google.Protobuf.StringValue.t() | nil,
          description1: Google.Protobuf.StringValue.t() | nil,
          description2: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:app_id, :app_store, :headline, :description1, :description2]

  field :app_id, 1, type: Google.Protobuf.StringValue

  field :app_store, 2,
    type: Google.Ads.Googleads.V4.Enums.LegacyAppInstallAdAppStoreEnum.LegacyAppInstallAdAppStore,
    enum: true

  field :headline, 3, type: Google.Protobuf.StringValue
  field :description1, 4, type: Google.Protobuf.StringValue
  field :description2, 5, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.ResponsiveDisplayAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          marketing_images: [Google.Ads.Googleads.V4.Common.AdImageAsset.t()],
          square_marketing_images: [Google.Ads.Googleads.V4.Common.AdImageAsset.t()],
          logo_images: [Google.Ads.Googleads.V4.Common.AdImageAsset.t()],
          square_logo_images: [Google.Ads.Googleads.V4.Common.AdImageAsset.t()],
          headlines: [Google.Ads.Googleads.V4.Common.AdTextAsset.t()],
          long_headline: Google.Ads.Googleads.V4.Common.AdTextAsset.t() | nil,
          descriptions: [Google.Ads.Googleads.V4.Common.AdTextAsset.t()],
          youtube_videos: [Google.Ads.Googleads.V4.Common.AdVideoAsset.t()],
          business_name: Google.Protobuf.StringValue.t() | nil,
          main_color: Google.Protobuf.StringValue.t() | nil,
          accent_color: Google.Protobuf.StringValue.t() | nil,
          allow_flexible_color: Google.Protobuf.BoolValue.t() | nil,
          call_to_action_text: Google.Protobuf.StringValue.t() | nil,
          price_prefix: Google.Protobuf.StringValue.t() | nil,
          promo_text: Google.Protobuf.StringValue.t() | nil,
          format_setting:
            Google.Ads.Googleads.V4.Enums.DisplayAdFormatSettingEnum.DisplayAdFormatSetting.t()
        }

  defstruct [
    :marketing_images,
    :square_marketing_images,
    :logo_images,
    :square_logo_images,
    :headlines,
    :long_headline,
    :descriptions,
    :youtube_videos,
    :business_name,
    :main_color,
    :accent_color,
    :allow_flexible_color,
    :call_to_action_text,
    :price_prefix,
    :promo_text,
    :format_setting
  ]

  field :marketing_images, 1, repeated: true, type: Google.Ads.Googleads.V4.Common.AdImageAsset

  field :square_marketing_images, 2,
    repeated: true,
    type: Google.Ads.Googleads.V4.Common.AdImageAsset

  field :logo_images, 3, repeated: true, type: Google.Ads.Googleads.V4.Common.AdImageAsset
  field :square_logo_images, 4, repeated: true, type: Google.Ads.Googleads.V4.Common.AdImageAsset
  field :headlines, 5, repeated: true, type: Google.Ads.Googleads.V4.Common.AdTextAsset
  field :long_headline, 6, type: Google.Ads.Googleads.V4.Common.AdTextAsset
  field :descriptions, 7, repeated: true, type: Google.Ads.Googleads.V4.Common.AdTextAsset
  field :youtube_videos, 8, repeated: true, type: Google.Ads.Googleads.V4.Common.AdVideoAsset
  field :business_name, 9, type: Google.Protobuf.StringValue
  field :main_color, 10, type: Google.Protobuf.StringValue
  field :accent_color, 11, type: Google.Protobuf.StringValue
  field :allow_flexible_color, 12, type: Google.Protobuf.BoolValue
  field :call_to_action_text, 13, type: Google.Protobuf.StringValue
  field :price_prefix, 14, type: Google.Protobuf.StringValue
  field :promo_text, 15, type: Google.Protobuf.StringValue

  field :format_setting, 16,
    type: Google.Ads.Googleads.V4.Enums.DisplayAdFormatSettingEnum.DisplayAdFormatSetting,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Common.LocalAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          headlines: [Google.Ads.Googleads.V4.Common.AdTextAsset.t()],
          descriptions: [Google.Ads.Googleads.V4.Common.AdTextAsset.t()],
          call_to_actions: [Google.Ads.Googleads.V4.Common.AdTextAsset.t()],
          marketing_images: [Google.Ads.Googleads.V4.Common.AdImageAsset.t()],
          logo_images: [Google.Ads.Googleads.V4.Common.AdImageAsset.t()],
          videos: [Google.Ads.Googleads.V4.Common.AdVideoAsset.t()],
          path1: Google.Protobuf.StringValue.t() | nil,
          path2: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [
    :headlines,
    :descriptions,
    :call_to_actions,
    :marketing_images,
    :logo_images,
    :videos,
    :path1,
    :path2
  ]

  field :headlines, 1, repeated: true, type: Google.Ads.Googleads.V4.Common.AdTextAsset
  field :descriptions, 2, repeated: true, type: Google.Ads.Googleads.V4.Common.AdTextAsset
  field :call_to_actions, 3, repeated: true, type: Google.Ads.Googleads.V4.Common.AdTextAsset
  field :marketing_images, 4, repeated: true, type: Google.Ads.Googleads.V4.Common.AdImageAsset
  field :logo_images, 5, repeated: true, type: Google.Ads.Googleads.V4.Common.AdImageAsset
  field :videos, 6, repeated: true, type: Google.Ads.Googleads.V4.Common.AdVideoAsset
  field :path1, 7, type: Google.Protobuf.StringValue
  field :path2, 8, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.DisplayUploadAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          media_asset: {atom, any},
          display_upload_product_type:
            Google.Ads.Googleads.V4.Enums.DisplayUploadProductTypeEnum.DisplayUploadProductType.t()
        }

  defstruct [:media_asset, :display_upload_product_type]

  oneof :media_asset, 0

  field :display_upload_product_type, 1,
    type: Google.Ads.Googleads.V4.Enums.DisplayUploadProductTypeEnum.DisplayUploadProductType,
    enum: true

  field :media_bundle, 2, type: Google.Ads.Googleads.V4.Common.AdMediaBundleAsset, oneof: 0
end
