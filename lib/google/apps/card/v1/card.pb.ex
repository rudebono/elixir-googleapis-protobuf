defmodule Google.Apps.Card.V1.Card.DividerStyle do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :DIVIDER_STYLE_UNSPECIFIED, 0
  field :SOLID_DIVIDER, 1
  field :NO_DIVIDER, 2
end

defmodule Google.Apps.Card.V1.Card.DisplayStyle do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :DISPLAY_STYLE_UNSPECIFIED, 0
  field :PEEK, 1
  field :REPLACE, 2
end

defmodule Google.Apps.Card.V1.Widget.ImageType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SQUARE, 0
  field :CIRCLE, 1
end

defmodule Google.Apps.Card.V1.Widget.HorizontalAlignment do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :HORIZONTAL_ALIGNMENT_UNSPECIFIED, 0
  field :START, 1
  field :CENTER, 2
  field :END, 3
end

defmodule Google.Apps.Card.V1.DecoratedText.SwitchControl.ControlType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SWITCH, 0
  field :CHECKBOX, 1
  field :CHECK_BOX, 2
end

defmodule Google.Apps.Card.V1.TextInput.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SINGLE_LINE, 0
  field :MULTIPLE_LINE, 1
end

defmodule Google.Apps.Card.V1.SelectionInput.SelectionType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CHECK_BOX, 0
  field :RADIO_BUTTON, 1
  field :SWITCH, 2
  field :DROPDOWN, 3
  field :MULTI_SELECT, 4
end

defmodule Google.Apps.Card.V1.SelectionInput.PlatformDataSource.CommonDataSource do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNKNOWN, 0
  field :USER, 1
end

defmodule Google.Apps.Card.V1.DateTimePicker.DateTimePickerType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :DATE_AND_TIME, 0
  field :DATE_ONLY, 1
  field :TIME_ONLY, 2
end

defmodule Google.Apps.Card.V1.ImageCropStyle.ImageCropType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :IMAGE_CROP_TYPE_UNSPECIFIED, 0
  field :SQUARE, 1
  field :CIRCLE, 2
  field :RECTANGLE_CUSTOM, 3
  field :RECTANGLE_4_3, 4
end

defmodule Google.Apps.Card.V1.BorderStyle.BorderType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :BORDER_TYPE_UNSPECIFIED, 0
  field :NO_BORDER, 1
  field :STROKE, 2
end

defmodule Google.Apps.Card.V1.Grid.GridItem.GridItemLayout do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :GRID_ITEM_LAYOUT_UNSPECIFIED, 0
  field :TEXT_BELOW, 1
  field :TEXT_ABOVE, 2
end

defmodule Google.Apps.Card.V1.Columns.Column.HorizontalSizeStyle do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :HORIZONTAL_SIZE_STYLE_UNSPECIFIED, 0
  field :FILL_AVAILABLE_SPACE, 1
  field :FILL_MINIMUM_SPACE, 2
end

defmodule Google.Apps.Card.V1.Columns.Column.VerticalAlignment do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :VERTICAL_ALIGNMENT_UNSPECIFIED, 0
  field :CENTER, 1
  field :TOP, 2
  field :BOTTOM, 3
end

defmodule Google.Apps.Card.V1.OpenLink.OpenAs do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :FULL_SIZE, 0
  field :OVERLAY, 1
end

defmodule Google.Apps.Card.V1.OpenLink.OnClose do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :NOTHING, 0
  field :RELOAD, 1
end

defmodule Google.Apps.Card.V1.Action.LoadIndicator do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SPINNER, 0
  field :NONE, 1
end

defmodule Google.Apps.Card.V1.Action.Interaction do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :INTERACTION_UNSPECIFIED, 0
  field :OPEN_DIALOG, 1
end

defmodule Google.Apps.Card.V1.Card.CardHeader do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :title, 1, type: :string
  field :subtitle, 2, type: :string

  field :image_type, 3,
    type: Google.Apps.Card.V1.Widget.ImageType,
    json_name: "imageType",
    enum: true

  field :image_url, 4, type: :string, json_name: "imageUrl"
  field :image_alt_text, 5, type: :string, json_name: "imageAltText"
end

defmodule Google.Apps.Card.V1.Card.Section do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :header, 1, type: :string
  field :widgets, 2, repeated: true, type: Google.Apps.Card.V1.Widget
  field :collapsible, 5, type: :bool
  field :uncollapsible_widgets_count, 6, type: :int32, json_name: "uncollapsibleWidgetsCount"
end

defmodule Google.Apps.Card.V1.Card.CardAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :action_label, 1, type: :string, json_name: "actionLabel"
  field :on_click, 2, type: Google.Apps.Card.V1.OnClick, json_name: "onClick"
end

