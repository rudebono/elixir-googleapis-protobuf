defmodule Google.Monitoring.Dashboard.V1.Scorecard.GaugeView do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :lower_bound, 1, type: :double, json_name: "lowerBound"
  field :upper_bound, 2, type: :double, json_name: "upperBound"
end

defmodule Google.Monitoring.Dashboard.V1.Scorecard.SparkChartView do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :spark_chart_type, 1,
    type: Google.Monitoring.Dashboard.V1.SparkChartType,
    json_name: "sparkChartType",
    enum: true,
    deprecated: false

  field :min_alignment_period, 2, type: Google.Protobuf.Duration, json_name: "minAlignmentPeriod"
end

defmodule Google.Monitoring.Dashboard.V1.Scorecard do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :data_view, 0

  field :time_series_query, 1,
    type: Google.Monitoring.Dashboard.V1.TimeSeriesQuery,
    json_name: "timeSeriesQuery",
    deprecated: false

  field :gauge_view, 4,
    type: Google.Monitoring.Dashboard.V1.Scorecard.GaugeView,
    json_name: "gaugeView",
    oneof: 0

  field :spark_chart_view, 5,
    type: Google.Monitoring.Dashboard.V1.Scorecard.SparkChartView,
    json_name: "sparkChartView",
    oneof: 0

  field :thresholds, 6, repeated: true, type: Google.Monitoring.Dashboard.V1.Threshold
end