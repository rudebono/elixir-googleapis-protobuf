defmodule Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisResult.AnalysisState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :code, 1, type: Google.Rpc.Code, enum: true
  field :cause, 2, type: :string
end
defmodule Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisResult.Resource do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :full_resource_name, 1, type: :string, json_name: "fullResourceName"

  field :analysis_state, 2,
    type: Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisResult.AnalysisState,
    json_name: "analysisState"
end
defmodule Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisResult.Access do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :oneof_access, 0

  field :role, 1, type: :string, oneof: 0
  field :permission, 2, type: :string, oneof: 0

  field :analysis_state, 3,
    type: Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisResult.AnalysisState,
    json_name: "analysisState"
end
defmodule Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisResult.Edge do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :source_node, 1, type: :string, json_name: "sourceNode"
  field :target_node, 2, type: :string, json_name: "targetNode"
end
defmodule Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisResult.Identity do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string

  field :analysis_state, 2,
    type: Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisResult.AnalysisState,
    json_name: "analysisState"
end
defmodule Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisResult.AccessControlList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resources, 1,
    repeated: true,
    type: Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisResult.Resource

  field :accesses, 2,
    repeated: true,
    type: Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisResult.Access

  field :resource_edges, 3,
    repeated: true,
    type: Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisResult.Edge,
    json_name: "resourceEdges"
end
defmodule Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisResult.IdentityList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :identities, 1,
    repeated: true,
    type: Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisResult.Identity

  field :group_edges, 2,
    repeated: true,
    type: Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisResult.Edge,
    json_name: "groupEdges"
end
defmodule Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :attached_resource_full_name, 1, type: :string, json_name: "attachedResourceFullName"
  field :iam_binding, 2, type: Google.Iam.V1.Binding, json_name: "iamBinding"

  field :access_control_lists, 3,
    repeated: true,
    type: Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisResult.AccessControlList,
    json_name: "accessControlLists"

  field :identity_list, 4,
    type: Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisResult.IdentityList,
    json_name: "identityList"

  field :fully_explored, 5, type: :bool, json_name: "fullyExplored"
end
