defmodule Google.Cloud.Oslogin.V1.LoginProfile.SshPublicKeysEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Oslogin.Common.SshPublicKey
end

defmodule Google.Cloud.Oslogin.V1.LoginProfile do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :posix_accounts, 2,
    repeated: true,
    type: Google.Cloud.Oslogin.Common.PosixAccount,
    json_name: "posixAccounts"

  field :ssh_public_keys, 3,
    repeated: true,
    type: Google.Cloud.Oslogin.V1.LoginProfile.SshPublicKeysEntry,
    json_name: "sshPublicKeys",
    map: true
end

defmodule Google.Cloud.Oslogin.V1.CreateSshPublicKeyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :ssh_public_key, 2,
    type: Google.Cloud.Oslogin.Common.SshPublicKey,
    json_name: "sshPublicKey",
    deprecated: false
end

defmodule Google.Cloud.Oslogin.V1.DeletePosixAccountRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Oslogin.V1.DeleteSshPublicKeyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Oslogin.V1.GetLoginProfileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :project_id, 2, type: :string, json_name: "projectId"
  field :system_id, 3, type: :string, json_name: "systemId"
end

defmodule Google.Cloud.Oslogin.V1.GetSshPublicKeyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Oslogin.V1.ImportSshPublicKeyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :ssh_public_key, 2,
    type: Google.Cloud.Oslogin.Common.SshPublicKey,
    json_name: "sshPublicKey",
    deprecated: false

  field :project_id, 3, type: :string, json_name: "projectId"
  field :regions, 5, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Oslogin.V1.ImportSshPublicKeyResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :login_profile, 1, type: Google.Cloud.Oslogin.V1.LoginProfile, json_name: "loginProfile"
  field :details, 2, type: :string
end

defmodule Google.Cloud.Oslogin.V1.UpdateSshPublicKeyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :ssh_public_key, 2,
    type: Google.Cloud.Oslogin.Common.SshPublicKey,
    json_name: "sshPublicKey",
    deprecated: false

  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Oslogin.V1.OsLoginService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.oslogin.v1.OsLoginService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :CreateSshPublicKey,
      Google.Cloud.Oslogin.V1.CreateSshPublicKeyRequest,
      Google.Cloud.Oslogin.Common.SshPublicKey

  rpc :DeletePosixAccount,
      Google.Cloud.Oslogin.V1.DeletePosixAccountRequest,
      Google.Protobuf.Empty

  rpc :DeleteSshPublicKey,
      Google.Cloud.Oslogin.V1.DeleteSshPublicKeyRequest,
      Google.Protobuf.Empty

  rpc :GetLoginProfile,
      Google.Cloud.Oslogin.V1.GetLoginProfileRequest,
      Google.Cloud.Oslogin.V1.LoginProfile

  rpc :GetSshPublicKey,
      Google.Cloud.Oslogin.V1.GetSshPublicKeyRequest,
      Google.Cloud.Oslogin.Common.SshPublicKey

  rpc :ImportSshPublicKey,
      Google.Cloud.Oslogin.V1.ImportSshPublicKeyRequest,
      Google.Cloud.Oslogin.V1.ImportSshPublicKeyResponse

  rpc :UpdateSshPublicKey,
      Google.Cloud.Oslogin.V1.UpdateSshPublicKeyRequest,
      Google.Cloud.Oslogin.Common.SshPublicKey
end

defmodule Google.Cloud.Oslogin.V1.OsLoginService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Oslogin.V1.OsLoginService.Service
end