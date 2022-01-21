defmodule Google.Devtools.Artifactregistry.V1beta2.ProjectSettings.RedirectionState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :REDIRECTION_STATE_UNSPECIFIED
          | :REDIRECTION_FROM_GCR_IO_DISABLED
          | :REDIRECTION_FROM_GCR_IO_ENABLED
          | :REDIRECTION_FROM_GCR_IO_FINALIZED

  field :REDIRECTION_STATE_UNSPECIFIED, 0
  field :REDIRECTION_FROM_GCR_IO_DISABLED, 1
  field :REDIRECTION_FROM_GCR_IO_ENABLED, 2
  field :REDIRECTION_FROM_GCR_IO_FINALIZED, 3
end
defmodule Google.Devtools.Artifactregistry.V1beta2.ProjectSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          legacy_redirection_state:
            Google.Devtools.Artifactregistry.V1beta2.ProjectSettings.RedirectionState.t()
        }

  defstruct name: "",
            legacy_redirection_state: :REDIRECTION_STATE_UNSPECIFIED

  field :name, 1, type: :string

  field :legacy_redirection_state, 2,
    type: Google.Devtools.Artifactregistry.V1beta2.ProjectSettings.RedirectionState,
    json_name: "legacyRedirectionState",
    enum: true
end
defmodule Google.Devtools.Artifactregistry.V1beta2.GetProjectSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Devtools.Artifactregistry.V1beta2.UpdateProjectSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_settings: Google.Devtools.Artifactregistry.V1beta2.ProjectSettings.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct project_settings: nil,
            update_mask: nil

  field :project_settings, 2,
    type: Google.Devtools.Artifactregistry.V1beta2.ProjectSettings,
    json_name: "projectSettings"

  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
