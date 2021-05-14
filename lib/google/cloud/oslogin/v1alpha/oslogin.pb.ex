defmodule Google.Cloud.Oslogin.V1alpha.LoginProfile.SshPublicKeysEntry do
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

defmodule Google.Cloud.Oslogin.V1alpha.LoginProfile do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          posix_accounts: [Google.Cloud.Oslogin.Common.PosixAccount.t()],
          ssh_public_keys: %{String.t() => Google.Cloud.Oslogin.Common.SshPublicKey.t() | nil},
          suspended: boolean
        }

  defstruct [:name, :posix_accounts, :ssh_public_keys, :suspended]

  field :name, 1, type: :string
  field :posix_accounts, 2, repeated: true, type: Google.Cloud.Oslogin.Common.PosixAccount

  field :ssh_public_keys, 3,
    repeated: true,
    type: Google.Cloud.Oslogin.V1alpha.LoginProfile.SshPublicKeysEntry,
    map: true

  field :suspended, 4, type: :bool
end

defmodule Google.Cloud.Oslogin.V1alpha.DeletePosixAccountRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Oslogin.V1alpha.DeleteSshPublicKeyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Oslogin.V1alpha.GetLoginProfileRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Oslogin.V1alpha.GetSshPublicKeyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Oslogin.V1alpha.ImportSshPublicKeyRequest do
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

defmodule Google.Cloud.Oslogin.V1alpha.ImportSshPublicKeyResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          login_profile: Google.Cloud.Oslogin.V1alpha.LoginProfile.t() | nil
        }

  defstruct [:login_profile]

  field :login_profile, 1, type: Google.Cloud.Oslogin.V1alpha.LoginProfile
end

defmodule Google.Cloud.Oslogin.V1alpha.UpdateSshPublicKeyRequest do
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
