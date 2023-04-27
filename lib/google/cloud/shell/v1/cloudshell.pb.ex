defmodule Google.Cloud.Shell.V1.Environment.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :SUSPENDED, 1
  field :PENDING, 2
  field :RUNNING, 3
  field :DELETING, 4
end

defmodule Google.Cloud.Shell.V1.StartEnvironmentMetadata.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :STARTING, 1
  field :UNARCHIVING_DISK, 2
  field :AWAITING_COMPUTE_RESOURCES, 4
  field :FINISHED, 3
end

defmodule Google.Cloud.Shell.V1.CloudShellErrorDetails.CloudShellErrorCode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :CLOUD_SHELL_ERROR_CODE_UNSPECIFIED, 0
  field :IMAGE_UNAVAILABLE, 1
  field :CLOUD_SHELL_DISABLED, 2
  field :TOS_VIOLATION, 4
  field :QUOTA_EXCEEDED, 5
  field :ENVIRONMENT_UNAVAILABLE, 6
end

defmodule Google.Cloud.Shell.V1.Environment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Shell.V1.CreateEnvironmentMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Shell.V1.DeleteEnvironmentMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Shell.V1.StartEnvironmentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :access_token, 2, type: :string, json_name: "accessToken"
  field :public_keys, 3, repeated: true, type: :string, json_name: "publicKeys"
end

defmodule Google.Cloud.Shell.V1.AuthorizeEnvironmentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :access_token, 2, type: :string, json_name: "accessToken"
  field :id_token, 4, type: :string, json_name: "idToken"
  field :expire_time, 3, type: Google.Protobuf.Timestamp, json_name: "expireTime"
end

defmodule Google.Cloud.Shell.V1.AuthorizeEnvironmentResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Shell.V1.AuthorizeEnvironmentMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Shell.V1.StartEnvironmentMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :state, 1, type: Google.Cloud.Shell.V1.StartEnvironmentMetadata.State, enum: true
end

defmodule Google.Cloud.Shell.V1.StartEnvironmentResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :environment, 1, type: Google.Cloud.Shell.V1.Environment
end

defmodule Google.Cloud.Shell.V1.AddPublicKeyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :environment, 1, type: :string
  field :key, 2, type: :string
end

defmodule Google.Cloud.Shell.V1.AddPublicKeyResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
end

defmodule Google.Cloud.Shell.V1.AddPublicKeyMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Shell.V1.RemovePublicKeyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :environment, 1, type: :string
  field :key, 2, type: :string
end

defmodule Google.Cloud.Shell.V1.RemovePublicKeyResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Shell.V1.RemovePublicKeyMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Shell.V1.CloudShellErrorDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :code, 1,
    type: Google.Cloud.Shell.V1.CloudShellErrorDetails.CloudShellErrorCode,
    enum: true
end

defmodule Google.Cloud.Shell.V1.CloudShellService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.shell.v1.CloudShellService",
    protoc_gen_elixir_version: "0.12.0"

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