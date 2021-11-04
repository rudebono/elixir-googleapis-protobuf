defmodule Google.Ads.Googleads.V8.Enums.OptimizationGoalTypeEnum.OptimizationGoalType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :CALL_CLICKS | :DRIVING_DIRECTIONS

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :CALL_CLICKS, 2
  field :DRIVING_DIRECTIONS, 3
end

defmodule Google.Ads.Googleads.V8.Enums.OptimizationGoalTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
