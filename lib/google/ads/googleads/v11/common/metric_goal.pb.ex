defmodule Google.Ads.Googleads.V11.Common.MetricGoal do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :metric, 1,
    type: Google.Ads.Googleads.V11.Enums.ExperimentMetricEnum.ExperimentMetric,
    enum: true

  field :direction, 2,
    type: Google.Ads.Googleads.V11.Enums.ExperimentMetricDirectionEnum.ExperimentMetricDirection,
    enum: true
end