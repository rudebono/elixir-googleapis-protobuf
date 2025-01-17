defmodule Google.Cloud.Oslogin.V1alpha.LoginProfile.SshPublicKeysEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Oslogin.Common.SshPublicKey
end

defmodule Google.Cloud.Oslogin.V1alpha.LoginProfile do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string

  field :posix_accounts, 2,
    repeated: true,
    type: Google.Cloud.Oslogin.Common.PosixAccount,
    json_name: "posixAccounts"

  field :ssh_public_keys, 3,
    repeated: true,
    type: Google.Cloud.Oslogin.V1alpha.LoginProfile.SshPublicKeysEntry,
    json_name: "sshPublicKeys",
    map: true

  field :suspended, 4, type: :bool
end

defmodule Google.Cloud.Oslogin.V1alpha.DeletePosixAccountRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Cloud.Oslogin.V1alpha.DeleteSshPublicKeyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Cloud.Oslogin.V1alpha.GetLoginProfileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Cloud.Oslogin.V1alpha.GetSshPublicKeyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Cloud.Oslogin.V1alpha.ImportSshPublicKeyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string

  field :ssh_public_key, 2,
    type: Google.Cloud.Oslogin.Common.SshPublicKey,
    json_name: "sshPublicKey"

  field :project_id, 3, type: :string, json_name: "projectId"
end

defmodule Google.Cloud.Oslogin.V1alpha.ImportSshPublicKeyResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :login_profile, 1,
    type: Google.Cloud.Oslogin.V1alpha.LoginProfile,
    json_name: "loginProfile"
end

defmodule Google.Cloud.Oslogin.V1alpha.UpdateSshPublicKeyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string

  field :ssh_public_key, 2,
    type: Google.Cloud.Oslogin.Common.SshPublicKey,
    json_name: "sshPublicKey"

  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Oslogin.V1alpha.OsLoginService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.oslogin.v1alpha.OsLoginService",
    protoc_gen_elixir_version: "0.14.0"

  rpc :DeletePosixAccount,
      Google.Cloud.Oslogin.V1alpha.DeletePosixAccountRequest,
      Google.Protobuf.Empty

  rpc :DeleteSshPublicKey,
      Google.Cloud.Oslogin.V1alpha.DeleteSshPublicKeyRequest,
      Google.Protobuf.Empty

  rpc :GetLoginProfile,
      Google.Cloud.Oslogin.V1alpha.GetLoginProfileRequest,
      Google.Cloud.Oslogin.V1alpha.LoginProfile

  rpc :GetSshPublicKey,
      Google.Cloud.Oslogin.V1alpha.GetSshPublicKeyRequest,
      Google.Cloud.Oslogin.Common.SshPublicKey

  rpc :ImportSshPublicKey,
      Google.Cloud.Oslogin.V1alpha.ImportSshPublicKeyRequest,
      Google.Cloud.Oslogin.V1alpha.ImportSshPublicKeyResponse

  rpc :UpdateSshPublicKey,
      Google.Cloud.Oslogin.V1alpha.UpdateSshPublicKeyRequest,
      Google.Cloud.Oslogin.Common.SshPublicKey
end

defmodule Google.Cloud.Oslogin.V1alpha.OsLoginService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Oslogin.V1alpha.OsLoginService.Service
end
