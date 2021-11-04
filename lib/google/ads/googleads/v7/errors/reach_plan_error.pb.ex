defmodule Google.Ads.Googleads.V7.Errors.ReachPlanErrorEnum.ReachPlanError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :NOT_FORECASTABLE_MISSING_RATE

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :NOT_FORECASTABLE_MISSING_RATE, 2
end

defmodule Google.Ads.Googleads.V7.Errors.ReachPlanErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
