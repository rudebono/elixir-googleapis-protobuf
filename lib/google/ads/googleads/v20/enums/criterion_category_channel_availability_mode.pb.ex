defmodule Google.Ads.Googleads.V20.Enums.CriterionCategoryChannelAvailabilityModeEnum.CriterionCategoryChannelAvailabilityMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :ALL_CHANNELS, 2
  field :CHANNEL_TYPE_AND_ALL_SUBTYPES, 3
  field :CHANNEL_TYPE_AND_SUBSET_SUBTYPES, 4
end

defmodule Google.Ads.Googleads.V20.Enums.CriterionCategoryChannelAvailabilityModeEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end
