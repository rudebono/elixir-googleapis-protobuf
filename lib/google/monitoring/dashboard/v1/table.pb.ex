defmodule Google.Monitoring.Dashboard.V1.TimeSeriesTable.MetricVisualization do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :METRIC_VISUALIZATION_UNSPECIFIED, 0
  field :NUMBER, 1
  field :BAR, 2
end

defmodule Google.Monitoring.Dashboard.V1.TimeSeriesTable.TableDataSet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :time_series_query, 1,
    type: Google.Monitoring.Dashboard.V1.TimeSeriesQuery,
    json_name: "timeSeriesQuery",
    deprecated: false

  field :table_template, 2, type: :string, json_name: "tableTemplate", deprecated: false

  field :min_alignment_period, 3,
    type: Google.Protobuf.Duration,
    json_name: "minAlignmentPeriod",
    deprecated: false

  field :table_display_options, 4,
    type: Google.Monitoring.Dashboard.V1.TableDisplayOptions,
    json_name: "tableDisplayOptions",
    deprecated: false
end

defmodule Google.Monitoring.Dashboard.V1.TimeSeriesTable.ColumnSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :column, 1, type: :string, deprecated: false
  field :visible, 2, type: :bool, deprecated: false
end

defmodule Google.Monitoring.Dashboard.V1.TimeSeriesTable do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :data_sets, 1,
    repeated: true,
    type: Google.Monitoring.Dashboard.V1.TimeSeriesTable.TableDataSet,
    json_name: "dataSets",
    deprecated: false

  field :metric_visualization, 2,
    type: Google.Monitoring.Dashboard.V1.TimeSeriesTable.MetricVisualization,
    json_name: "metricVisualization",
    enum: true,
    deprecated: false

  field :column_settings, 4,
    repeated: true,
    type: Google.Monitoring.Dashboard.V1.TimeSeriesTable.ColumnSettings,
    json_name: "columnSettings",
    deprecated: false
end
