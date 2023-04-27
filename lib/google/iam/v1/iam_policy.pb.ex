defmodule Google.Iam.V1.SetIamPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource, 1, type: :string, deprecated: false
  field :policy, 2, type: Google.Iam.V1.Policy, deprecated: false
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Iam.V1.GetIamPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource, 1, type: :string, deprecated: false
  field :options, 2, type: Google.Iam.V1.GetPolicyOptions
end

defmodule Google.Iam.V1.TestIamPermissionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource, 1, type: :string, deprecated: false
  field :permissions, 2, repeated: true, type: :string, deprecated: false
end

defmodule Google.Iam.V1.TestIamPermissionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :permissions, 1, repeated: true, type: :string
end

defmodule Google.Iam.V1.IAMPolicy.Service do
  @moduledoc false

  use GRPC.Service, name: "google.iam.v1.IAMPolicy", protoc_gen_elixir_version: "0.12.0"

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse
end

defmodule Google.Iam.V1.IAMPolicy.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Iam.V1.IAMPolicy.Service
end