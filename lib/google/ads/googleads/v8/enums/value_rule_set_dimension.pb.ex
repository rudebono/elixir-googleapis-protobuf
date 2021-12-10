defmodule Google.Ads.Googleads.V8.Enums.ValueRuleSetDimensionEnum.ValueRuleSetDimension do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :GEO_LOCATION | :DEVICE | :AUDIENCE

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :GEO_LOCATION, 2
  field :DEVICE, 3
  field :AUDIENCE, 4
end
defmodule Google.Ads.Googleads.V8.Enums.ValueRuleSetDimensionEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
