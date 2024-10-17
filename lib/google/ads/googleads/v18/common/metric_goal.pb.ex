defmodule Google.Ads.Googleads.V18.Common.MetricGoal do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :metric, 1,
    type: Google.Ads.Googleads.V18.Enums.ExperimentMetricEnum.ExperimentMetric,
    enum: true

  field :direction, 2,
    type: Google.Ads.Googleads.V18.Enums.ExperimentMetricDirectionEnum.ExperimentMetricDirection,
    enum: true
end