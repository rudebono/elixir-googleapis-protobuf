defmodule Google.Apps.Drive.Labels.V2.LabelLimits do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
  field :max_title_length, 2, type: :int32, json_name: "maxTitleLength"
  field :max_description_length, 3, type: :int32, json_name: "maxDescriptionLength"
  field :max_fields, 4, type: :int32, json_name: "maxFields"
  field :max_deleted_fields, 5, type: :int32, json_name: "maxDeletedFields"
  field :max_draft_revisions, 6, type: :int32, json_name: "maxDraftRevisions"
  field :field_limits, 7, type: Google.Apps.Drive.Labels.V2.FieldLimits, json_name: "fieldLimits"
end

defmodule Google.Apps.Drive.Labels.V2.FieldLimits do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :max_id_length, 1, type: :int32, json_name: "maxIdLength"
  field :max_display_name_length, 2, type: :int32, json_name: "maxDisplayNameLength"
  field :max_description_length, 3, type: :int32, json_name: "maxDescriptionLength"
  field :text_limits, 4, type: Google.Apps.Drive.Labels.V2.TextLimits, json_name: "textLimits"

  field :long_text_limits, 5,
    type: Google.Apps.Drive.Labels.V2.LongTextLimits,
    json_name: "longTextLimits"

  field :integer_limits, 6,
    type: Google.Apps.Drive.Labels.V2.IntegerLimits,
    json_name: "integerLimits"

  field :date_limits, 7, type: Google.Apps.Drive.Labels.V2.DateLimits, json_name: "dateLimits"
  field :user_limits, 8, type: Google.Apps.Drive.Labels.V2.UserLimits, json_name: "userLimits"

  field :selection_limits, 9,
    type: Google.Apps.Drive.Labels.V2.SelectionLimits,
    json_name: "selectionLimits"
end

defmodule Google.Apps.Drive.Labels.V2.ListLimits do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :max_entries, 1, type: :int32, json_name: "maxEntries"
end

defmodule Google.Apps.Drive.Labels.V2.TextLimits do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :min_length, 1, type: :int32, json_name: "minLength"
  field :max_length, 2, type: :int32, json_name: "maxLength"
end

defmodule Google.Apps.Drive.Labels.V2.LongTextLimits do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :min_length, 1, type: :int32, json_name: "minLength"
  field :max_length, 2, type: :int32, json_name: "maxLength"
end

defmodule Google.Apps.Drive.Labels.V2.IntegerLimits do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :min_value, 1, type: :int64, json_name: "minValue"
  field :max_value, 2, type: :int64, json_name: "maxValue"
end

defmodule Google.Apps.Drive.Labels.V2.DateLimits do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :min_value, 1, type: Google.Type.Date, json_name: "minValue"
  field :max_value, 2, type: Google.Type.Date, json_name: "maxValue"
end

defmodule Google.Apps.Drive.Labels.V2.SelectionLimits do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :list_limits, 1, type: Google.Apps.Drive.Labels.V2.ListLimits, json_name: "listLimits"
  field :max_id_length, 2, type: :int32, json_name: "maxIdLength"
  field :max_display_name_length, 3, type: :int32, json_name: "maxDisplayNameLength"
  field :max_choices, 4, type: :int32, json_name: "maxChoices"
  field :max_deleted_choices, 5, type: :int32, json_name: "maxDeletedChoices"
end

defmodule Google.Apps.Drive.Labels.V2.UserLimits do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :list_limits, 1, type: Google.Apps.Drive.Labels.V2.ListLimits, json_name: "listLimits"
end
