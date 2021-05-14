defmodule Google.Cloud.Oslogin.V1beta.LoginProfile.SshPublicKeysEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Oslogin.Common.SshPublicKey.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Oslogin.Common.SshPublicKey
end

defmodule Google.Cloud.Oslogin.V1beta.LoginProfile do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          posix_accounts: [Google.Cloud.Oslogin.Common.PosixAccount.t()],
          ssh_public_keys: %{String.t() => Google.Cloud.Oslogin.Common.SshPublicKey.t() | nil}
        }

  defstruct [:name, :posix_accounts, :ssh_public_keys]

  field :name, 1, type: :string
  field :posix_accounts, 2, repeated: true, type: Google.Cloud.Oslogin.Common.PosixAccount

  field :ssh_public_keys, 3,
    repeated: true,
    type: Google.Cloud.Oslogin.V1beta.LoginProfile.SshPublicKeysEntry,
    map: true
end

defmodule Google.Cloud.Oslogin.V1beta.DeletePosixAccountRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Oslogin.V1beta.DeleteSshPublicKeyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Oslogin.V1beta.GetLoginProfileRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          project_id: String.t(),
          system_id: String.t()
        }

  defstruct [:name, :project_id, :system_id]

  field :name, 1, type: :string
  field :project_id, 2, type: :string
  field :system_id, 3, type: :string
end

defmodule Google.Cloud.Oslogin.V1beta.GetSshPublicKeyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Oslogin.V1beta.ImportSshPublicKeyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          ssh_public_key: Google.Cloud.Oslogin.Common.SshPublicKey.t() | nil,
          project_id: String.t()
        }

  defstruct [:parent, :ssh_public_key, :project_id]

  field :parent, 1, type: :string
  field :ssh_public_key, 2, type: Google.Cloud.Oslogin.Common.SshPublicKey
  field :project_id, 3, type: :string
end

defmodule Google.Cloud.Oslogin.V1beta.ImportSshPublicKeyResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          login_profile: Google.Cloud.Oslogin.V1beta.LoginProfile.t() | nil
        }

  defstruct [:login_profile]

  field :login_profile, 1, type: Google.Cloud.Oslogin.V1beta.LoginProfile
end

defmodule Google.Cloud.Oslogin.V1beta.UpdateSshPublicKeyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          ssh_public_key: Google.Cloud.Oslogin.Common.SshPublicKey.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:name, :ssh_public_key, :update_mask]

  field :name, 1, type: :string
  field :ssh_public_key, 2, type: Google.Cloud.Oslogin.Common.SshPublicKey
  field :update_mask, 3, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Oslogin.V1beta.OsLoginService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.oslogin.v1beta.OsLoginService"

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
end

defmodule Google.Cloud.Oslogin.V1beta.OsLoginService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Oslogin.V1beta.OsLoginService.Service
end
