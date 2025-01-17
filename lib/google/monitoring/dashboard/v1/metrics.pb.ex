defmodule Google.Monitoring.Dashboard.V1.SparkChartType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :SPARK_CHART_TYPE_UNSPECIFIED, 0
  field :SPARK_LINE, 1
  field :SPARK_BAR, 2
end

defmodule Google.Monitoring.Dashboard.V1.Threshold.Color do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :COLOR_UNSPECIFIED, 0
  field :YELLOW, 4
  field :RED, 6
end

defmodule Google.Monitoring.Dashboard.V1.Threshold.Direction do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :DIRECTION_UNSPECIFIED, 0
  field :ABOVE, 1
  field :BELOW, 2
end

defmodule Google.Monitoring.Dashboard.V1.Threshold.TargetAxis do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :TARGET_AXIS_UNSPECIFIED, 0
  field :Y1, 1
  field :Y2, 2
end

defmodule Google.Monitoring.Dashboard.V1.TimeSeriesQuery do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :source, 0

  field :time_series_filter, 1,
    type: Google.Monitoring.Dashboard.V1.TimeSeriesFilter,
    json_name: "timeSeriesFilter",
    oneof: 0

  field :time_series_filter_ratio, 2,
    type: Google.Monitoring.Dashboard.V1.TimeSeriesFilterRatio,
    json_name: "timeSeriesFilterRatio",
    oneof: 0

  field :time_series_query_language, 3,
    type: :string,
    json_name: "timeSeriesQueryLanguage",
    oneof: 0

  field :prometheus_query, 6, type: :string, json_name: "prometheusQuery", oneof: 0
  field :unit_override, 5, type: :string, json_name: "unitOverride"
  field :output_full_duration, 7, type: :bool, json_name: "outputFullDuration", deprecated: false
end

defmodule Google.Monitoring.Dashboard.V1.TimeSeriesFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :output_filter, 0

  field :filter, 1, type: :string, deprecated: false
  field :aggregation, 2, type: Google.Monitoring.Dashboard.V1.Aggregation

  field :secondary_aggregation, 3,
    type: Google.Monitoring.Dashboard.V1.Aggregation,
    json_name: "secondaryAggregation"

  field :pick_time_series_filter, 4,
    type: Google.Monitoring.Dashboard.V1.PickTimeSeriesFilter,
    json_name: "pickTimeSeriesFilter",
    oneof: 0

  field :statistical_time_series_filter, 5,
    type: Google.Monitoring.Dashboard.V1.StatisticalTimeSeriesFilter,
    json_name: "statisticalTimeSeriesFilter",
    oneof: 0,
    deprecated: true
end

defmodule Google.Monitoring.Dashboard.V1.TimeSeriesFilterRatio.RatioPart do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :filter, 1, type: :string, deprecated: false
  field :aggregation, 2, type: Google.Monitoring.Dashboard.V1.Aggregation
end

defmodule Google.Monitoring.Dashboard.V1.TimeSeriesFilterRatio do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :output_filter, 0

  field :numerator, 1, type: Google.Monitoring.Dashboard.V1.TimeSeriesFilterRatio.RatioPart
  field :denominator, 2, type: Google.Monitoring.Dashboard.V1.TimeSeriesFilterRatio.RatioPart

  field :secondary_aggregation, 3,
    type: Google.Monitoring.Dashboard.V1.Aggregation,
    json_name: "secondaryAggregation"

  field :pick_time_series_filter, 4,
    type: Google.Monitoring.Dashboard.V1.PickTimeSeriesFilter,
    json_name: "pickTimeSeriesFilter",
    oneof: 0

  field :statistical_time_series_filter, 5,
    type: Google.Monitoring.Dashboard.V1.StatisticalTimeSeriesFilter,
    json_name: "statisticalTimeSeriesFilter",
    oneof: 0,
    deprecated: true
end

defmodule Google.Monitoring.Dashboard.V1.Threshold do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :label, 1, type: :string
  field :value, 2, type: :double
  field :color, 3, type: Google.Monitoring.Dashboard.V1.Threshold.Color, enum: true
  field :direction, 4, type: Google.Monitoring.Dashboard.V1.Threshold.Direction, enum: true

  field :target_axis, 5,
    type: Google.Monitoring.Dashboard.V1.Threshold.TargetAxis,
    json_name: "targetAxis",
    enum: true
end
