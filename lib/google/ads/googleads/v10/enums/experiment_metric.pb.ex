defmodule Google.Ads.Googleads.V10.Enums.ExperimentMetricEnum.ExperimentMetric do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :CLICKS
          | :IMPRESSIONS
          | :COST
          | :CONVERSIONS_PER_INTERACTION_RATE
          | :COST_PER_CONVERSION
          | :CONVERSIONS_VALUE_PER_COST
          | :AVERAGE_CPC
          | :CTR
          | :INCREMENTAL_CONVERSIONS
          | :COMPLETED_VIDEO_VIEWS
          | :CUSTOM_ALGORITHMS
          | :CONVERSIONS
          | :CONVERSION_VALUE

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :CLICKS, 2
  field :IMPRESSIONS, 3
  field :COST, 4
  field :CONVERSIONS_PER_INTERACTION_RATE, 5
  field :COST_PER_CONVERSION, 6
  field :CONVERSIONS_VALUE_PER_COST, 7
  field :AVERAGE_CPC, 8
  field :CTR, 9
  field :INCREMENTAL_CONVERSIONS, 10
  field :COMPLETED_VIDEO_VIEWS, 11
  field :CUSTOM_ALGORITHMS, 12
  field :CONVERSIONS, 13
  field :CONVERSION_VALUE, 14
end
defmodule Google.Ads.Googleads.V10.Enums.ExperimentMetricEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
