defmodule Google.Iam.V3.CreatePolicyBindingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :policy_binding_id, 2, type: :string, json_name: "policyBindingId", deprecated: false

  field :policy_binding, 3,
    type: Google.Iam.V3.PolicyBinding,
    json_name: "policyBinding",
    deprecated: false

  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Iam.V3.GetPolicyBindingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Iam.V3.UpdatePolicyBindingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :policy_binding, 1,
    type: Google.Iam.V3.PolicyBinding,
    json_name: "policyBinding",
    deprecated: false

  field :validate_only, 2, type: :bool, json_name: "validateOnly", deprecated: false

  field :update_mask, 3,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Iam.V3.DeletePolicyBindingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string, deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Iam.V3.ListPolicyBindingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Iam.V3.ListPolicyBindingsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :policy_bindings, 1,
    repeated: true,
    type: Google.Iam.V3.PolicyBinding,
    json_name: "policyBindings"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken", deprecated: false
end

defmodule Google.Iam.V3.SearchTargetPolicyBindingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :target, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :parent, 5, type: :string, deprecated: false
end

defmodule Google.Iam.V3.SearchTargetPolicyBindingsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :policy_bindings, 1,
    repeated: true,
    type: Google.Iam.V3.PolicyBinding,
    json_name: "policyBindings"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken", deprecated: false
end

defmodule Google.Iam.V3.PolicyBindings.Service do
  @moduledoc false

  use GRPC.Service, name: "google.iam.v3.PolicyBindings", protoc_gen_elixir_version: "0.14.1"

  rpc :CreatePolicyBinding, Google.Iam.V3.CreatePolicyBindingRequest, Google.Longrunning.Operation

  rpc :GetPolicyBinding, Google.Iam.V3.GetPolicyBindingRequest, Google.Iam.V3.PolicyBinding

  rpc :UpdatePolicyBinding, Google.Iam.V3.UpdatePolicyBindingRequest, Google.Longrunning.Operation

  rpc :DeletePolicyBinding, Google.Iam.V3.DeletePolicyBindingRequest, Google.Longrunning.Operation

  rpc :ListPolicyBindings,
      Google.Iam.V3.ListPolicyBindingsRequest,
      Google.Iam.V3.ListPolicyBindingsResponse

  rpc :SearchTargetPolicyBindings,
      Google.Iam.V3.SearchTargetPolicyBindingsRequest,
      Google.Iam.V3.SearchTargetPolicyBindingsResponse
end

defmodule Google.Iam.V3.PolicyBindings.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Iam.V3.PolicyBindings.Service
end
