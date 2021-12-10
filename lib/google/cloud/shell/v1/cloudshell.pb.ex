defmodule Google.Cloud.Shell.V1.Environment.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATE_UNSPECIFIED | :SUSPENDED | :PENDING | :RUNNING | :DELETING

  field :STATE_UNSPECIFIED, 0
  field :SUSPENDED, 1
  field :PENDING, 2
  field :RUNNING, 3
  field :DELETING, 4
end
defmodule Google.Cloud.Shell.V1.StartEnvironmentMetadata.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :STARTING
          | :UNARCHIVING_DISK
          | :AWAITING_COMPUTE_RESOURCES
          | :FINISHED

  field :STATE_UNSPECIFIED, 0
  field :STARTING, 1
  field :UNARCHIVING_DISK, 2
  field :AWAITING_COMPUTE_RESOURCES, 4
  field :FINISHED, 3
end
defmodule Google.Cloud.Shell.V1.CloudShellErrorDetails.CloudShellErrorCode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :CLOUD_SHELL_ERROR_CODE_UNSPECIFIED
          | :IMAGE_UNAVAILABLE
          | :CLOUD_SHELL_DISABLED
          | :TOS_VIOLATION
          | :QUOTA_EXCEEDED

  field :CLOUD_SHELL_ERROR_CODE_UNSPECIFIED, 0
  field :IMAGE_UNAVAILABLE, 1
  field :CLOUD_SHELL_DISABLED, 2
  field :TOS_VIOLATION, 4
  field :QUOTA_EXCEEDED, 5
end
defmodule Google.Cloud.Shell.V1.Environment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          id: String.t(),
          docker_image: String.t(),
          state: Google.Cloud.Shell.V1.Environment.State.t(),
          web_host: String.t(),
          ssh_username: String.t(),
          ssh_host: String.t(),
          ssh_port: integer,
          public_keys: [String.t()]
        }

  defstruct name: "",
            id: "",
            docker_image: "",
            state: :STATE_UNSPECIFIED,
            web_host: "",
            ssh_username: "",
            ssh_host: "",
            ssh_port: 0,
            public_keys: []

  field :name, 1, type: :string, deprecated: false
  field :id, 2, type: :string, deprecated: false
  field :docker_image, 3, type: :string, json_name: "dockerImage", deprecated: false
  field :state, 4, type: Google.Cloud.Shell.V1.Environment.State, enum: true, deprecated: false
  field :web_host, 12, type: :string, json_name: "webHost", deprecated: false
  field :ssh_username, 5, type: :string, json_name: "sshUsername", deprecated: false
  field :ssh_host, 6, type: :string, json_name: "sshHost", deprecated: false
  field :ssh_port, 7, type: :int32, json_name: "sshPort", deprecated: false
  field :public_keys, 8, repeated: true, type: :string, json_name: "publicKeys", deprecated: false
end
defmodule Google.Cloud.Shell.V1.GetEnvironmentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Shell.V1.CreateEnvironmentMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Shell.V1.DeleteEnvironmentMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Shell.V1.StartEnvironmentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          access_token: String.t(),
          public_keys: [String.t()]
        }

  defstruct name: "",
            access_token: "",
            public_keys: []

  field :name, 1, type: :string
  field :access_token, 2, type: :string, json_name: "accessToken"
  field :public_keys, 3, repeated: true, type: :string, json_name: "publicKeys"
end
defmodule Google.Cloud.Shell.V1.AuthorizeEnvironmentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          access_token: String.t(),
          id_token: String.t(),
          expire_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct name: "",
            access_token: "",
            id_token: "",
            expire_time: nil

  field :name, 1, type: :string
  field :access_token, 2, type: :string, json_name: "accessToken"
  field :id_token, 4, type: :string, json_name: "idToken"
  field :expire_time, 3, type: Google.Protobuf.Timestamp, json_name: "expireTime"
end
defmodule Google.Cloud.Shell.V1.AuthorizeEnvironmentResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Shell.V1.AuthorizeEnvironmentMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Shell.V1.StartEnvironmentMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Cloud.Shell.V1.StartEnvironmentMetadata.State.t()
        }

  defstruct state: :STATE_UNSPECIFIED

  field :state, 1, type: Google.Cloud.Shell.V1.StartEnvironmentMetadata.State, enum: true
end
defmodule Google.Cloud.Shell.V1.StartEnvironmentResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          environment: Google.Cloud.Shell.V1.Environment.t() | nil
        }

  defstruct environment: nil

  field :environment, 1, type: Google.Cloud.Shell.V1.Environment
end
defmodule Google.Cloud.Shell.V1.AddPublicKeyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          environment: String.t(),
          key: String.t()
        }

  defstruct environment: "",
            key: ""

  field :environment, 1, type: :string
  field :key, 2, type: :string
end
defmodule Google.Cloud.Shell.V1.AddPublicKeyResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t()
        }

  defstruct key: ""

  field :key, 1, type: :string
end
defmodule Google.Cloud.Shell.V1.AddPublicKeyMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Shell.V1.RemovePublicKeyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          environment: String.t(),
          key: String.t()
        }

  defstruct environment: "",
            key: ""

  field :environment, 1, type: :string
  field :key, 2, type: :string
end
defmodule Google.Cloud.Shell.V1.RemovePublicKeyResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Shell.V1.RemovePublicKeyMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Shell.V1.CloudShellErrorDetails do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          code: Google.Cloud.Shell.V1.CloudShellErrorDetails.CloudShellErrorCode.t()
        }

  defstruct code: :CLOUD_SHELL_ERROR_CODE_UNSPECIFIED

  field :code, 1,
    type: Google.Cloud.Shell.V1.CloudShellErrorDetails.CloudShellErrorCode,
    enum: true
end
defmodule Google.Cloud.Shell.V1.CloudShellService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.shell.v1.CloudShellService"

  rpc :GetEnvironment,
      Google.Cloud.Shell.V1.GetEnvironmentRequest,
      Google.Cloud.Shell.V1.Environment

  rpc :StartEnvironment,
      Google.Cloud.Shell.V1.StartEnvironmentRequest,
      Google.Longrunning.Operation

  rpc :AuthorizeEnvironment,
      Google.Cloud.Shell.V1.AuthorizeEnvironmentRequest,
      Google.Longrunning.Operation

  rpc :AddPublicKey, Google.Cloud.Shell.V1.AddPublicKeyRequest, Google.Longrunning.Operation

  rpc :RemovePublicKey, Google.Cloud.Shell.V1.RemovePublicKeyRequest, Google.Longrunning.Operation
end

defmodule Google.Cloud.Shell.V1.CloudShellService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Shell.V1.CloudShellService.Service
end