defmodule Google.Apps.Card.V1.Card.CardFixedFooter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :primary_button, 1, type: Google.Apps.Card.V1.Button, json_name: "primaryButton"
  field :secondary_button, 2, type: Google.Apps.Card.V1.Button, json_name: "secondaryButton"
end

defmodule Google.Apps.Card.V1.Card do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :header, 1, type: Google.Apps.Card.V1.Card.CardHeader
  field :sections, 2, repeated: true, type: Google.Apps.Card.V1.Card.Section

  field :section_divider_style, 9,
    type: Google.Apps.Card.V1.Card.DividerStyle,
    json_name: "sectionDividerStyle",
    enum: true

  field :card_actions, 3,
    repeated: true,
    type: Google.Apps.Card.V1.Card.CardAction,
    json_name: "cardActions"

  field :name, 4, type: :string
  field :fixed_footer, 5, type: Google.Apps.Card.V1.Card.CardFixedFooter, json_name: "fixedFooter"

  field :display_style, 6,
    type: Google.Apps.Card.V1.Card.DisplayStyle,
    json_name: "displayStyle",
    enum: true

  field :peek_card_header, 7,
    type: Google.Apps.Card.V1.Card.CardHeader,
    json_name: "peekCardHeader"
end

defmodule Google.Apps.Card.V1.Widget do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :data, 0

  field :text_paragraph, 1,
    type: Google.Apps.Card.V1.TextParagraph,
    json_name: "textParagraph",
    oneof: 0

  field :image, 2, type: Google.Apps.Card.V1.Image, oneof: 0

  field :decorated_text, 3,
    type: Google.Apps.Card.V1.DecoratedText,
    json_name: "decoratedText",
    oneof: 0

  field :button_list, 4, type: Google.Apps.Card.V1.ButtonList, json_name: "buttonList", oneof: 0
  field :text_input, 5, type: Google.Apps.Card.V1.TextInput, json_name: "textInput", oneof: 0

  field :selection_input, 6,
    type: Google.Apps.Card.V1.SelectionInput,
    json_name: "selectionInput",
    oneof: 0

  field :date_time_picker, 7,
    type: Google.Apps.Card.V1.DateTimePicker,
    json_name: "dateTimePicker",
    oneof: 0

  field :divider, 9, type: Google.Apps.Card.V1.Divider, oneof: 0
  field :grid, 10, type: Google.Apps.Card.V1.Grid, oneof: 0
  field :columns, 11, type: Google.Apps.Card.V1.Columns, oneof: 0

  field :horizontal_alignment, 8,
    type: Google.Apps.Card.V1.Widget.HorizontalAlignment,
    json_name: "horizontalAlignment",
    enum: true
end

defmodule Google.Apps.Card.V1.TextParagraph do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :text, 1, type: :string
end

defmodule Google.Apps.Card.V1.Image do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :image_url, 1, type: :string, json_name: "imageUrl"
  field :on_click, 2, type: Google.Apps.Card.V1.OnClick, json_name: "onClick"
  field :alt_text, 3, type: :string, json_name: "altText"
end

defmodule Google.Apps.Card.V1.Divider do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Apps.Card.V1.DecoratedText.SwitchControl do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :value, 2, type: :string
  field :selected, 3, type: :bool
  field :on_change_action, 4, type: Google.Apps.Card.V1.Action, json_name: "onChangeAction"

  field :control_type, 5,
    type: Google.Apps.Card.V1.DecoratedText.SwitchControl.ControlType,
    json_name: "controlType",
    enum: true
end

defmodule Google.Apps.Card.V1.DecoratedText do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :control, 0

  field :icon, 1, type: Google.Apps.Card.V1.Icon, deprecated: true
  field :start_icon, 12, type: Google.Apps.Card.V1.Icon, json_name: "startIcon"
  field :top_label, 3, type: :string, json_name: "topLabel"
  field :text, 4, type: :string
  field :wrap_text, 5, type: :bool, json_name: "wrapText"
  field :bottom_label, 6, type: :string, json_name: "bottomLabel"
  field :on_click, 7, type: Google.Apps.Card.V1.OnClick, json_name: "onClick"
  field :button, 8, type: Google.Apps.Card.V1.Button, oneof: 0

  field :switch_control, 9,
    type: Google.Apps.Card.V1.DecoratedText.SwitchControl,
    json_name: "switchControl",
    oneof: 0

  field :end_icon, 11, type: Google.Apps.Card.V1.Icon, json_name: "endIcon", oneof: 0
end

