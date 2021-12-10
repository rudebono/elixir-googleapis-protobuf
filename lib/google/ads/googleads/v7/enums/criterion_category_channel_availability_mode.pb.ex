defmodule Google.Ads.Googleads.V7.Enums.CriterionCategoryChannelAvailabilityModeEnum.CriterionCategoryChannelAvailabilityMode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :ALL_CHANNELS
          | :CHANNEL_TYPE_AND_ALL_SUBTYPES
          | :CHANNEL_TYPE_AND_SUBSET_SUBTYPES

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :ALL_CHANNELS, 2
  field :CHANNEL_TYPE_AND_ALL_SUBTYPES, 3
  field :CHANNEL_TYPE_AND_SUBSET_SUBTYPES, 4
end
defmodule Google.Ads.Googleads.V7.Enums.CriterionCategoryChannelAvailabilityModeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
