defmodule Google.Monitoring.Dashboard.V1.XyChart.DataSet.PlotType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :PLOT_TYPE_UNSPECIFIED, 0
  field :LINE, 1
  field :STACKED_AREA, 2
  field :STACKED_BAR, 3
  field :HEATMAP, 4
end

defmodule Google.Monitoring.Dashboard.V1.XyChart.DataSet.TargetAxis do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TARGET_AXIS_UNSPECIFIED, 0
  field :Y1, 1
  field :Y2, 2
end

defmodule Google.Monitoring.Dashboard.V1.XyChart.Axis.Scale do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :SCALE_UNSPECIFIED, 0
  field :LINEAR, 1
  field :LOG10, 2
end

defmodule Google.Monitoring.Dashboard.V1.ChartOptions.Mode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :MODE_UNSPECIFIED, 0
  field :COLOR, 1
  field :X_RAY, 2
  field :STATS, 3
end

defmodule Google.Monitoring.Dashboard.V1.XyChart.DataSet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :time_series_query, 1,
    type: Google.Monitoring.Dashboard.V1.TimeSeriesQuery,
    json_name: "timeSeriesQuery",
    deprecated: false

  field :plot_type, 2,
    type: Google.Monitoring.Dashboard.V1.XyChart.DataSet.PlotType,
    json_name: "plotType",
    enum: true

  field :legend_template, 3, type: :string, json_name: "legendTemplate"

  field :min_alignment_period, 4,
    type: Google.Protobuf.Duration,
    json_name: "minAlignmentPeriod",
    deprecated: false

  field :target_axis, 5,
    type: Google.Monitoring.Dashboard.V1.XyChart.DataSet.TargetAxis,
    json_name: "targetAxis",
    enum: true,
    deprecated: false
end

defmodule Google.Monitoring.Dashboard.V1.XyChart.Axis do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :label, 1, type: :string
  field :scale, 2, type: Google.Monitoring.Dashboard.V1.XyChart.Axis.Scale, enum: true
end

defmodule Google.Monitoring.Dashboard.V1.XyChart do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :data_sets, 1,
    repeated: true,
    type: Google.Monitoring.Dashboard.V1.XyChart.DataSet,
    json_name: "dataSets",
    deprecated: false

  field :timeshift_duration, 4, type: Google.Protobuf.Duration, json_name: "timeshiftDuration"
  field :thresholds, 5, repeated: true, type: Google.Monitoring.Dashboard.V1.Threshold
  field :x_axis, 6, type: Google.Monitoring.Dashboard.V1.XyChart.Axis, json_name: "xAxis"
  field :y_axis, 7, type: Google.Monitoring.Dashboard.V1.XyChart.Axis, json_name: "yAxis"
  field :y2_axis, 9, type: Google.Monitoring.Dashboard.V1.XyChart.Axis, json_name: "y2Axis"

  field :chart_options, 8,
    type: Google.Monitoring.Dashboard.V1.ChartOptions,
    json_name: "chartOptions"
end

defmodule Google.Monitoring.Dashboard.V1.ChartOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :mode, 1, type: Google.Monitoring.Dashboard.V1.ChartOptions.Mode, enum: true
end