defmodule Google.Apps.Card.V1.TextInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :label, 2, type: :string
  field :hint_text, 3, type: :string, json_name: "hintText"
  field :value, 4, type: :string
  field :type, 5, type: Google.Apps.Card.V1.TextInput.Type, enum: true
  field :on_change_action, 6, type: Google.Apps.Card.V1.Action, json_name: "onChangeAction"

  field :initial_suggestions, 7,
    type: Google.Apps.Card.V1.Suggestions,
    json_name: "initialSuggestions"

  field :auto_complete_action, 8,
    type: Google.Apps.Card.V1.Action,
    json_name: "autoCompleteAction"

  field :placeholder_text, 12, type: :string, json_name: "placeholderText"
end

defmodule Google.Apps.Card.V1.Suggestions.SuggestionItem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :content, 0

  field :text, 1, type: :string, oneof: 0
end

defmodule Google.Apps.Card.V1.Suggestions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :items, 1, repeated: true, type: Google.Apps.Card.V1.Suggestions.SuggestionItem
end

defmodule Google.Apps.Card.V1.ButtonList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :buttons, 1, repeated: true, type: Google.Apps.Card.V1.Button
end

defmodule Google.Apps.Card.V1.SelectionInput.SelectionItem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :text, 1, type: :string
  field :value, 2, type: :string
  field :selected, 3, type: :bool
  field :start_icon_uri, 4, type: :string, json_name: "startIconUri"
  field :bottom_text, 5, type: :string, json_name: "bottomText"
end

defmodule Google.Apps.Card.V1.SelectionInput.PlatformDataSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :data_source, 0

  field :common_data_source, 1,
    type: Google.Apps.Card.V1.SelectionInput.PlatformDataSource.CommonDataSource,
    json_name: "commonDataSource",
    enum: true,
    oneof: 0
end

defmodule Google.Apps.Card.V1.SelectionInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :multi_select_data_source, 0

  field :name, 1, type: :string
  field :label, 2, type: :string
  field :type, 3, type: Google.Apps.Card.V1.SelectionInput.SelectionType, enum: true
  field :items, 4, repeated: true, type: Google.Apps.Card.V1.SelectionInput.SelectionItem
  field :on_change_action, 5, type: Google.Apps.Card.V1.Action, json_name: "onChangeAction"

  field :multi_select_max_selected_items, 6,
    type: :int32,
    json_name: "multiSelectMaxSelectedItems"

  field :multi_select_min_query_length, 7, type: :int32, json_name: "multiSelectMinQueryLength"

  field :external_data_source, 8,
    type: Google.Apps.Card.V1.Action,
    json_name: "externalDataSource",
    oneof: 0

  field :platform_data_source, 9,
    type: Google.Apps.Card.V1.SelectionInput.PlatformDataSource,
    json_name: "platformDataSource",
    oneof: 0
end

defmodule Google.Apps.Card.V1.DateTimePicker do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :label, 2, type: :string
  field :type, 3, type: Google.Apps.Card.V1.DateTimePicker.DateTimePickerType, enum: true
  field :value_ms_epoch, 4, type: :int64, json_name: "valueMsEpoch"
  field :timezone_offset_date, 5, type: :int32, json_name: "timezoneOffsetDate"
  field :on_change_action, 6, type: Google.Apps.Card.V1.Action, json_name: "onChangeAction"
end

defmodule Google.Apps.Card.V1.Button do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :text, 1, type: :string
  field :icon, 2, type: Google.Apps.Card.V1.Icon
  field :color, 3, type: Google.Type.Color
  field :on_click, 4, type: Google.Apps.Card.V1.OnClick, json_name: "onClick"
  field :disabled, 5, type: :bool
  field :alt_text, 6, type: :string, json_name: "altText"
end

defmodule Google.Apps.Card.V1.Icon do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :icons, 0

  field :known_icon, 1, type: :string, json_name: "knownIcon", oneof: 0
  field :icon_url, 2, type: :string, json_name: "iconUrl", oneof: 0

  field :material_icon, 5,
    type: Google.Apps.Card.V1.MaterialIcon,
    json_name: "materialIcon",
    oneof: 0

  field :alt_text, 3, type: :string, json_name: "altText"

  field :image_type, 4,
    type: Google.Apps.Card.V1.Widget.ImageType,
    json_name: "imageType",
    enum: true
end

defmodule Google.Apps.Card.V1.MaterialIcon do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :fill, 2, type: :bool
  field :weight, 3, type: :int32
  field :grade, 4, type: :int32
end

defmodule Google.Apps.Card.V1.ImageCropStyle do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :type, 1, type: Google.Apps.Card.V1.ImageCropStyle.ImageCropType, enum: true
  field :aspect_ratio, 2, type: :double, json_name: "aspectRatio"
end

defmodule Google.Apps.Card.V1.BorderStyle do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :type, 1, type: Google.Apps.Card.V1.BorderStyle.BorderType, enum: true
  field :stroke_color, 2, type: Google.Type.Color, json_name: "strokeColor"
  field :corner_radius, 3, type: :int32, json_name: "cornerRadius"
