defmodule Google.Ads.Searchads360.V0.Common.TargetingSetting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :target_restrictions, 1,
    repeated: true,
    type: Google.Ads.Searchads360.V0.Common.TargetRestriction,
    json_name: "targetRestrictions"
end

defmodule Google.Ads.Searchads360.V0.Common.TargetRestriction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :targeting_dimension, 1,
    type: Google.Ads.Searchads360.V0.Enums.TargetingDimensionEnum.TargetingDimension,
    json_name: "targetingDimension",
    enum: true

  field :bid_only, 3, proto3_optional: true, type: :bool, json_name: "bidOnly"
end