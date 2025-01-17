defmodule Google.Monitoring.Dashboard.V1.Text.Format do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :FORMAT_UNSPECIFIED, 0
  field :MARKDOWN, 1
  field :RAW, 2
end

defmodule Google.Monitoring.Dashboard.V1.Text.TextStyle.HorizontalAlignment do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :HORIZONTAL_ALIGNMENT_UNSPECIFIED, 0
  field :H_LEFT, 1
  field :H_CENTER, 2
  field :H_RIGHT, 3
end

defmodule Google.Monitoring.Dashboard.V1.Text.TextStyle.VerticalAlignment do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :VERTICAL_ALIGNMENT_UNSPECIFIED, 0
  field :V_TOP, 1
  field :V_CENTER, 2
  field :V_BOTTOM, 3
end

defmodule Google.Monitoring.Dashboard.V1.Text.TextStyle.PaddingSize do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :PADDING_SIZE_UNSPECIFIED, 0
  field :P_EXTRA_SMALL, 1
  field :P_SMALL, 2
  field :P_MEDIUM, 3
  field :P_LARGE, 4
  field :P_EXTRA_LARGE, 5
end

defmodule Google.Monitoring.Dashboard.V1.Text.TextStyle.FontSize do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :FONT_SIZE_UNSPECIFIED, 0
  field :FS_EXTRA_SMALL, 1
  field :FS_SMALL, 2
  field :FS_MEDIUM, 3
  field :FS_LARGE, 4
  field :FS_EXTRA_LARGE, 5
end

defmodule Google.Monitoring.Dashboard.V1.Text.TextStyle.PointerLocation do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :POINTER_LOCATION_UNSPECIFIED, 0
  field :PL_TOP, 1
  field :PL_RIGHT, 2
  field :PL_BOTTOM, 3
  field :PL_LEFT, 4
  field :PL_TOP_LEFT, 5
  field :PL_TOP_RIGHT, 6
  field :PL_RIGHT_TOP, 7
  field :PL_RIGHT_BOTTOM, 8
  field :PL_BOTTOM_RIGHT, 9
  field :PL_BOTTOM_LEFT, 10
  field :PL_LEFT_BOTTOM, 11
  field :PL_LEFT_TOP, 12
end

defmodule Google.Monitoring.Dashboard.V1.Text.TextStyle do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :background_color, 1, type: :string, json_name: "backgroundColor"
  field :text_color, 2, type: :string, json_name: "textColor"

  field :horizontal_alignment, 3,
    type: Google.Monitoring.Dashboard.V1.Text.TextStyle.HorizontalAlignment,
    json_name: "horizontalAlignment",
    enum: true

  field :vertical_alignment, 4,
    type: Google.Monitoring.Dashboard.V1.Text.TextStyle.VerticalAlignment,
    json_name: "verticalAlignment",
    enum: true

  field :padding, 5, type: Google.Monitoring.Dashboard.V1.Text.TextStyle.PaddingSize, enum: true

  field :font_size, 6,
    type: Google.Monitoring.Dashboard.V1.Text.TextStyle.FontSize,
    json_name: "fontSize",
    enum: true

  field :pointer_location, 7,
    type: Google.Monitoring.Dashboard.V1.Text.TextStyle.PointerLocation,
    json_name: "pointerLocation",
    enum: true
end

defmodule Google.Monitoring.Dashboard.V1.Text do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :content, 1, type: :string
  field :format, 2, type: Google.Monitoring.Dashboard.V1.Text.Format, enum: true
  field :style, 3, type: Google.Monitoring.Dashboard.V1.Text.TextStyle
end
