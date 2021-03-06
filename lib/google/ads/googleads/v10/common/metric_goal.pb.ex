defmodule Google.Ads.Googleads.V10.Common.MetricGoal do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :metric, 1,
    type: Google.Ads.Googleads.V10.Enums.ExperimentMetricEnum.ExperimentMetric,
    enum: true

  field :direction, 2,
    type: Google.Ads.Googleads.V10.Enums.ExperimentMetricDirectionEnum.ExperimentMetricDirection,
    enum: true
end
