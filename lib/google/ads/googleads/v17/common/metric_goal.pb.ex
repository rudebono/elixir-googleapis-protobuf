defmodule Google.Ads.Googleads.V17.Common.MetricGoal do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :metric, 1,
    type: Google.Ads.Googleads.V17.Enums.ExperimentMetricEnum.ExperimentMetric,
    enum: true

  field :direction, 2,
    type: Google.Ads.Googleads.V17.Enums.ExperimentMetricDirectionEnum.ExperimentMetricDirection,
    enum: true
end
