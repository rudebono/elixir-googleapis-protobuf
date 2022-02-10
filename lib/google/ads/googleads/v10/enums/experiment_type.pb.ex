defmodule Google.Ads.Googleads.V10.Enums.ExperimentTypeEnum.ExperimentType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :DISPLAY_AND_VIDEO_360
          | :AD_VARIATION
          | :SMART_DISPLAY
          | :YOUTUBE_CUSTOM
          | :DISPLAY_CUSTOM
          | :SEARCH_CUSTOM
          | :DISPLAY_AUTOMATED_BIDDING_STRATEGY
          | :SEARCH_AUTOMATED_BIDDING_STRATEGY
          | :SHOPPING_AUTOMATED_BIDDING_STRATEGY
          | :SMART_MATCHING
          | :HOTEL_CUSTOM

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :DISPLAY_AND_VIDEO_360, 2
  field :AD_VARIATION, 3
  field :SMART_DISPLAY, 4
  field :YOUTUBE_CUSTOM, 5
  field :DISPLAY_CUSTOM, 6
  field :SEARCH_CUSTOM, 7
  field :DISPLAY_AUTOMATED_BIDDING_STRATEGY, 8
  field :SEARCH_AUTOMATED_BIDDING_STRATEGY, 9
  field :SHOPPING_AUTOMATED_BIDDING_STRATEGY, 10
  field :SMART_MATCHING, 11
  field :HOTEL_CUSTOM, 12
end
defmodule Google.Ads.Googleads.V10.Enums.ExperimentTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
