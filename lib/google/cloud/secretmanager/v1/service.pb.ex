defmodule Google.Cloud.Secretmanager.V1.ListSecretsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Secretmanager.V1.ListSecretsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          secrets: [Google.Cloud.Secretmanager.V1.Secret.t()],
          next_page_token: String.t(),
          total_size: integer
        }

  defstruct [:secrets, :next_page_token, :total_size]

  field :secrets, 1, repeated: true, type: Google.Cloud.Secretmanager.V1.Secret
  field :next_page_token, 2, type: :string
  field :total_size, 3, type: :int32
end

defmodule Google.Cloud.Secretmanager.V1.CreateSecretRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          secret_id: String.t(),
          secret: Google.Cloud.Secretmanager.V1.Secret.t() | nil
        }

  defstruct [:parent, :secret_id, :secret]

  field :parent, 1, type: :string
  field :secret_id, 2, type: :string
  field :secret, 3, type: Google.Cloud.Secretmanager.V1.Secret
end

defmodule Google.Cloud.Secretmanager.V1.AddSecretVersionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          payload: Google.Cloud.Secretmanager.V1.SecretPayload.t() | nil
        }

  defstruct [:parent, :payload]

  field :parent, 1, type: :string
  field :payload, 2, type: Google.Cloud.Secretmanager.V1.SecretPayload
end

defmodule Google.Cloud.Secretmanager.V1.GetSecretRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Secretmanager.V1.ListSecretVersionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Secretmanager.V1.ListSecretVersionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          versions: [Google.Cloud.Secretmanager.V1.SecretVersion.t()],
          next_page_token: String.t(),
          total_size: integer
        }

  defstruct [:versions, :next_page_token, :total_size]

  field :versions, 1, repeated: true, type: Google.Cloud.Secretmanager.V1.SecretVersion
  field :next_page_token, 2, type: :string
  field :total_size, 3, type: :int32
end

defmodule Google.Cloud.Secretmanager.V1.GetSecretVersionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Secretmanager.V1.UpdateSecretRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          secret: Google.Cloud.Secretmanager.V1.Secret.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:secret, :update_mask]

  field :secret, 1, type: Google.Cloud.Secretmanager.V1.Secret
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Secretmanager.V1.AccessSecretVersionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Secretmanager.V1.AccessSecretVersionResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          payload: Google.Cloud.Secretmanager.V1.SecretPayload.t() | nil
        }

  defstruct [:name, :payload]

  field :name, 1, type: :string
  field :payload, 2, type: Google.Cloud.Secretmanager.V1.SecretPayload
end

defmodule Google.Cloud.Secretmanager.V1.DeleteSecretRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          etag: String.t()
        }

  defstruct [:name, :etag]

  field :name, 1, type: :string
  field :etag, 2, type: :string
end

defmodule Google.Cloud.Secretmanager.V1.DisableSecretVersionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          etag: String.t()
        }

  defstruct [:name, :etag]

  field :name, 1, type: :string
  field :etag, 2, type: :string
end

defmodule Google.Cloud.Secretmanager.V1.EnableSecretVersionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          etag: String.t()
        }

  defstruct [:name, :etag]

  field :name, 1, type: :string
  field :etag, 2, type: :string
end

defmodule Google.Cloud.Secretmanager.V1.DestroySecretVersionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          etag: String.t()
        }

  defstruct [:name, :etag]

  field :name, 1, type: :string
  field :etag, 2, type: :string
end

defmodule Google.Cloud.Secretmanager.V1.SecretManagerService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.secretmanager.v1.SecretManagerService"

  rpc :ListSecrets,
      Google.Cloud.Secretmanager.V1.ListSecretsRequest,
      Google.Cloud.Secretmanager.V1.ListSecretsResponse

  rpc :CreateSecret,
      Google.Cloud.Secretmanager.V1.CreateSecretRequest,
      Google.Cloud.Secretmanager.V1.Secret

  rpc :AddSecretVersion,
      Google.Cloud.Secretmanager.V1.AddSecretVersionRequest,
      Google.Cloud.Secretmanager.V1.SecretVersion

  rpc :GetSecret,
      Google.Cloud.Secretmanager.V1.GetSecretRequest,
      Google.Cloud.Secretmanager.V1.Secret

  rpc :UpdateSecret,
      Google.Cloud.Secretmanager.V1.UpdateSecretRequest,
      Google.Cloud.Secretmanager.V1.Secret

  rpc :DeleteSecret, Google.Cloud.Secretmanager.V1.DeleteSecretRequest, Google.Protobuf.Empty

  rpc :ListSecretVersions,
      Google.Cloud.Secretmanager.V1.ListSecretVersionsRequest,
      Google.Cloud.Secretmanager.V1.ListSecretVersionsResponse

  rpc :GetSecretVersion,
      Google.Cloud.Secretmanager.V1.GetSecretVersionRequest,
      Google.Cloud.Secretmanager.V1.SecretVersion

  rpc :AccessSecretVersion,
      Google.Cloud.Secretmanager.V1.AccessSecretVersionRequest,
      Google.Cloud.Secretmanager.V1.AccessSecretVersionResponse

  rpc :DisableSecretVersion,
      Google.Cloud.Secretmanager.V1.DisableSecretVersionRequest,
      Google.Cloud.Secretmanager.V1.SecretVersion

  rpc :EnableSecretVersion,
      Google.Cloud.Secretmanager.V1.EnableSecretVersionRequest,
      Google.Cloud.Secretmanager.V1.SecretVersion

  rpc :DestroySecretVersion,
      Google.Cloud.Secretmanager.V1.DestroySecretVersionRequest,
      Google.Cloud.Secretmanager.V1.SecretVersion

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse
end

defmodule Google.Cloud.Secretmanager.V1.SecretManagerService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Secretmanager.V1.SecretManagerService.Service
end
