defmodule Google.Ads.Googleads.V9.Enums.AttributionModelEnum.AttributionModel do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :EXTERNAL
          | :GOOGLE_ADS_LAST_CLICK
          | :GOOGLE_SEARCH_ATTRIBUTION_FIRST_CLICK
          | :GOOGLE_SEARCH_ATTRIBUTION_LINEAR
          | :GOOGLE_SEARCH_ATTRIBUTION_TIME_DECAY
          | :GOOGLE_SEARCH_ATTRIBUTION_POSITION_BASED
          | :GOOGLE_SEARCH_ATTRIBUTION_DATA_DRIVEN

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :EXTERNAL, 100
  field :GOOGLE_ADS_LAST_CLICK, 101
  field :GOOGLE_SEARCH_ATTRIBUTION_FIRST_CLICK, 102
  field :GOOGLE_SEARCH_ATTRIBUTION_LINEAR, 103
  field :GOOGLE_SEARCH_ATTRIBUTION_TIME_DECAY, 104
  field :GOOGLE_SEARCH_ATTRIBUTION_POSITION_BASED, 105
  field :GOOGLE_SEARCH_ATTRIBUTION_DATA_DRIVEN, 106
end

defmodule Google.Ads.Googleads.V9.Enums.AttributionModelEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
