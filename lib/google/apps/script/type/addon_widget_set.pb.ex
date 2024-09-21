defmodule Google.Apps.Script.Type.AddOnWidgetSet.WidgetType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :WIDGET_TYPE_UNSPECIFIED, 0
  field :DATE_PICKER, 1
  field :STYLED_BUTTONS, 2
  field :PERSISTENT_FORMS, 3
  field :FIXED_FOOTER, 4
  field :UPDATE_SUBJECT_AND_RECIPIENTS, 5
  field :GRID_WIDGET, 6
  field :ADDON_COMPOSE_UI_ACTION, 7
end

defmodule Google.Apps.Script.Type.AddOnWidgetSet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :used_widgets, 1,
    repeated: true,
    type: Google.Apps.Script.Type.AddOnWidgetSet.WidgetType,
    json_name: "usedWidgets",
    enum: true
end