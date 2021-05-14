defmodule Google.Monitoring.Dashboard.V1.Dashboard do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          layout: {atom, any},
          name: String.t(),
          display_name: String.t(),
          etag: String.t()
        }

  defstruct [:layout, :name, :display_name, :etag]

  oneof :layout, 0
  field :name, 1, type: :string
  field :display_name, 2, type: :string
  field :etag, 4, type: :string
  field :grid_layout, 5, type: Google.Monitoring.Dashboard.V1.GridLayout, oneof: 0
  field :mosaic_layout, 6, type: Google.Monitoring.Dashboard.V1.MosaicLayout, oneof: 0
  field :row_layout, 8, type: Google.Monitoring.Dashboard.V1.RowLayout, oneof: 0
  field :column_layout, 9, type: Google.Monitoring.Dashboard.V1.ColumnLayout, oneof: 0
end
