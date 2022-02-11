defmodule Google.Ads.Googleads.V10.Enums.FeedMappingCriterionTypeEnum.FeedMappingCriterionType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :LOCATION_EXTENSION_TARGETING | :DSA_PAGE_FEED

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :LOCATION_EXTENSION_TARGETING, 4
  field :DSA_PAGE_FEED, 3
end
defmodule Google.Ads.Googleads.V10.Enums.FeedMappingCriterionTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
