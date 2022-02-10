defmodule Google.Ads.Googleads.V10.Enums.AdGroupTypeEnum.AdGroupType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :SEARCH_STANDARD
          | :DISPLAY_STANDARD
          | :SHOPPING_PRODUCT_ADS
          | :HOTEL_ADS
          | :SHOPPING_SMART_ADS
          | :VIDEO_BUMPER
          | :VIDEO_TRUE_VIEW_IN_STREAM
          | :VIDEO_TRUE_VIEW_IN_DISPLAY
          | :VIDEO_NON_SKIPPABLE_IN_STREAM
          | :VIDEO_OUTSTREAM
          | :SEARCH_DYNAMIC_ADS
          | :SHOPPING_COMPARISON_LISTING_ADS
          | :PROMOTED_HOTEL_ADS
          | :VIDEO_RESPONSIVE
          | :VIDEO_EFFICIENT_REACH
          | :SMART_CAMPAIGN_ADS

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :SEARCH_STANDARD, 2
  field :DISPLAY_STANDARD, 3
  field :SHOPPING_PRODUCT_ADS, 4
  field :HOTEL_ADS, 6
  field :SHOPPING_SMART_ADS, 7
  field :VIDEO_BUMPER, 8
  field :VIDEO_TRUE_VIEW_IN_STREAM, 9
  field :VIDEO_TRUE_VIEW_IN_DISPLAY, 10
  field :VIDEO_NON_SKIPPABLE_IN_STREAM, 11
  field :VIDEO_OUTSTREAM, 12
  field :SEARCH_DYNAMIC_ADS, 13
  field :SHOPPING_COMPARISON_LISTING_ADS, 14
  field :PROMOTED_HOTEL_ADS, 15
  field :VIDEO_RESPONSIVE, 16
  field :VIDEO_EFFICIENT_REACH, 17
  field :SMART_CAMPAIGN_ADS, 18
end
defmodule Google.Ads.Googleads.V10.Enums.AdGroupTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
