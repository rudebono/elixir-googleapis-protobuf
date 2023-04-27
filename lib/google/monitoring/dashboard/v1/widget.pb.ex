defmodule Google.Monitoring.Dashboard.V1.Widget do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :content, 0

  field :title, 1, type: :string, deprecated: false
  field :xy_chart, 2, type: Google.Monitoring.Dashboard.V1.XyChart, json_name: "xyChart", oneof: 0
  field :scorecard, 3, type: Google.Monitoring.Dashboard.V1.Scorecard, oneof: 0
  field :text, 4, type: Google.Monitoring.Dashboard.V1.Text, oneof: 0
  field :blank, 5, type: Google.Protobuf.Empty, oneof: 0

  field :alert_chart, 7,
    type: Google.Monitoring.Dashboard.V1.AlertChart,
    json_name: "alertChart",
    oneof: 0

  field :time_series_table, 8,
    type: Google.Monitoring.Dashboard.V1.TimeSeriesTable,
    json_name: "timeSeriesTable",
    oneof: 0

  field :collapsible_group, 9,
    type: Google.Monitoring.Dashboard.V1.CollapsibleGroup,
    json_name: "collapsibleGroup",
    oneof: 0

  field :logs_panel, 10,
    type: Google.Monitoring.Dashboard.V1.LogsPanel,
    json_name: "logsPanel",
    oneof: 0
end