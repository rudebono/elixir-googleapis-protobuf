defmodule Google.Ads.Searchads360.V0.Enums.ConversionCustomVariableCardinalityEnum.ConversionCustomVariableCardinality do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :BELOW_ALL_LIMITS, 2
  field :EXCEEDS_SEGMENTATION_LIMIT_BUT_NOT_STATS_LIMIT, 3
  field :APPROACHES_STATS_LIMIT, 4
  field :EXCEEDS_STATS_LIMIT, 5
end

defmodule Google.Ads.Searchads360.V0.Enums.ConversionCustomVariableCardinalityEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end
