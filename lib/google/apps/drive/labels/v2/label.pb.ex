defmodule Google.Apps.Drive.Labels.V2.Label.LabelType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :LABEL_TYPE_UNSPECIFIED, 0
  field :SHARED, 1
  field :ADMIN, 2
end

defmodule Google.Apps.Drive.Labels.V2.Label.AppliedLabelPolicy.CopyMode do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :COPY_MODE_UNSPECIFIED, 0
  field :DO_NOT_COPY, 1
  field :ALWAYS_COPY, 2
  field :COPY_APPLIABLE, 3
end

defmodule Google.Apps.Drive.Labels.V2.Label.Properties do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :title, 1, type: :string, deprecated: false
  field :description, 2, type: :string
end

defmodule Google.Apps.Drive.Labels.V2.Label.DisplayHints do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :disabled, 1, type: :bool
  field :hidden_in_search, 2, type: :bool, json_name: "hiddenInSearch"
  field :shown_in_apply, 3, type: :bool, json_name: "shownInApply"
  field :priority, 4, type: :int64
end

defmodule Google.Apps.Drive.Labels.V2.Label.AppliedCapabilities do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :can_read, 1, type: :bool, json_name: "canRead"
  field :can_apply, 2, type: :bool, json_name: "canApply"
  field :can_remove, 3, type: :bool, json_name: "canRemove"
end

defmodule Google.Apps.Drive.Labels.V2.Label.SchemaCapabilities do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :can_update, 1, type: :bool, json_name: "canUpdate"
  field :can_delete, 2, type: :bool, json_name: "canDelete"
  field :can_disable, 3, type: :bool, json_name: "canDisable"
  field :can_enable, 4, type: :bool, json_name: "canEnable"
end

defmodule Google.Apps.Drive.Labels.V2.Label.AppliedLabelPolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :copy_mode, 1,
    type: Google.Apps.Drive.Labels.V2.Label.AppliedLabelPolicy.CopyMode,
    json_name: "copyMode",
    enum: true
end

defmodule Google.Apps.Drive.Labels.V2.Label do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :id, 2, type: :string, deprecated: false
  field :revision_id, 3, type: :string, json_name: "revisionId", deprecated: false

  field :label_type, 4,
    type: Google.Apps.Drive.Labels.V2.Label.LabelType,
    json_name: "labelType",
    enum: true,
    deprecated: false

  field :creator, 5, type: Google.Apps.Drive.Labels.V2.UserInfo, deprecated: false

  field :create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :revision_creator, 7,
    type: Google.Apps.Drive.Labels.V2.UserInfo,
    json_name: "revisionCreator",
    deprecated: false

  field :revision_create_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "revisionCreateTime",
    deprecated: false

  field :publisher, 9, type: Google.Apps.Drive.Labels.V2.UserInfo, deprecated: false

  field :publish_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "publishTime",
    deprecated: false

  field :disabler, 11, type: Google.Apps.Drive.Labels.V2.UserInfo, deprecated: false

  field :disable_time, 12,
    type: Google.Protobuf.Timestamp,
    json_name: "disableTime",
    deprecated: false

  field :properties, 14, type: Google.Apps.Drive.Labels.V2.Label.Properties, deprecated: false
  field :lifecycle, 15, type: Google.Apps.Drive.Labels.V2.Lifecycle, deprecated: false

  field :display_hints, 16,
    type: Google.Apps.Drive.Labels.V2.Label.DisplayHints,
    json_name: "displayHints",
    deprecated: false

  field :applied_capabilities, 17,
    type: Google.Apps.Drive.Labels.V2.Label.AppliedCapabilities,
    json_name: "appliedCapabilities",
    deprecated: false

  field :schema_capabilities, 18,
    type: Google.Apps.Drive.Labels.V2.Label.SchemaCapabilities,
    json_name: "schemaCapabilities",
    deprecated: false

  field :applied_label_policy, 19,
    type: Google.Apps.Drive.Labels.V2.Label.AppliedLabelPolicy,
    json_name: "appliedLabelPolicy",
    deprecated: false

  field :fields, 20, repeated: true, type: Google.Apps.Drive.Labels.V2.Field
  field :learn_more_uri, 21, type: :string, json_name: "learnMoreUri"

  field :lock_status, 22,
    type: Google.Apps.Drive.Labels.V2.LockStatus,
    json_name: "lockStatus",
    deprecated: false
end