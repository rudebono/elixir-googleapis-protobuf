defmodule Google.Devtools.Artifactregistry.V1.ProjectSettings.RedirectionState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :REDIRECTION_STATE_UNSPECIFIED, 0
  field :REDIRECTION_FROM_GCR_IO_DISABLED, 1
  field :REDIRECTION_FROM_GCR_IO_ENABLED, 2
  field :REDIRECTION_FROM_GCR_IO_FINALIZED, 3
  field :REDIRECTION_FROM_GCR_IO_ENABLED_AND_COPYING, 5
  field :REDIRECTION_FROM_GCR_IO_PARTIAL_AND_COPYING, 6
end

defmodule Google.Devtools.Artifactregistry.V1.ProjectSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string

  field :legacy_redirection_state, 2,
    type: Google.Devtools.Artifactregistry.V1.ProjectSettings.RedirectionState,
    json_name: "legacyRedirectionState",
    enum: true

  field :pull_percent, 3, type: :int32, json_name: "pullPercent"
end

defmodule Google.Devtools.Artifactregistry.V1.GetProjectSettingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Devtools.Artifactregistry.V1.UpdateProjectSettingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_settings, 2,
    type: Google.Devtools.Artifactregistry.V1.ProjectSettings,
    json_name: "projectSettings"

  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
