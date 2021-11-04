defmodule Google.Ads.Googleads.V9.Enums.AdTypeEnum.AdType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :TEXT_AD
          | :EXPANDED_TEXT_AD
          | :EXPANDED_DYNAMIC_SEARCH_AD
          | :HOTEL_AD
          | :SHOPPING_SMART_AD
          | :SHOPPING_PRODUCT_AD
          | :VIDEO_AD
          | :GMAIL_AD
          | :IMAGE_AD
          | :RESPONSIVE_SEARCH_AD
          | :LEGACY_RESPONSIVE_DISPLAY_AD
          | :APP_AD
          | :LEGACY_APP_INSTALL_AD
          | :RESPONSIVE_DISPLAY_AD
          | :LOCAL_AD
          | :HTML5_UPLOAD_AD
          | :DYNAMIC_HTML5_AD
          | :APP_ENGAGEMENT_AD
          | :SHOPPING_COMPARISON_LISTING_AD
          | :VIDEO_BUMPER_AD
          | :VIDEO_NON_SKIPPABLE_IN_STREAM_AD
          | :VIDEO_OUTSTREAM_AD
          | :VIDEO_TRUEVIEW_DISCOVERY_AD
          | :VIDEO_TRUEVIEW_IN_STREAM_AD
          | :VIDEO_RESPONSIVE_AD
          | :SMART_CAMPAIGN_AD
          | :CALL_AD
          | :APP_PRE_REGISTRATION_AD

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :TEXT_AD, 2
  field :EXPANDED_TEXT_AD, 3
  field :EXPANDED_DYNAMIC_SEARCH_AD, 7
  field :HOTEL_AD, 8
  field :SHOPPING_SMART_AD, 9
  field :SHOPPING_PRODUCT_AD, 10
  field :VIDEO_AD, 12
  field :GMAIL_AD, 13
  field :IMAGE_AD, 14
  field :RESPONSIVE_SEARCH_AD, 15
  field :LEGACY_RESPONSIVE_DISPLAY_AD, 16
  field :APP_AD, 17
  field :LEGACY_APP_INSTALL_AD, 18
  field :RESPONSIVE_DISPLAY_AD, 19
  field :LOCAL_AD, 20
  field :HTML5_UPLOAD_AD, 21
  field :DYNAMIC_HTML5_AD, 22
  field :APP_ENGAGEMENT_AD, 23
  field :SHOPPING_COMPARISON_LISTING_AD, 24
  field :VIDEO_BUMPER_AD, 25
  field :VIDEO_NON_SKIPPABLE_IN_STREAM_AD, 26
  field :VIDEO_OUTSTREAM_AD, 27
  field :VIDEO_TRUEVIEW_DISCOVERY_AD, 28
  field :VIDEO_TRUEVIEW_IN_STREAM_AD, 29
  field :VIDEO_RESPONSIVE_AD, 30
  field :SMART_CAMPAIGN_AD, 31
  field :CALL_AD, 32
  field :APP_PRE_REGISTRATION_AD, 33
end

defmodule Google.Ads.Googleads.V9.Enums.AdTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
