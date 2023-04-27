defmodule Google.Apps.Drive.Labels.V2.Field.DateOptions.DateFormat do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :DATE_FORMAT_UNSPECIFIED, 0
  field :LONG_DATE, 1
  field :SHORT_DATE, 2
end

defmodule Google.Apps.Drive.Labels.V2.Field.Properties do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName", deprecated: false
  field :required, 2, type: :bool
  field :insert_before_field, 3, type: :string, json_name: "insertBeforeField", deprecated: false
end

defmodule Google.Apps.Drive.Labels.V2.Field.DisplayHints do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :required, 1, type: :bool
  field :disabled, 2, type: :bool
  field :hidden_in_search, 3, type: :bool, json_name: "hiddenInSearch"
  field :shown_in_apply, 4, type: :bool, json_name: "shownInApply"
end

defmodule Google.Apps.Drive.Labels.V2.Field.SchemaCapabilities do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :can_update, 1, type: :bool, json_name: "canUpdate"
  field :can_delete, 2, type: :bool, json_name: "canDelete"
  field :can_disable, 3, type: :bool, json_name: "canDisable"
  field :can_enable, 4, type: :bool, json_name: "canEnable"
end

defmodule Google.Apps.Drive.Labels.V2.Field.AppliedCapabilities do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :can_read, 1, type: :bool, json_name: "canRead"
  field :can_search, 2, type: :bool, json_name: "canSearch"
  field :can_write, 3, type: :bool, json_name: "canWrite"
end

defmodule Google.Apps.Drive.Labels.V2.Field.ListOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :max_entries, 1, type: :int32, json_name: "maxEntries"
end

defmodule Google.Apps.Drive.Labels.V2.Field.TextOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :min_length, 1, type: :int32, json_name: "minLength", deprecated: false
  field :max_length, 2, type: :int32, json_name: "maxLength", deprecated: false
end

defmodule Google.Apps.Drive.Labels.V2.Field.IntegerOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :min_value, 1, type: :int64, json_name: "minValue", deprecated: false
  field :max_value, 2, type: :int64, json_name: "maxValue", deprecated: false
end

defmodule Google.Apps.Drive.Labels.V2.Field.DateOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :date_format_type, 1,
    type: Google.Apps.Drive.Labels.V2.Field.DateOptions.DateFormat,
    json_name: "dateFormatType",
    enum: true

  field :date_format, 2, type: :string, json_name: "dateFormat", deprecated: false
  field :min_value, 3, type: Google.Type.Date, json_name: "minValue", deprecated: false
  field :max_value, 4, type: Google.Type.Date, json_name: "maxValue", deprecated: false
end

defmodule Google.Apps.Drive.Labels.V2.Field.SelectionOptions.Choice.Properties do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName", deprecated: false
  field :description, 2, type: :string
  field :badge_config, 3, type: Google.Apps.Drive.Labels.V2.BadgeConfig, json_name: "badgeConfig"

  field :insert_before_choice, 4,
    type: :string,
    json_name: "insertBeforeChoice",
    deprecated: false
end

defmodule Google.Apps.Drive.Labels.V2.Field.SelectionOptions.Choice.DisplayHints do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :disabled, 1, type: :bool
  field :hidden_in_search, 2, type: :bool, json_name: "hiddenInSearch"
  field :shown_in_apply, 3, type: :bool, json_name: "shownInApply"
  field :badge_colors, 4, type: Google.Apps.Drive.Labels.V2.BadgeColors, json_name: "badgeColors"

  field :dark_badge_colors, 5,
    type: Google.Apps.Drive.Labels.V2.BadgeColors,
    json_name: "darkBadgeColors"

  field :badge_priority, 6, type: :int64, json_name: "badgePriority"
end

defmodule Google.Apps.Drive.Labels.V2.Field.SelectionOptions.Choice.SchemaCapabilities do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :can_update, 1, type: :bool, json_name: "canUpdate"
  field :can_delete, 2, type: :bool, json_name: "canDelete"
  field :can_disable, 3, type: :bool, json_name: "canDisable"
  field :can_enable, 4, type: :bool, json_name: "canEnable"
end

defmodule Google.Apps.Drive.Labels.V2.Field.SelectionOptions.Choice.AppliedCapabilities do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :can_read, 1, type: :bool, json_name: "canRead"
  field :can_search, 2, type: :bool, json_name: "canSearch"
  field :can_select, 3, type: :bool, json_name: "canSelect"
end

