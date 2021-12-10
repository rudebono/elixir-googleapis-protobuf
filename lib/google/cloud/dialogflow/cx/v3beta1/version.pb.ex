defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Version.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATE_UNSPECIFIED | :RUNNING | :SUCCEEDED | :FAILED

  field :STATE_UNSPECIFIED, 0
  field :RUNNING, 1
  field :SUCCEEDED, 2
  field :FAILED, 3
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.CreateVersionOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          version: String.t()
        }

  defstruct version: ""

  field :version, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Version do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          description: String.t(),
          nlu_settings: Google.Cloud.Dialogflow.Cx.V3beta1.NluSettings.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          state: Google.Cloud.Dialogflow.Cx.V3beta1.Version.State.t()
        }

  defstruct name: "",
            display_name: "",
            description: "",
            nlu_settings: nil,
            create_time: nil,
            state: :STATE_UNSPECIFIED

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string

  field :nlu_settings, 4,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.NluSettings,
    json_name: "nluSettings",
    deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :state, 6,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Version.State,
    enum: true,
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListVersionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListVersionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          versions: [Google.Cloud.Dialogflow.Cx.V3beta1.Version.t()],
          next_page_token: String.t()
        }

  defstruct versions: [],
            next_page_token: ""

  field :versions, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3beta1.Version
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.GetVersionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.CreateVersionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          version: Google.Cloud.Dialogflow.Cx.V3beta1.Version.t() | nil
        }

  defstruct parent: "",
            version: nil

  field :parent, 1, type: :string, deprecated: false
  field :version, 2, type: Google.Cloud.Dialogflow.Cx.V3beta1.Version, deprecated: false
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.UpdateVersionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          version: Google.Cloud.Dialogflow.Cx.V3beta1.Version.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct version: nil,
            update_mask: nil

  field :version, 1, type: Google.Cloud.Dialogflow.Cx.V3beta1.Version, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.DeleteVersionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.LoadVersionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          allow_override_agent_resources: boolean
        }

  defstruct name: "",
            allow_override_agent_resources: false

  field :name, 1, type: :string, deprecated: false
  field :allow_override_agent_resources, 2, type: :bool, json_name: "allowOverrideAgentResources"
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.CompareVersionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          base_version: String.t(),
          target_version: String.t(),
          language_code: String.t()
        }

  defstruct base_version: "",
            target_version: "",
            language_code: ""

  field :base_version, 1, type: :string, json_name: "baseVersion", deprecated: false
  field :target_version, 2, type: :string, json_name: "targetVersion", deprecated: false
  field :language_code, 3, type: :string, json_name: "languageCode"
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.CompareVersionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          base_version_content_json: String.t(),
          target_version_content_json: String.t(),
          compare_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct base_version_content_json: "",
            target_version_content_json: "",
            compare_time: nil

  field :base_version_content_json, 1, type: :string, json_name: "baseVersionContentJson"
  field :target_version_content_json, 2, type: :string, json_name: "targetVersionContentJson"
  field :compare_time, 3, type: Google.Protobuf.Timestamp, json_name: "compareTime"
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Versions.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.dialogflow.cx.v3beta1.Versions"

  rpc :ListVersions,
      Google.Cloud.Dialogflow.Cx.V3beta1.ListVersionsRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.ListVersionsResponse

  rpc :GetVersion,
      Google.Cloud.Dialogflow.Cx.V3beta1.GetVersionRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.Version

  rpc :CreateVersion,
      Google.Cloud.Dialogflow.Cx.V3beta1.CreateVersionRequest,
      Google.Longrunning.Operation

  rpc :UpdateVersion,
      Google.Cloud.Dialogflow.Cx.V3beta1.UpdateVersionRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.Version

  rpc :DeleteVersion,
      Google.Cloud.Dialogflow.Cx.V3beta1.DeleteVersionRequest,
      Google.Protobuf.Empty

  rpc :LoadVersion,
      Google.Cloud.Dialogflow.Cx.V3beta1.LoadVersionRequest,
      Google.Longrunning.Operation

  rpc :CompareVersions,
      Google.Cloud.Dialogflow.Cx.V3beta1.CompareVersionsRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.CompareVersionsResponse
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Versions.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Dialogflow.Cx.V3beta1.Versions.Service
end
