defmodule Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisResult.AnalysisState do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          code: Google.Rpc.Code.t(),
          cause: String.t()
        }

  defstruct [:code, :cause]

  field :code, 1, type: Google.Rpc.Code, enum: true
  field :cause, 2, type: :string
end

defmodule Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisResult.Resource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          full_resource_name: String.t(),
          analysis_state:
            Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisResult.AnalysisState.t() | nil
        }

  defstruct [:full_resource_name, :analysis_state]

  field :full_resource_name, 1, type: :string

  field :analysis_state, 2,
    type: Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisResult.AnalysisState
end

defmodule Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisResult.Access do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          oneof_access: {atom, any},
          analysis_state:
            Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisResult.AnalysisState.t() | nil
        }

  defstruct [:oneof_access, :analysis_state]

  oneof :oneof_access, 0
  field :role, 1, type: :string, oneof: 0
  field :permission, 2, type: :string, oneof: 0

  field :analysis_state, 3,
    type: Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisResult.AnalysisState
end

defmodule Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisResult.Edge do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source_node: String.t(),
          target_node: String.t()
        }

  defstruct [:source_node, :target_node]

  field :source_node, 1, type: :string
  field :target_node, 2, type: :string
end

defmodule Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisResult.Identity do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          analysis_state:
            Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisResult.AnalysisState.t() | nil
        }

  defstruct [:name, :analysis_state]

  field :name, 1, type: :string

  field :analysis_state, 2,
    type: Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisResult.AnalysisState
end

defmodule Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisResult.AccessControlList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resources: [Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisResult.Resource.t()],
          accesses: [Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisResult.Access.t()],
          resource_edges: [Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisResult.Edge.t()]
        }

  defstruct [:resources, :accesses, :resource_edges]

  field :resources, 1,
    repeated: true,
    type: Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisResult.Resource

  field :accesses, 2,
    repeated: true,
    type: Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisResult.Access

  field :resource_edges, 3,
    repeated: true,
    type: Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisResult.Edge
end

defmodule Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisResult.IdentityList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          identities: [Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisResult.Identity.t()],
          group_edges: [Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisResult.Edge.t()]
        }

  defstruct [:identities, :group_edges]

  field :identities, 1,
    repeated: true,
    type: Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisResult.Identity

  field :group_edges, 2,
    repeated: true,
    type: Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisResult.Edge
end

defmodule Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          attached_resource_full_name: String.t(),
          iam_binding: Google.Iam.V1.Binding.t() | nil,
          access_control_lists: [
            Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisResult.AccessControlList.t()
          ],
          identity_list:
            Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisResult.IdentityList.t() | nil,
          fully_explored: boolean
        }

  defstruct [
    :attached_resource_full_name,
    :iam_binding,
    :access_control_lists,
    :identity_list,
    :fully_explored
  ]

  field :attached_resource_full_name, 1, type: :string
  field :iam_binding, 2, type: Google.Iam.V1.Binding

  field :access_control_lists, 3,
    repeated: true,
    type: Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisResult.AccessControlList

  field :identity_list, 4, type: Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisResult.IdentityList
  field :fully_explored, 5, type: :bool
end
