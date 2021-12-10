defmodule Google.Monitoring.Dashboard.V1.GridLayout do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          columns: integer,
          widgets: [Google.Monitoring.Dashboard.V1.Widget.t()]
        }

  defstruct columns: 0,
            widgets: []

  field :columns, 1, type: :int64
  field :widgets, 2, repeated: true, type: Google.Monitoring.Dashboard.V1.Widget
end
defmodule Google.Monitoring.Dashboard.V1.MosaicLayout.Tile do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          x_pos: integer,
          y_pos: integer,
          width: integer,
          height: integer,
          widget: Google.Monitoring.Dashboard.V1.Widget.t() | nil
        }

  defstruct x_pos: 0,
            y_pos: 0,
            width: 0,
            height: 0,
            widget: nil

  field :x_pos, 1, type: :int32, json_name: "xPos"
  field :y_pos, 2, type: :int32, json_name: "yPos"
  field :width, 3, type: :int32
  field :height, 4, type: :int32
  field :widget, 5, type: Google.Monitoring.Dashboard.V1.Widget
end
defmodule Google.Monitoring.Dashboard.V1.MosaicLayout do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          columns: integer,
          tiles: [Google.Monitoring.Dashboard.V1.MosaicLayout.Tile.t()]
        }

  defstruct columns: 0,
            tiles: []

  field :columns, 1, type: :int32
  field :tiles, 3, repeated: true, type: Google.Monitoring.Dashboard.V1.MosaicLayout.Tile
end
defmodule Google.Monitoring.Dashboard.V1.RowLayout.Row do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          weight: integer,
          widgets: [Google.Monitoring.Dashboard.V1.Widget.t()]
        }

  defstruct weight: 0,
            widgets: []

  field :weight, 1, type: :int64
  field :widgets, 2, repeated: true, type: Google.Monitoring.Dashboard.V1.Widget
end
defmodule Google.Monitoring.Dashboard.V1.RowLayout do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rows: [Google.Monitoring.Dashboard.V1.RowLayout.Row.t()]
        }

  defstruct rows: []

  field :rows, 1, repeated: true, type: Google.Monitoring.Dashboard.V1.RowLayout.Row
end
defmodule Google.Monitoring.Dashboard.V1.ColumnLayout.Column do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          weight: integer,
          widgets: [Google.Monitoring.Dashboard.V1.Widget.t()]
        }

  defstruct weight: 0,
            widgets: []

  field :weight, 1, type: :int64
  field :widgets, 2, repeated: true, type: Google.Monitoring.Dashboard.V1.Widget
end
defmodule Google.Monitoring.Dashboard.V1.ColumnLayout do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          columns: [Google.Monitoring.Dashboard.V1.ColumnLayout.Column.t()]
        }

  defstruct columns: []

  field :columns, 1, repeated: true, type: Google.Monitoring.Dashboard.V1.ColumnLayout.Column
end
