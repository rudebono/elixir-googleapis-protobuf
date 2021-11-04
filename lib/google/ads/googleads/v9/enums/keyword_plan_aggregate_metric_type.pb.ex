defmodule Google.Ads.Googleads.V9.Enums.KeywordPlanAggregateMetricTypeEnum.KeywordPlanAggregateMetricType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :DEVICE

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :DEVICE, 2
end

defmodule Google.Ads.Googleads.V9.Enums.KeywordPlanAggregateMetricTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
