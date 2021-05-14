defmodule Google.Apps.Script.Type.AddOnWidgetSet.WidgetType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :WIDGET_TYPE_UNSPECIFIED
          | :DATE_PICKER
          | :STYLED_BUTTONS
          | :PERSISTENT_FORMS
          | :FIXED_FOOTER
          | :UPDATE_SUBJECT_AND_RECIPIENTS
          | :GRID_WIDGET
          | :ADDON_COMPOSE_UI_ACTION

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          used_widgets: [[Google.Apps.Script.Type.AddOnWidgetSet.WidgetType.t()]]
        }

  defstruct [:used_widgets]

  field :used_widgets, 1,
    repeated: true,
    type: Google.Apps.Script.Type.AddOnWidgetSet.WidgetType,
    enum: true
end
