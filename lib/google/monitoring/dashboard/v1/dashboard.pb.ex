defmodule Google.Monitoring.Dashboard.V1.Dashboard.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Monitoring.Dashboard.V1.Dashboard do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          layout:
            {:grid_layout, Google.Monitoring.Dashboard.V1.GridLayout.t() | nil}
            | {:mosaic_layout, Google.Monitoring.Dashboard.V1.MosaicLayout.t() | nil}
            | {:row_layout, Google.Monitoring.Dashboard.V1.RowLayout.t() | nil}
            | {:column_layout, Google.Monitoring.Dashboard.V1.ColumnLayout.t() | nil},
          name: String.t(),
          display_name: String.t(),
          etag: String.t(),
          dashboard_filters: [Google.Monitoring.Dashboard.V1.DashboardFilter.t()],
          labels: %{String.t() => String.t()}
        }

  defstruct layout: nil,
            name: "",
            display_name: "",
            etag: "",
            dashboard_filters: [],
            labels: %{}

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
