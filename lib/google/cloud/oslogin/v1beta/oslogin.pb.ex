defmodule Google.Cloud.Oslogin.V1beta.LoginProfileView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :LOGIN_PROFILE_VIEW_UNSPECIFIED, 0
  field :BASIC, 1
  field :SECURITY_KEY, 2
end

defmodule Google.Cloud.Oslogin.V1beta.LoginProfile.SshPublicKeysEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Oslogin.Common.SshPublicKey
end

defmodule Google.Cloud.Oslogin.V1beta.LoginProfile do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :posix_accounts, 2,
    repeated: true,
    type: Google.Cloud.Oslogin.Common.PosixAccount,
    json_name: "posixAccounts"

  field :ssh_public_keys, 3,
    repeated: true,
    type: Google.Cloud.Oslogin.V1beta.LoginProfile.SshPublicKeysEntry,
    json_name: "sshPublicKeys",
    map: true

  field :security_keys, 5,
    repeated: true,
    type: Google.Cloud.Oslogin.V1beta.SecurityKey,
    json_name: "securityKeys"
end

defmodule Google.Cloud.Oslogin.V1beta.CreateSshPublicKeyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :ssh_public_key, 2,
    type: Google.Cloud.Oslogin.Common.SshPublicKey,
    json_name: "sshPublicKey",
    deprecated: false
end

defmodule Google.Cloud.Oslogin.V1beta.DeletePosixAccountRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Oslogin.V1beta.DeleteSshPublicKeyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Oslogin.V1beta.GetLoginProfileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :project_id, 2, type: :string, json_name: "projectId"
  field :system_id, 3, type: :string, json_name: "systemId"
  field :view, 4, type: Google.Cloud.Oslogin.V1beta.LoginProfileView, enum: true
end

defmodule Google.Cloud.Oslogin.V1beta.GetSshPublicKeyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Oslogin.V1beta.ImportSshPublicKeyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :ssh_public_key, 2,
    type: Google.Cloud.Oslogin.Common.SshPublicKey,
    json_name: "sshPublicKey",
    deprecated: false

  field :project_id, 3, type: :string, json_name: "projectId"
  field :view, 4, type: Google.Cloud.Oslogin.V1beta.LoginProfileView, enum: true
end

defmodule Google.Cloud.Oslogin.V1beta.ImportSshPublicKeyResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :login_profile, 1,
    type: Google.Cloud.Oslogin.V1beta.LoginProfile,
    json_name: "loginProfile"

  field :details, 2, type: :string
end

defmodule Google.Cloud.Oslogin.V1beta.UpdateSshPublicKeyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :ssh_public_key, 2,
    type: Google.Cloud.Oslogin.Common.SshPublicKey,
    json_name: "sshPublicKey",
    deprecated: false

  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Oslogin.V1beta.SecurityKey do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :protocol_type, 0

  field :public_key, 1, type: :string, json_name: "publicKey"
  field :private_key, 2, type: :string, json_name: "privateKey"

  field :universal_two_factor, 3,
    type: Google.Cloud.Oslogin.V1beta.UniversalTwoFactor,
    json_name: "universalTwoFactor",
    oneof: 0

  field :web_authn, 4, type: Google.Cloud.Oslogin.V1beta.WebAuthn, json_name: "webAuthn", oneof: 0
  field :device_nickname, 5, proto3_optional: true, type: :string, json_name: "deviceNickname"
end

defmodule Google.Cloud.Oslogin.V1beta.UniversalTwoFactor do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :app_id, 1, type: :string, json_name: "appId"
end

defmodule Google.Cloud.Oslogin.V1beta.WebAuthn do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :rp_id, 1, type: :string, json_name: "rpId"
end

defmodule Google.Cloud.Oslogin.V1beta.SignSshPublicKeyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ssh_public_key, 1, type: :string, json_name: "sshPublicKey"
  field :parent, 2, type: :string
end

defmodule Google.Cloud.Oslogin.V1beta.SignSshPublicKeyResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :signed_ssh_public_key, 1, type: :string, json_name: "signedSshPublicKey"
end

defmodule Google.Cloud.Oslogin.V1beta.OsLoginService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.oslogin.v1beta.OsLoginService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :CreateSshPublicKey,
      Google.Cloud.Oslogin.V1beta.CreateSshPublicKeyRequest,
      Google.Cloud.Oslogin.Common.SshPublicKey

  rpc :DeletePosixAccount,
      Google.Cloud.Oslogin.V1beta.DeletePosixAccountRequest,
      Google.Protobuf.Empty

  rpc :DeleteSshPublicKey,
      Google.Cloud.Oslogin.V1beta.DeleteSshPublicKeyRequest,
      Google.Protobuf.Empty

  rpc :GetLoginProfile,
      Google.Cloud.Oslogin.V1beta.GetLoginProfileRequest,
      Google.Cloud.Oslogin.V1beta.LoginProfile

  rpc :GetSshPublicKey,
      Google.Cloud.Oslogin.V1beta.GetSshPublicKeyRequest,
      Google.Cloud.Oslogin.Common.SshPublicKey

  rpc :ImportSshPublicKey,
      Google.Cloud.Oslogin.V1beta.ImportSshPublicKeyRequest,
      Google.Cloud.Oslogin.V1beta.ImportSshPublicKeyResponse

  rpc :UpdateSshPublicKey,
      Google.Cloud.Oslogin.V1beta.UpdateSshPublicKeyRequest,
      Google.Cloud.Oslogin.Common.SshPublicKey

  rpc :SignSshPublicKey,
      Google.Cloud.Oslogin.V1beta.SignSshPublicKeyRequest,
      Google.Cloud.Oslogin.V1beta.SignSshPublicKeyResponse
end

defmodule Google.Cloud.Oslogin.V1beta.OsLoginService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Oslogin.V1beta.OsLoginService.Service
end