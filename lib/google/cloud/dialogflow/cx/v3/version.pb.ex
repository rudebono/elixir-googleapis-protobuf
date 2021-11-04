defmodule Google.Cloud.Dialogflow.Cx.V3.Version.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :RUNNING | :SUCCEEDED | :FAILED

  field :STATE_UNSPECIFIED, 0
  field :RUNNING, 1
  field :SUCCEEDED, 2
  field :FAILED, 3
end

defmodule Google.Cloud.Dialogflow.Cx.V3.CreateVersionOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          version: String.t()
        }

  defstruct [:version]

  field :version, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Version do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          description: String.t(),
          nlu_settings: Google.Cloud.Dialogflow.Cx.V3.NluSettings.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          state: Google.Cloud.Dialogflow.Cx.V3.Version.State.t()
        }

  defstruct [:name, :display_name, :description, :nlu_settings, :create_time, :state]

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :description, 3, type: :string

  field :nlu_settings, 4,
    type: Google.Cloud.Dialogflow.Cx.V3.NluSettings,
    json_name: "nluSettings"

  field :create_time, 5, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :state, 6, type: Google.Cloud.Dialogflow.Cx.V3.Version.State, enum: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ListVersionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ListVersionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          versions: [Google.Cloud.Dialogflow.Cx.V3.Version.t()],
          next_page_token: String.t()
        }

  defstruct [:versions, :next_page_token]

  field :versions, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3.Version
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3.GetVersionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3.CreateVersionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          version: Google.Cloud.Dialogflow.Cx.V3.Version.t() | nil
        }

  defstruct [:parent, :version]

  field :parent, 1, type: :string
  field :version, 2, type: Google.Cloud.Dialogflow.Cx.V3.Version

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3.UpdateVersionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          version: Google.Cloud.Dialogflow.Cx.V3.Version.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:version, :update_mask]

  field :version, 1, type: Google.Cloud.Dialogflow.Cx.V3.Version
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3.DeleteVersionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3.LoadVersionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          allow_override_agent_resources: boolean
        }

  defstruct [:name, :allow_override_agent_resources]

  field :name, 1, type: :string
  field :allow_override_agent_resources, 2, type: :bool, json_name: "allowOverrideAgentResources"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Versions.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.dialogflow.cx.v3.Versions"

  rpc :ListVersions,
      Google.Cloud.Dialogflow.Cx.V3.ListVersionsRequest,
      Google.Cloud.Dialogflow.Cx.V3.ListVersionsResponse

  rpc :GetVersion,
      Google.Cloud.Dialogflow.Cx.V3.GetVersionRequest,
      Google.Cloud.Dialogflow.Cx.V3.Version

  rpc :CreateVersion,
      Google.Cloud.Dialogflow.Cx.V3.CreateVersionRequest,
      Google.Longrunning.Operation

  rpc :UpdateVersion,
      Google.Cloud.Dialogflow.Cx.V3.UpdateVersionRequest,
      Google.Cloud.Dialogflow.Cx.V3.Version

  rpc :DeleteVersion, Google.Cloud.Dialogflow.Cx.V3.DeleteVersionRequest, Google.Protobuf.Empty

  rpc :LoadVersion, Google.Cloud.Dialogflow.Cx.V3.LoadVersionRequest, Google.Longrunning.Operation
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Versions.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Dialogflow.Cx.V3.Versions.Service
end
