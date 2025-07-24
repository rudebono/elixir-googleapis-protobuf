defmodule Google.Cloud.Secretmanager.V1beta2.ListSecretsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Secretmanager.V1beta2.ListSecretsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :secrets, 1, repeated: true, type: Google.Cloud.Secretmanager.V1beta2.Secret
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Google.Cloud.Secretmanager.V1beta2.CreateSecretRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :secret_id, 2, type: :string, json_name: "secretId", deprecated: false
  field :secret, 3, type: Google.Cloud.Secretmanager.V1beta2.Secret, deprecated: false
end

defmodule Google.Cloud.Secretmanager.V1beta2.AddSecretVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :payload, 2, type: Google.Cloud.Secretmanager.V1beta2.SecretPayload, deprecated: false
end

defmodule Google.Cloud.Secretmanager.V1beta2.GetSecretRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Secretmanager.V1beta2.ListSecretVersionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Secretmanager.V1beta2.ListSecretVersionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :versions, 1, repeated: true, type: Google.Cloud.Secretmanager.V1beta2.SecretVersion
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Google.Cloud.Secretmanager.V1beta2.GetSecretVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Secretmanager.V1beta2.UpdateSecretRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :secret, 1, type: Google.Cloud.Secretmanager.V1beta2.Secret, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Secretmanager.V1beta2.AccessSecretVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Secretmanager.V1beta2.AccessSecretVersionResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :payload, 2, type: Google.Cloud.Secretmanager.V1beta2.SecretPayload
end

defmodule Google.Cloud.Secretmanager.V1beta2.DeleteSecretRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Secretmanager.V1beta2.DisableSecretVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Secretmanager.V1beta2.EnableSecretVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Secretmanager.V1beta2.DestroySecretVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Secretmanager.V1beta2.SecretManagerService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.secretmanager.v1beta2.SecretManagerService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListSecrets,
      Google.Cloud.Secretmanager.V1beta2.ListSecretsRequest,
      Google.Cloud.Secretmanager.V1beta2.ListSecretsResponse

  rpc :CreateSecret,
      Google.Cloud.Secretmanager.V1beta2.CreateSecretRequest,
      Google.Cloud.Secretmanager.V1beta2.Secret

  rpc :AddSecretVersion,
      Google.Cloud.Secretmanager.V1beta2.AddSecretVersionRequest,
      Google.Cloud.Secretmanager.V1beta2.SecretVersion

  rpc :GetSecret,
      Google.Cloud.Secretmanager.V1beta2.GetSecretRequest,
      Google.Cloud.Secretmanager.V1beta2.Secret

  rpc :UpdateSecret,
      Google.Cloud.Secretmanager.V1beta2.UpdateSecretRequest,
      Google.Cloud.Secretmanager.V1beta2.Secret

  rpc :DeleteSecret, Google.Cloud.Secretmanager.V1beta2.DeleteSecretRequest, Google.Protobuf.Empty

  rpc :ListSecretVersions,
      Google.Cloud.Secretmanager.V1beta2.ListSecretVersionsRequest,
      Google.Cloud.Secretmanager.V1beta2.ListSecretVersionsResponse

  rpc :GetSecretVersion,
      Google.Cloud.Secretmanager.V1beta2.GetSecretVersionRequest,
      Google.Cloud.Secretmanager.V1beta2.SecretVersion

  rpc :AccessSecretVersion,
      Google.Cloud.Secretmanager.V1beta2.AccessSecretVersionRequest,
      Google.Cloud.Secretmanager.V1beta2.AccessSecretVersionResponse

  rpc :DisableSecretVersion,
      Google.Cloud.Secretmanager.V1beta2.DisableSecretVersionRequest,
      Google.Cloud.Secretmanager.V1beta2.SecretVersion

  rpc :EnableSecretVersion,
      Google.Cloud.Secretmanager.V1beta2.EnableSecretVersionRequest,
      Google.Cloud.Secretmanager.V1beta2.SecretVersion

  rpc :DestroySecretVersion,
      Google.Cloud.Secretmanager.V1beta2.DestroySecretVersionRequest,
      Google.Cloud.Secretmanager.V1beta2.SecretVersion

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse
end

defmodule Google.Cloud.Secretmanager.V1beta2.SecretManagerService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Secretmanager.V1beta2.SecretManagerService.Service
end
