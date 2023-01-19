defmodule Google.Cloud.Orgpolicy.V2.Policy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :spec, 2, type: Google.Cloud.Orgpolicy.V2.PolicySpec
  field :alternate, 3, type: Google.Cloud.Orgpolicy.V2.AlternatePolicySpec, deprecated: true
  field :dry_run_spec, 4, type: Google.Cloud.Orgpolicy.V2.PolicySpec, json_name: "dryRunSpec"
end

defmodule Google.Cloud.Orgpolicy.V2.AlternatePolicySpec do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :launch, 1, type: :string
  field :spec, 2, type: Google.Cloud.Orgpolicy.V2.PolicySpec
end

defmodule Google.Cloud.Orgpolicy.V2.PolicySpec.PolicyRule.StringValues do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :allowed_values, 1, repeated: true, type: :string, json_name: "allowedValues"
  field :denied_values, 2, repeated: true, type: :string, json_name: "deniedValues"
end

defmodule Google.Cloud.Orgpolicy.V2.PolicySpec.PolicyRule do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :kind, 0

  field :values, 1, type: Google.Cloud.Orgpolicy.V2.PolicySpec.PolicyRule.StringValues, oneof: 0
  field :allow_all, 2, type: :bool, json_name: "allowAll", oneof: 0
  field :deny_all, 3, type: :bool, json_name: "denyAll", oneof: 0
  field :enforce, 4, type: :bool, oneof: 0
  field :condition, 5, type: Google.Type.Expr
end

defmodule Google.Cloud.Orgpolicy.V2.PolicySpec do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :etag, 1, type: :string

  field :update_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :rules, 3, repeated: true, type: Google.Cloud.Orgpolicy.V2.PolicySpec.PolicyRule
  field :inherit_from_parent, 4, type: :bool, json_name: "inheritFromParent"
  field :reset, 5, type: :bool
end

defmodule Google.Cloud.Orgpolicy.V2.ListConstraintsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Orgpolicy.V2.ListConstraintsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :constraints, 1, repeated: true, type: Google.Cloud.Orgpolicy.V2.Constraint
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Orgpolicy.V2.ListPoliciesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Orgpolicy.V2.ListPoliciesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :policies, 1, repeated: true, type: Google.Cloud.Orgpolicy.V2.Policy
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Orgpolicy.V2.GetPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Orgpolicy.V2.GetEffectivePolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Orgpolicy.V2.CreatePolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :policy, 3, type: Google.Cloud.Orgpolicy.V2.Policy, deprecated: false
end

defmodule Google.Cloud.Orgpolicy.V2.UpdatePolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :policy, 1, type: Google.Cloud.Orgpolicy.V2.Policy, deprecated: false
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Orgpolicy.V2.DeletePolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Orgpolicy.V2.OrgPolicy.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.orgpolicy.v2.OrgPolicy",
    protoc_gen_elixir_version: "0.11.0"

  rpc :ListConstraints,
      Google.Cloud.Orgpolicy.V2.ListConstraintsRequest,
      Google.Cloud.Orgpolicy.V2.ListConstraintsResponse

  rpc :ListPolicies,
      Google.Cloud.Orgpolicy.V2.ListPoliciesRequest,
      Google.Cloud.Orgpolicy.V2.ListPoliciesResponse

  rpc :GetPolicy, Google.Cloud.Orgpolicy.V2.GetPolicyRequest, Google.Cloud.Orgpolicy.V2.Policy

  rpc :GetEffectivePolicy,
      Google.Cloud.Orgpolicy.V2.GetEffectivePolicyRequest,
      Google.Cloud.Orgpolicy.V2.Policy

  rpc :CreatePolicy,
      Google.Cloud.Orgpolicy.V2.CreatePolicyRequest,
      Google.Cloud.Orgpolicy.V2.Policy

  rpc :UpdatePolicy,
      Google.Cloud.Orgpolicy.V2.UpdatePolicyRequest,
      Google.Cloud.Orgpolicy.V2.Policy

  rpc :DeletePolicy, Google.Cloud.Orgpolicy.V2.DeletePolicyRequest, Google.Protobuf.Empty
end

defmodule Google.Cloud.Orgpolicy.V2.OrgPolicy.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Orgpolicy.V2.OrgPolicy.Service
end