defmodule Google.Apps.Drive.Labels.V2.Field.SelectionOptions.Choice do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :id, 1, type: :string
  field :properties, 2, type: Google.Apps.Drive.Labels.V2.Field.SelectionOptions.Choice.Properties
  field :lifecycle, 3, type: Google.Apps.Drive.Labels.V2.Lifecycle, deprecated: false

  field :display_hints, 4,
    type: Google.Apps.Drive.Labels.V2.Field.SelectionOptions.Choice.DisplayHints,
    json_name: "displayHints",
    deprecated: false

  field :schema_capabilities, 5,
    type: Google.Apps.Drive.Labels.V2.Field.SelectionOptions.Choice.SchemaCapabilities,
    json_name: "schemaCapabilities",
    deprecated: false

  field :applied_capabilities, 6,
    type: Google.Apps.Drive.Labels.V2.Field.SelectionOptions.Choice.AppliedCapabilities,
    json_name: "appliedCapabilities",
    deprecated: false

  field :creator, 7, type: Google.Apps.Drive.Labels.V2.UserInfo, deprecated: false

  field :create_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :updater, 9, type: Google.Apps.Drive.Labels.V2.UserInfo, deprecated: false

  field :update_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :publisher, 11, type: Google.Apps.Drive.Labels.V2.UserInfo, deprecated: false

  field :publish_time, 12,
    type: Google.Protobuf.Timestamp,
    json_name: "publishTime",
    deprecated: false

  field :disabler, 13, type: Google.Apps.Drive.Labels.V2.UserInfo, deprecated: false

  field :disable_time, 14,
    type: Google.Protobuf.Timestamp,
    json_name: "disableTime",
    deprecated: false

  field :lock_status, 15,
    type: Google.Apps.Drive.Labels.V2.LockStatus,
    json_name: "lockStatus",
    deprecated: false
end

defmodule Google.Apps.Drive.Labels.V2.Field.SelectionOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :list_options, 1,
    type: Google.Apps.Drive.Labels.V2.Field.ListOptions,
    json_name: "listOptions"

  field :choices, 2,
    repeated: true,
    type: Google.Apps.Drive.Labels.V2.Field.SelectionOptions.Choice
end

defmodule Google.Apps.Drive.Labels.V2.Field.UserOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :list_options, 1,
    type: Google.Apps.Drive.Labels.V2.Field.ListOptions,
    json_name: "listOptions"
end

defmodule Google.Apps.Drive.Labels.V2.Field do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :type, 0

  field :text_options, 16,
    type: Google.Apps.Drive.Labels.V2.Field.TextOptions,
    json_name: "textOptions",
    oneof: 0

  field :integer_options, 18,
    type: Google.Apps.Drive.Labels.V2.Field.IntegerOptions,
    json_name: "integerOptions",
    oneof: 0

  field :date_options, 19,
    type: Google.Apps.Drive.Labels.V2.Field.DateOptions,
    json_name: "dateOptions",
    oneof: 0

  field :selection_options, 20,
    type: Google.Apps.Drive.Labels.V2.Field.SelectionOptions,
    json_name: "selectionOptions",
    oneof: 0

  field :user_options, 21,
    type: Google.Apps.Drive.Labels.V2.Field.UserOptions,
    json_name: "userOptions",
    oneof: 0

  field :id, 1, type: :string, deprecated: false
  field :query_key, 2, type: :string, json_name: "queryKey", deprecated: false
  field :properties, 3, type: Google.Apps.Drive.Labels.V2.Field.Properties
  field :lifecycle, 4, type: Google.Apps.Drive.Labels.V2.Lifecycle, deprecated: false

  field :display_hints, 5,
    type: Google.Apps.Drive.Labels.V2.Field.DisplayHints,
    json_name: "displayHints",
    deprecated: false

  field :schema_capabilities, 6,
    type: Google.Apps.Drive.Labels.V2.Field.SchemaCapabilities,
    json_name: "schemaCapabilities",
    deprecated: false

  field :applied_capabilities, 7,
    type: Google.Apps.Drive.Labels.V2.Field.AppliedCapabilities,
    json_name: "appliedCapabilities",
    deprecated: false

  field :creator, 8, type: Google.Apps.Drive.Labels.V2.UserInfo, deprecated: false

  field :create_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :updater, 10, type: Google.Apps.Drive.Labels.V2.UserInfo, deprecated: false

  field :update_time, 11,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :publisher, 12, type: Google.Apps.Drive.Labels.V2.UserInfo, deprecated: false
  field :disabler, 13, type: Google.Apps.Drive.Labels.V2.UserInfo, deprecated: false

  field :disable_time, 14,
    type: Google.Protobuf.Timestamp,
    json_name: "disableTime",
    deprecated: false

  field :lock_status, 15,
    type: Google.Apps.Drive.Labels.V2.LockStatus,
    json_name: "lockStatus",
    deprecated: false
end