defmodule Google.Monitoring.Dashboard.V1.PieChart.PieChartType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :PIE_CHART_TYPE_UNSPECIFIED, 0
  field :PIE, 1
  field :DONUT, 2
end

defmodule Google.Monitoring.Dashboard.V1.PieChart.PieChartDataSet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :time_series_query, 1,
    type: Google.Monitoring.Dashboard.V1.TimeSeriesQuery,
    json_name: "timeSeriesQuery",
    deprecated: false

  field :slice_name_template, 2, type: :string, json_name: "sliceNameTemplate", deprecated: false

  field :min_alignment_period, 3,
    type: Google.Protobuf.Duration,
    json_name: "minAlignmentPeriod",
    deprecated: false
end

defmodule Google.Monitoring.Dashboard.V1.PieChart do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :data_sets, 1,
    repeated: true,
    type: Google.Monitoring.Dashboard.V1.PieChart.PieChartDataSet,
    json_name: "dataSets",
    deprecated: false

  field :chart_type, 2,
    type: Google.Monitoring.Dashboard.V1.PieChart.PieChartType,
    json_name: "chartType",
    enum: true,
    deprecated: false

  field :show_labels, 4, type: :bool, json_name: "showLabels", deprecated: false
end