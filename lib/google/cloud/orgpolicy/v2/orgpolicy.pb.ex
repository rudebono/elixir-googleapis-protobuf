defmodule Google.Cloud.Orgpolicy.V2.Policy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          spec: Google.Cloud.Orgpolicy.V2.PolicySpec.t() | nil,
          alternate: Google.Cloud.Orgpolicy.V2.AlternatePolicySpec.t() | nil
        }

  defstruct [:name, :spec, :alternate]

  field :name, 1, type: :string
  field :spec, 2, type: Google.Cloud.Orgpolicy.V2.PolicySpec
  field :alternate, 3, type: Google.Cloud.Orgpolicy.V2.AlternatePolicySpec
end

defmodule Google.Cloud.Orgpolicy.V2.AlternatePolicySpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          launch: String.t(),
          spec: Google.Cloud.Orgpolicy.V2.PolicySpec.t() | nil
        }

  defstruct [:launch, :spec]

  field :launch, 1, type: :string
  field :spec, 2, type: Google.Cloud.Orgpolicy.V2.PolicySpec
end

defmodule Google.Cloud.Orgpolicy.V2.PolicySpec.PolicyRule.StringValues do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          allowed_values: [String.t()],
          denied_values: [String.t()]
        }

  defstruct [:allowed_values, :denied_values]

  field :allowed_values, 1, repeated: true, type: :string
  field :denied_values, 2, repeated: true, type: :string
end

defmodule Google.Cloud.Orgpolicy.V2.PolicySpec.PolicyRule do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kind: {atom, any},
          condition: Google.Type.Expr.t() | nil
        }

  defstruct [:kind, :condition]

  oneof :kind, 0
  field :values, 1, type: Google.Cloud.Orgpolicy.V2.PolicySpec.PolicyRule.StringValues, oneof: 0
  field :allow_all, 2, type: :bool, oneof: 0
  field :deny_all, 3, type: :bool, oneof: 0
  field :enforce, 4, type: :bool, oneof: 0
  field :condition, 5, type: Google.Type.Expr
end

defmodule Google.Cloud.Orgpolicy.V2.PolicySpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          etag: String.t(),
          update_time: Google.Protobuf.Timestamp.t() | nil,
          rules: [Google.Cloud.Orgpolicy.V2.PolicySpec.PolicyRule.t()],
          inherit_from_parent: boolean,
          reset: boolean
        }

  defstruct [:etag, :update_time, :rules, :inherit_from_parent, :reset]

  field :etag, 1, type: :string
  field :update_time, 2, type: Google.Protobuf.Timestamp
  field :rules, 3, repeated: true, type: Google.Cloud.Orgpolicy.V2.PolicySpec.PolicyRule
  field :inherit_from_parent, 4, type: :bool
  field :reset, 5, type: :bool
end

defmodule Google.Cloud.Orgpolicy.V2.ListConstraintsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Cloud.Orgpolicy.V2.ListConstraintsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          constraints: [Google.Cloud.Orgpolicy.V2.Constraint.t()],
          next_page_token: String.t()
        }

  defstruct [:constraints, :next_page_token]

  field :constraints, 1, repeated: true, type: Google.Cloud.Orgpolicy.V2.Constraint
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Orgpolicy.V2.ListPoliciesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Cloud.Orgpolicy.V2.ListPoliciesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          policies: [Google.Cloud.Orgpolicy.V2.Policy.t()],
          next_page_token: String.t()
        }

  defstruct [:policies, :next_page_token]

  field :policies, 1, repeated: true, type: Google.Cloud.Orgpolicy.V2.Policy
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Orgpolicy.V2.GetPolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Orgpolicy.V2.GetEffectivePolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Orgpolicy.V2.CreatePolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          policy: Google.Cloud.Orgpolicy.V2.Policy.t() | nil
        }

  defstruct [:parent, :policy]

  field :parent, 1, type: :string
  field :policy, 3, type: Google.Cloud.Orgpolicy.V2.Policy
end

defmodule Google.Cloud.Orgpolicy.V2.UpdatePolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          policy: Google.Cloud.Orgpolicy.V2.Policy.t() | nil
        }

  defstruct [:policy]

  field :policy, 1, type: Google.Cloud.Orgpolicy.V2.Policy
end

defmodule Google.Cloud.Orgpolicy.V2.DeletePolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Orgpolicy.V2.OrgPolicy.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.orgpolicy.v2.OrgPolicy"

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
