defmodule Google.Monitoring.Dashboard.V1.Dashboard.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Monitoring.Dashboard.V1.Dashboard do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :layout, 0

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :etag, 4, type: :string

  field :grid_layout, 5,
    type: Google.Monitoring.Dashboard.V1.GridLayout,
    json_name: "gridLayout",
    oneof: 0

  field :mosaic_layout, 6,
    type: Google.Monitoring.Dashboard.V1.MosaicLayout,
    json_name: "mosaicLayout",
    oneof: 0

  field :row_layout, 8,
    type: Google.Monitoring.Dashboard.V1.RowLayout,
    json_name: "rowLayout",
    oneof: 0

  field :column_layout, 9,
    type: Google.Monitoring.Dashboard.V1.ColumnLayout,
    json_name: "columnLayout",
    oneof: 0

  field :dashboard_filters, 11,
    repeated: true,
    type: Google.Monitoring.Dashboard.V1.DashboardFilter,
    json_name: "dashboardFilters"

  field :labels, 12,
    repeated: true,
    type: Google.Monitoring.Dashboard.V1.Dashboard.LabelsEntry,
    map: true
end