defmodule Google.Cloud.Policytroubleshooter.V1.AccessState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :ACCESS_STATE_UNSPECIFIED
          | :GRANTED
          | :NOT_GRANTED
          | :UNKNOWN_CONDITIONAL
          | :UNKNOWN_INFO_DENIED

  field :ACCESS_STATE_UNSPECIFIED, 0

  field :GRANTED, 1

  field :NOT_GRANTED, 2

  field :UNKNOWN_CONDITIONAL, 3

  field :UNKNOWN_INFO_DENIED, 4
end

defmodule Google.Cloud.Policytroubleshooter.V1.HeuristicRelevance do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :HEURISTIC_RELEVANCE_UNSPECIFIED | :NORMAL | :HIGH

  field :HEURISTIC_RELEVANCE_UNSPECIFIED, 0

  field :NORMAL, 1

  field :HIGH, 2
end

defmodule Google.Cloud.Policytroubleshooter.V1.BindingExplanation.RolePermission do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :ROLE_PERMISSION_UNSPECIFIED
          | :ROLE_PERMISSION_INCLUDED
          | :ROLE_PERMISSION_NOT_INCLUDED
          | :ROLE_PERMISSION_UNKNOWN_INFO_DENIED

  field :ROLE_PERMISSION_UNSPECIFIED, 0

  field :ROLE_PERMISSION_INCLUDED, 1

  field :ROLE_PERMISSION_NOT_INCLUDED, 2

  field :ROLE_PERMISSION_UNKNOWN_INFO_DENIED, 3
end

defmodule Google.Cloud.Policytroubleshooter.V1.BindingExplanation.Membership do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :MEMBERSHIP_UNSPECIFIED
          | :MEMBERSHIP_INCLUDED
          | :MEMBERSHIP_NOT_INCLUDED
          | :MEMBERSHIP_UNKNOWN_INFO_DENIED
          | :MEMBERSHIP_UNKNOWN_UNSUPPORTED

  field :MEMBERSHIP_UNSPECIFIED, 0

  field :MEMBERSHIP_INCLUDED, 1

  field :MEMBERSHIP_NOT_INCLUDED, 2

  field :MEMBERSHIP_UNKNOWN_INFO_DENIED, 3

  field :MEMBERSHIP_UNKNOWN_UNSUPPORTED, 4
end

defmodule Google.Cloud.Policytroubleshooter.V1.AccessTuple do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          principal: String.t(),
          full_resource_name: String.t(),
          permission: String.t()
        }

  defstruct [:principal, :full_resource_name, :permission]

  field :principal, 1, type: :string
  field :full_resource_name, 2, type: :string
  field :permission, 3, type: :string
end

defmodule Google.Cloud.Policytroubleshooter.V1.ExplainedPolicy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          access: Google.Cloud.Policytroubleshooter.V1.AccessState.t(),
          full_resource_name: String.t(),
          policy: Google.Iam.V1.Policy.t() | nil,
          binding_explanations: [Google.Cloud.Policytroubleshooter.V1.BindingExplanation.t()],
          relevance: Google.Cloud.Policytroubleshooter.V1.HeuristicRelevance.t()
        }

  defstruct [:access, :full_resource_name, :policy, :binding_explanations, :relevance]

  field :access, 1, type: Google.Cloud.Policytroubleshooter.V1.AccessState, enum: true
  field :full_resource_name, 2, type: :string
  field :policy, 3, type: Google.Iam.V1.Policy

  field :binding_explanations, 4,
    repeated: true,
    type: Google.Cloud.Policytroubleshooter.V1.BindingExplanation

  field :relevance, 5, type: Google.Cloud.Policytroubleshooter.V1.HeuristicRelevance, enum: true
end

defmodule Google.Cloud.Policytroubleshooter.V1.BindingExplanation.AnnotatedMembership do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          membership: Google.Cloud.Policytroubleshooter.V1.BindingExplanation.Membership.t(),
          relevance: Google.Cloud.Policytroubleshooter.V1.HeuristicRelevance.t()
        }

  defstruct [:membership, :relevance]

  field :membership, 1,
    type: Google.Cloud.Policytroubleshooter.V1.BindingExplanation.Membership,
    enum: true

  field :relevance, 2, type: Google.Cloud.Policytroubleshooter.V1.HeuristicRelevance, enum: true
end

defmodule Google.Cloud.Policytroubleshooter.V1.BindingExplanation.MembershipsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value:
            Google.Cloud.Policytroubleshooter.V1.BindingExplanation.AnnotatedMembership.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string

  field :value, 2,
    type: Google.Cloud.Policytroubleshooter.V1.BindingExplanation.AnnotatedMembership
end

defmodule Google.Cloud.Policytroubleshooter.V1.BindingExplanation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          access: Google.Cloud.Policytroubleshooter.V1.AccessState.t(),
          role: String.t(),
          role_permission:
            Google.Cloud.Policytroubleshooter.V1.BindingExplanation.RolePermission.t(),
          role_permission_relevance: Google.Cloud.Policytroubleshooter.V1.HeuristicRelevance.t(),
          memberships: %{
            String.t() =>
              Google.Cloud.Policytroubleshooter.V1.BindingExplanation.AnnotatedMembership.t()
              | nil
          },
          relevance: Google.Cloud.Policytroubleshooter.V1.HeuristicRelevance.t(),
          condition: Google.Type.Expr.t() | nil
        }

  defstruct [
    :access,
    :role,
    :role_permission,
    :role_permission_relevance,
    :memberships,
    :relevance,
    :condition
  ]

  field :access, 1, type: Google.Cloud.Policytroubleshooter.V1.AccessState, enum: true
  field :role, 2, type: :string

  field :role_permission, 3,
    type: Google.Cloud.Policytroubleshooter.V1.BindingExplanation.RolePermission,
    enum: true

  field :role_permission_relevance, 4,
    type: Google.Cloud.Policytroubleshooter.V1.HeuristicRelevance,
    enum: true

  field :memberships, 5,
    repeated: true,
    type: Google.Cloud.Policytroubleshooter.V1.BindingExplanation.MembershipsEntry,
    map: true

  field :relevance, 6, type: Google.Cloud.Policytroubleshooter.V1.HeuristicRelevance, enum: true
  field :condition, 7, type: Google.Type.Expr
end
