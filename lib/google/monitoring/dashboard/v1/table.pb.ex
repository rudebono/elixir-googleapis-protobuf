defmodule Google.Monitoring.Dashboard.V1.TimeSeriesTable.TableDataSet do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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

defmodule Google.Monitoring.Dashboard.V1.TimeSeriesTable do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data_sets, 1,
    repeated: true,
    type: Google.Monitoring.Dashboard.V1.TimeSeriesTable.TableDataSet,
    json_name: "dataSets",
    deprecated: false
end