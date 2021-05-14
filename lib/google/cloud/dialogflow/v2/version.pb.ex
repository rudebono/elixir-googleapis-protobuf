defmodule Google.Cloud.Dialogflow.V2.Version.VersionStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :VERSION_STATUS_UNSPECIFIED | :IN_PROGRESS | :READY | :FAILED

  field :VERSION_STATUS_UNSPECIFIED, 0

  field :IN_PROGRESS, 1

  field :READY, 2

  field :FAILED, 3
end

defmodule Google.Cloud.Dialogflow.V2.Version do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          description: String.t(),
          version_number: integer,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          status: Google.Cloud.Dialogflow.V2.Version.VersionStatus.t()
        }

  defstruct [:name, :description, :version_number, :create_time, :status]

  field :name, 1, type: :string
  field :description, 2, type: :string
  field :version_number, 3, type: :int32
  field :create_time, 4, type: Google.Protobuf.Timestamp
  field :status, 6, type: Google.Cloud.Dialogflow.V2.Version.VersionStatus, enum: true
end

defmodule Google.Cloud.Dialogflow.V2.ListVersionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Cloud.Dialogflow.V2.ListVersionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          versions: [Google.Cloud.Dialogflow.V2.Version.t()],
          next_page_token: String.t()
        }

  defstruct [:versions, :next_page_token]

  field :versions, 1, repeated: true, type: Google.Cloud.Dialogflow.V2.Version
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.V2.GetVersionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Dialogflow.V2.CreateVersionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          version: Google.Cloud.Dialogflow.V2.Version.t() | nil
        }

  defstruct [:parent, :version]

  field :parent, 1, type: :string
  field :version, 2, type: Google.Cloud.Dialogflow.V2.Version
end

defmodule Google.Cloud.Dialogflow.V2.UpdateVersionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          version: Google.Cloud.Dialogflow.V2.Version.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:version, :update_mask]

  field :version, 1, type: Google.Cloud.Dialogflow.V2.Version
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Dialogflow.V2.DeleteVersionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Dialogflow.V2.Versions.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.dialogflow.v2.Versions"

  rpc :ListVersions,
      Google.Cloud.Dialogflow.V2.ListVersionsRequest,
      Google.Cloud.Dialogflow.V2.ListVersionsResponse

  rpc :GetVersion,
      Google.Cloud.Dialogflow.V2.GetVersionRequest,
      Google.Cloud.Dialogflow.V2.Version

  rpc :CreateVersion,
      Google.Cloud.Dialogflow.V2.CreateVersionRequest,
      Google.Cloud.Dialogflow.V2.Version

  rpc :UpdateVersion,
      Google.Cloud.Dialogflow.V2.UpdateVersionRequest,
      Google.Cloud.Dialogflow.V2.Version

  rpc :DeleteVersion, Google.Cloud.Dialogflow.V2.DeleteVersionRequest, Google.Protobuf.Empty
end

defmodule Google.Cloud.Dialogflow.V2.Versions.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Dialogflow.V2.Versions.Service
end