end

defmodule Google.Apps.Card.V1.ImageComponent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :image_uri, 1, type: :string, json_name: "imageUri"
  field :alt_text, 2, type: :string, json_name: "altText"
  field :crop_style, 3, type: Google.Apps.Card.V1.ImageCropStyle, json_name: "cropStyle"
  field :border_style, 4, type: Google.Apps.Card.V1.BorderStyle, json_name: "borderStyle"
end

defmodule Google.Apps.Card.V1.Grid.GridItem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :id, 1, type: :string
  field :image, 2, type: Google.Apps.Card.V1.ImageComponent
  field :title, 3, type: :string
  field :subtitle, 4, type: :string
  field :layout, 9, type: Google.Apps.Card.V1.Grid.GridItem.GridItemLayout, enum: true
end

defmodule Google.Apps.Card.V1.Grid do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :title, 1, type: :string
  field :items, 2, repeated: true, type: Google.Apps.Card.V1.Grid.GridItem
  field :border_style, 3, type: Google.Apps.Card.V1.BorderStyle, json_name: "borderStyle"
  field :column_count, 4, type: :int32, json_name: "columnCount"
  field :on_click, 5, type: Google.Apps.Card.V1.OnClick, json_name: "onClick"
end

defmodule Google.Apps.Card.V1.Columns.Column.Widgets do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :data, 0

  field :text_paragraph, 1,
    type: Google.Apps.Card.V1.TextParagraph,
    json_name: "textParagraph",
    oneof: 0

  field :image, 2, type: Google.Apps.Card.V1.Image, oneof: 0

  field :decorated_text, 3,
    type: Google.Apps.Card.V1.DecoratedText,
    json_name: "decoratedText",
    oneof: 0

  field :button_list, 4, type: Google.Apps.Card.V1.ButtonList, json_name: "buttonList", oneof: 0
  field :text_input, 5, type: Google.Apps.Card.V1.TextInput, json_name: "textInput", oneof: 0

  field :selection_input, 6,
    type: Google.Apps.Card.V1.SelectionInput,
    json_name: "selectionInput",
    oneof: 0

  field :date_time_picker, 7,
    type: Google.Apps.Card.V1.DateTimePicker,
    json_name: "dateTimePicker",
    oneof: 0
end

defmodule Google.Apps.Card.V1.Columns.Column do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :horizontal_size_style, 1,
    type: Google.Apps.Card.V1.Columns.Column.HorizontalSizeStyle,
    json_name: "horizontalSizeStyle",
    enum: true

  field :horizontal_alignment, 2,
    type: Google.Apps.Card.V1.Widget.HorizontalAlignment,
    json_name: "horizontalAlignment",
    enum: true

  field :vertical_alignment, 3,
    type: Google.Apps.Card.V1.Columns.Column.VerticalAlignment,
    json_name: "verticalAlignment",
    enum: true

  field :widgets, 4, repeated: true, type: Google.Apps.Card.V1.Columns.Column.Widgets
end

defmodule Google.Apps.Card.V1.Columns do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :column_items, 2,
    repeated: true,
    type: Google.Apps.Card.V1.Columns.Column,
    json_name: "columnItems"
end

defmodule Google.Apps.Card.V1.OnClick do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :data, 0

  field :action, 1, type: Google.Apps.Card.V1.Action, oneof: 0
  field :open_link, 2, type: Google.Apps.Card.V1.OpenLink, json_name: "openLink", oneof: 0

  field :open_dynamic_link_action, 3,
    type: Google.Apps.Card.V1.Action,
    json_name: "openDynamicLinkAction",
    oneof: 0

  field :card, 4, type: Google.Apps.Card.V1.Card, oneof: 0
end

defmodule Google.Apps.Card.V1.OpenLink do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :url, 1, type: :string
  field :open_as, 2, type: Google.Apps.Card.V1.OpenLink.OpenAs, json_name: "openAs", enum: true
  field :on_close, 3, type: Google.Apps.Card.V1.OpenLink.OnClose, json_name: "onClose", enum: true
end

defmodule Google.Apps.Card.V1.Action.ActionParameter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Apps.Card.V1.Action do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :function, 1, type: :string
  field :parameters, 2, repeated: true, type: Google.Apps.Card.V1.Action.ActionParameter

  field :load_indicator, 3,
    type: Google.Apps.Card.V1.Action.LoadIndicator,
    json_name: "loadIndicator",
    enum: true

  field :persist_values, 4, type: :bool, json_name: "persistValues"
  field :interaction, 5, type: Google.Apps.Card.V1.Action.Interaction, enum: true
end
