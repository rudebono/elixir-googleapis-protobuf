defmodule Google.Cloud.Secrets.V1beta1.ListSecretsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Secrets.V1beta1.ListSecretsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :secrets, 1, repeated: true, type: Google.Cloud.Secrets.V1beta1.Secret
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Google.Cloud.Secrets.V1beta1.CreateSecretRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :secret_id, 2, type: :string, json_name: "secretId", deprecated: false
  field :secret, 3, type: Google.Cloud.Secrets.V1beta1.Secret, deprecated: false
end

defmodule Google.Cloud.Secrets.V1beta1.AddSecretVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :payload, 2, type: Google.Cloud.Secrets.V1beta1.SecretPayload, deprecated: false
end

defmodule Google.Cloud.Secrets.V1beta1.GetSecretRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Secrets.V1beta1.ListSecretVersionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Secrets.V1beta1.ListSecretVersionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :versions, 1, repeated: true, type: Google.Cloud.Secrets.V1beta1.SecretVersion
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Google.Cloud.Secrets.V1beta1.GetSecretVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Secrets.V1beta1.UpdateSecretRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :secret, 1, type: Google.Cloud.Secrets.V1beta1.Secret, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Secrets.V1beta1.AccessSecretVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Secrets.V1beta1.AccessSecretVersionResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :payload, 2, type: Google.Cloud.Secrets.V1beta1.SecretPayload
end

defmodule Google.Cloud.Secrets.V1beta1.DeleteSecretRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Secrets.V1beta1.DisableSecretVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Secrets.V1beta1.EnableSecretVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Secrets.V1beta1.DestroySecretVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Secrets.V1beta1.SecretManagerService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.secrets.v1beta1.SecretManagerService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListSecrets,
      Google.Cloud.Secrets.V1beta1.ListSecretsRequest,
      Google.Cloud.Secrets.V1beta1.ListSecretsResponse

  rpc :CreateSecret,
      Google.Cloud.Secrets.V1beta1.CreateSecretRequest,
      Google.Cloud.Secrets.V1beta1.Secret

  rpc :AddSecretVersion,
      Google.Cloud.Secrets.V1beta1.AddSecretVersionRequest,
      Google.Cloud.Secrets.V1beta1.SecretVersion

  rpc :GetSecret,
      Google.Cloud.Secrets.V1beta1.GetSecretRequest,
      Google.Cloud.Secrets.V1beta1.Secret

  rpc :UpdateSecret,
      Google.Cloud.Secrets.V1beta1.UpdateSecretRequest,
      Google.Cloud.Secrets.V1beta1.Secret

  rpc :DeleteSecret, Google.Cloud.Secrets.V1beta1.DeleteSecretRequest, Google.Protobuf.Empty

  rpc :ListSecretVersions,
      Google.Cloud.Secrets.V1beta1.ListSecretVersionsRequest,
      Google.Cloud.Secrets.V1beta1.ListSecretVersionsResponse

  rpc :GetSecretVersion,
      Google.Cloud.Secrets.V1beta1.GetSecretVersionRequest,
      Google.Cloud.Secrets.V1beta1.SecretVersion

  rpc :AccessSecretVersion,
      Google.Cloud.Secrets.V1beta1.AccessSecretVersionRequest,
      Google.Cloud.Secrets.V1beta1.AccessSecretVersionResponse

  rpc :DisableSecretVersion,
      Google.Cloud.Secrets.V1beta1.DisableSecretVersionRequest,
      Google.Cloud.Secrets.V1beta1.SecretVersion

  rpc :EnableSecretVersion,
      Google.Cloud.Secrets.V1beta1.EnableSecretVersionRequest,
      Google.Cloud.Secrets.V1beta1.SecretVersion

  rpc :DestroySecretVersion,
      Google.Cloud.Secrets.V1beta1.DestroySecretVersionRequest,
      Google.Cloud.Secrets.V1beta1.SecretVersion

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse
end

defmodule Google.Cloud.Secrets.V1beta1.SecretManagerService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Secrets.V1beta1.SecretManagerService.Service
end
