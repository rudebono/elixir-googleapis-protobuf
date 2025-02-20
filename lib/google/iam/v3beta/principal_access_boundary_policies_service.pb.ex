defmodule Google.Iam.V3beta.CreatePrincipalAccessBoundaryPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :principal_access_boundary_policy_id, 2,
    type: :string,
    json_name: "principalAccessBoundaryPolicyId",
    deprecated: false

  field :principal_access_boundary_policy, 3,
    type: Google.Iam.V3beta.PrincipalAccessBoundaryPolicy,
    json_name: "principalAccessBoundaryPolicy",
    deprecated: false

  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Iam.V3beta.GetPrincipalAccessBoundaryPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Iam.V3beta.UpdatePrincipalAccessBoundaryPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :principal_access_boundary_policy, 1,
    type: Google.Iam.V3beta.PrincipalAccessBoundaryPolicy,
    json_name: "principalAccessBoundaryPolicy",
    deprecated: false

  field :validate_only, 2, type: :bool, json_name: "validateOnly", deprecated: false

  field :update_mask, 3,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Iam.V3beta.DeletePrincipalAccessBoundaryPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string, deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
  field :force, 4, type: :bool, deprecated: false
end

defmodule Google.Iam.V3beta.ListPrincipalAccessBoundaryPoliciesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Iam.V3beta.ListPrincipalAccessBoundaryPoliciesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :principal_access_boundary_policies, 1,
    repeated: true,
    type: Google.Iam.V3beta.PrincipalAccessBoundaryPolicy,
    json_name: "principalAccessBoundaryPolicies"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken", deprecated: false
end

defmodule Google.Iam.V3beta.SearchPrincipalAccessBoundaryPolicyBindingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Iam.V3beta.SearchPrincipalAccessBoundaryPolicyBindingsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :policy_bindings, 1,
    repeated: true,
    type: Google.Iam.V3beta.PolicyBinding,
    json_name: "policyBindings"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken", deprecated: false
end

defmodule Google.Iam.V3beta.PrincipalAccessBoundaryPolicies.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.iam.v3beta.PrincipalAccessBoundaryPolicies",
    protoc_gen_elixir_version: "0.14.1"

  rpc :CreatePrincipalAccessBoundaryPolicy,
      Google.Iam.V3beta.CreatePrincipalAccessBoundaryPolicyRequest,
      Google.Longrunning.Operation

  rpc :GetPrincipalAccessBoundaryPolicy,
      Google.Iam.V3beta.GetPrincipalAccessBoundaryPolicyRequest,
      Google.Iam.V3beta.PrincipalAccessBoundaryPolicy

  rpc :UpdatePrincipalAccessBoundaryPolicy,
      Google.Iam.V3beta.UpdatePrincipalAccessBoundaryPolicyRequest,
      Google.Longrunning.Operation

  rpc :DeletePrincipalAccessBoundaryPolicy,
      Google.Iam.V3beta.DeletePrincipalAccessBoundaryPolicyRequest,
      Google.Longrunning.Operation

  rpc :ListPrincipalAccessBoundaryPolicies,
      Google.Iam.V3beta.ListPrincipalAccessBoundaryPoliciesRequest,
      Google.Iam.V3beta.ListPrincipalAccessBoundaryPoliciesResponse

  rpc :SearchPrincipalAccessBoundaryPolicyBindings,
      Google.Iam.V3beta.SearchPrincipalAccessBoundaryPolicyBindingsRequest,
      Google.Iam.V3beta.SearchPrincipalAccessBoundaryPolicyBindingsResponse
end

defmodule Google.Iam.V3beta.PrincipalAccessBoundaryPolicies.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Iam.V3beta.PrincipalAccessBoundaryPolicies.Service
end
