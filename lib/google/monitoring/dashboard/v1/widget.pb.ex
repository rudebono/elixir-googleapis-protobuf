defmodule Google.Monitoring.Dashboard.V1.Widget do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

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

  field :incident_list, 12,
    type: Google.Monitoring.Dashboard.V1.IncidentList,
    json_name: "incidentList",
    oneof: 0

  field :pie_chart, 14,
    type: Google.Monitoring.Dashboard.V1.PieChart,
    json_name: "pieChart",
    oneof: 0

  field :error_reporting_panel, 19,
    type: Google.Monitoring.Dashboard.V1.ErrorReportingPanel,
    json_name: "errorReportingPanel",
    oneof: 0

  field :section_header, 21,
    type: Google.Monitoring.Dashboard.V1.SectionHeader,
    json_name: "sectionHeader",
    oneof: 0

  field :single_view_group, 22,
    type: Google.Monitoring.Dashboard.V1.SingleViewGroup,
    json_name: "singleViewGroup",
    oneof: 0

  field :id, 17, type: :string, deprecated: false
end
