defmodule Google.Ads.Googleads.V19.Common.MetricGoal do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :metric, 1,
    type: Google.Ads.Googleads.V19.Enums.ExperimentMetricEnum.ExperimentMetric,
    enum: true

  field :direction, 2,
    type: Google.Ads.Googleads.V19.Enums.ExperimentMetricDirectionEnum.ExperimentMetricDirection,
    enum: true
end
