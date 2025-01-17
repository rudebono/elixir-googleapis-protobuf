defmodule Google.Monitoring.Dashboard.V1.GridLayout do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :columns, 1, type: :int64
  field :widgets, 2, repeated: true, type: Google.Monitoring.Dashboard.V1.Widget
end

defmodule Google.Monitoring.Dashboard.V1.MosaicLayout.Tile do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :x_pos, 1, type: :int32, json_name: "xPos"
  field :y_pos, 2, type: :int32, json_name: "yPos"
  field :width, 3, type: :int32
  field :height, 4, type: :int32
  field :widget, 5, type: Google.Monitoring.Dashboard.V1.Widget
end

defmodule Google.Monitoring.Dashboard.V1.MosaicLayout do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :columns, 1, type: :int32
  field :tiles, 3, repeated: true, type: Google.Monitoring.Dashboard.V1.MosaicLayout.Tile
end

defmodule Google.Monitoring.Dashboard.V1.RowLayout.Row do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :weight, 1, type: :int64
  field :widgets, 2, repeated: true, type: Google.Monitoring.Dashboard.V1.Widget
end

defmodule Google.Monitoring.Dashboard.V1.RowLayout do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :rows, 1, repeated: true, type: Google.Monitoring.Dashboard.V1.RowLayout.Row
end

defmodule Google.Monitoring.Dashboard.V1.ColumnLayout.Column do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :weight, 1, type: :int64
  field :widgets, 2, repeated: true, type: Google.Monitoring.Dashboard.V1.Widget
end

defmodule Google.Monitoring.Dashboard.V1.ColumnLayout do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :columns, 1, repeated: true, type: Google.Monitoring.Dashboard.V1.ColumnLayout.Column
end
