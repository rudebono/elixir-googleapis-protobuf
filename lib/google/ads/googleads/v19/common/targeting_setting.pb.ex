defmodule Google.Ads.Googleads.V19.Common.TargetRestrictionOperation.Operator do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :ADD, 2
  field :REMOVE, 3
end

defmodule Google.Ads.Googleads.V19.Common.TargetingSetting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :target_restrictions, 1,
    repeated: true,
    type: Google.Ads.Googleads.V19.Common.TargetRestriction,
    json_name: "targetRestrictions"

  field :target_restriction_operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V19.Common.TargetRestrictionOperation,
    json_name: "targetRestrictionOperations"
end

defmodule Google.Ads.Googleads.V19.Common.TargetRestriction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :targeting_dimension, 1,
    type: Google.Ads.Googleads.V19.Enums.TargetingDimensionEnum.TargetingDimension,
    json_name: "targetingDimension",
    enum: true

  field :bid_only, 3, proto3_optional: true, type: :bool, json_name: "bidOnly"
end

defmodule Google.Ads.Googleads.V19.Common.TargetRestrictionOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :operator, 1,
    type: Google.Ads.Googleads.V19.Common.TargetRestrictionOperation.Operator,
    enum: true

  field :value, 2, type: Google.Ads.Googleads.V19.Common.TargetRestriction
end
