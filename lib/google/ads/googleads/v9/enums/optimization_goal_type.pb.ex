defmodule Google.Ads.Googleads.V9.Enums.OptimizationGoalTypeEnum.OptimizationGoalType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :CALL_CLICKS
          | :DRIVING_DIRECTIONS
          | :APP_PRE_REGISTRATION

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :CALL_CLICKS, 2
  field :DRIVING_DIRECTIONS, 3
  field :APP_PRE_REGISTRATION, 4
end
defmodule Google.Ads.Googleads.V9.Enums.OptimizationGoalTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
