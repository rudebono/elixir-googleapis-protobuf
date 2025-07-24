defmodule Google.Iam.V2beta.Policy.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Iam.V2beta.Policy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :uid, 2, type: :string, deprecated: false
  field :kind, 3, type: :string, deprecated: false
  field :display_name, 4, type: :string, json_name: "displayName"

  field :annotations, 5,
    repeated: true,
    type: Google.Iam.V2beta.Policy.AnnotationsEntry,
    map: true

  field :etag, 6, type: :string

  field :create_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :delete_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "deleteTime",
    deprecated: false

  field :rules, 10, repeated: true, type: Google.Iam.V2beta.PolicyRule
end

defmodule Google.Iam.V2beta.PolicyRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :kind, 0

  field :deny_rule, 2, type: Google.Iam.V2beta.DenyRule, json_name: "denyRule", oneof: 0
  field :description, 1, type: :string
end

defmodule Google.Iam.V2beta.ListPoliciesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Iam.V2beta.ListPoliciesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :policies, 1, repeated: true, type: Google.Iam.V2beta.Policy
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Iam.V2beta.GetPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Iam.V2beta.CreatePolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :policy, 2, type: Google.Iam.V2beta.Policy, deprecated: false
  field :policy_id, 3, type: :string, json_name: "policyId"
end

defmodule Google.Iam.V2beta.UpdatePolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :policy, 1, type: Google.Iam.V2beta.Policy, deprecated: false
end

defmodule Google.Iam.V2beta.DeletePolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string, deprecated: false
end

defmodule Google.Iam.V2beta.PolicyOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
end

defmodule Google.Iam.V2beta.Policies.Service do
  @moduledoc false

  use GRPC.Service, name: "google.iam.v2beta.Policies", protoc_gen_elixir_version: "0.15.0"

  rpc :ListPolicies, Google.Iam.V2beta.ListPoliciesRequest, Google.Iam.V2beta.ListPoliciesResponse

  rpc :GetPolicy, Google.Iam.V2beta.GetPolicyRequest, Google.Iam.V2beta.Policy

  rpc :CreatePolicy, Google.Iam.V2beta.CreatePolicyRequest, Google.Longrunning.Operation

  rpc :UpdatePolicy, Google.Iam.V2beta.UpdatePolicyRequest, Google.Longrunning.Operation

  rpc :DeletePolicy, Google.Iam.V2beta.DeletePolicyRequest, Google.Longrunning.Operation
end

defmodule Google.Iam.V2beta.Policies.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Iam.V2beta.Policies.Service
end
