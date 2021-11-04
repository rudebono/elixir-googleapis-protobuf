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
          etag: String.t()
        }

  defstruct [:layout, :name, :display_name, :etag]

  oneof :layout, 0

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
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

  def transform_module(), do: nil
end
