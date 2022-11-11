defmodule Google.Apps.Drive.Labels.V2beta.Lifecycle.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :UNPUBLISHED_DRAFT, 1
  field :PUBLISHED, 2
  field :DISABLED, 3
  field :DELETED, 4
end

defmodule Google.Apps.Drive.Labels.V2beta.Lifecycle.DisabledPolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :hide_in_search, 1, type: :bool, json_name: "hideInSearch"
  field :show_in_apply, 2, type: :bool, json_name: "showInApply"
end

defmodule Google.Apps.Drive.Labels.V2beta.Lifecycle do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :state, 1,
    type: Google.Apps.Drive.Labels.V2beta.Lifecycle.State,
    enum: true,
    deprecated: false

  field :has_unpublished_changes, 2,
    type: :bool,
    json_name: "hasUnpublishedChanges",
    deprecated: false

  field :disabled_policy, 3,
    type: Google.Apps.Drive.Labels.V2beta.Lifecycle.DisabledPolicy,
    json_name: "disabledPolicy"
end

defmodule Google.Apps.Drive.Labels.V2beta.UserInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :person, 1, type: :string, deprecated: false
end

defmodule Google.Apps.Drive.Labels.V2beta.BadgeConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :color, 1, type: Google.Type.Color
  field :priority_override, 2, type: :int64, json_name: "priorityOverride"
end

defmodule Google.Apps.Drive.Labels.V2beta.BadgeColors do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :background_color, 1,
    type: Google.Type.Color,
    json_name: "backgroundColor",
    deprecated: false

  field :foreground_color, 2,
    type: Google.Type.Color,
    json_name: "foregroundColor",
    deprecated: false

  field :solo_color, 3, type: Google.Type.Color, json_name: "soloColor", deprecated: false
end

defmodule Google.Apps.Drive.Labels.V2beta.LockStatus do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :locked, 1, type: :bool, deprecated: false
end