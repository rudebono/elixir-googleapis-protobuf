defmodule Google.Ads.Googleads.V22.Common.MetricGoal do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :metric, 1,
    type: Google.Ads.Googleads.V22.Enums.ExperimentMetricEnum.ExperimentMetric,
    enum: true

  field :direction, 2,
    type: Google.Ads.Googleads.V22.Enums.ExperimentMetricDirectionEnum.ExperimentMetricDirection,
    enum: true
end
