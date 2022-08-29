defmodule Google.Iam.V2.Policy.AnnotationsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Iam.V2.Policy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :uid, 2, type: :string, deprecated: false
  field :kind, 3, type: :string, deprecated: false
  field :display_name, 4, type: :string, json_name: "displayName"
  field :annotations, 5, repeated: true, type: Google.Iam.V2.Policy.AnnotationsEntry, map: true
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

  field :rules, 10, repeated: true, type: Google.Iam.V2.PolicyRule
  field :managing_authority, 11, type: :string, json_name: "managingAuthority", deprecated: false
end

defmodule Google.Iam.V2.PolicyRule do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :kind, 0

  field :deny_rule, 2, type: Google.Iam.V2.DenyRule, json_name: "denyRule", oneof: 0
  field :description, 1, type: :string
end

defmodule Google.Iam.V2.ListPoliciesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Iam.V2.ListPoliciesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :policies, 1, repeated: true, type: Google.Iam.V2.Policy
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Iam.V2.GetPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Iam.V2.CreatePolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :policy, 2, type: Google.Iam.V2.Policy, deprecated: false
  field :policy_id, 3, type: :string, json_name: "policyId"
end

defmodule Google.Iam.V2.UpdatePolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :policy, 1, type: Google.Iam.V2.Policy, deprecated: false
end

defmodule Google.Iam.V2.DeletePolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string, deprecated: false
end

defmodule Google.Iam.V2.ListApplicablePoliciesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :attachment_point, 1, type: :string, json_name: "attachmentPoint", deprecated: false
  field :filter, 2, type: :string
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :page_size, 4, type: :int32, json_name: "pageSize"
end

defmodule Google.Iam.V2.ListApplicablePoliciesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :policies, 1, repeated: true, type: Google.Iam.V2.Policy
  field :inaccessible, 2, repeated: true, type: :string
  field :next_page_token, 3, type: :string, json_name: "nextPageToken"
end

defmodule Google.Iam.V2.PolicyOperationMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
end

defmodule Google.Iam.V2.Policies.Service do
  @moduledoc false
  use GRPC.Service, name: "google.iam.v2.Policies", protoc_gen_elixir_version: "0.11.0"

  rpc :ListPolicies, Google.Iam.V2.ListPoliciesRequest, Google.Iam.V2.ListPoliciesResponse

  rpc :GetPolicy, Google.Iam.V2.GetPolicyRequest, Google.Iam.V2.Policy

  rpc :CreatePolicy, Google.Iam.V2.CreatePolicyRequest, Google.Longrunning.Operation

  rpc :UpdatePolicy, Google.Iam.V2.UpdatePolicyRequest, Google.Longrunning.Operation

  rpc :DeletePolicy, Google.Iam.V2.DeletePolicyRequest, Google.Longrunning.Operation

  rpc :ListApplicablePolicies,
      Google.Iam.V2.ListApplicablePoliciesRequest,
      Google.Iam.V2.ListApplicablePoliciesResponse
end

defmodule Google.Iam.V2.Policies.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Iam.V2.Policies.Service
end