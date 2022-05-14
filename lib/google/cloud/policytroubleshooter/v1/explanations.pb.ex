defmodule Google.Cloud.Policytroubleshooter.V1.AccessState do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :ACCESS_STATE_UNSPECIFIED, 0
  field :GRANTED, 1
  field :NOT_GRANTED, 2
  field :UNKNOWN_CONDITIONAL, 3
  field :UNKNOWN_INFO_DENIED, 4
end
defmodule Google.Cloud.Policytroubleshooter.V1.HeuristicRelevance do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :HEURISTIC_RELEVANCE_UNSPECIFIED, 0
  field :NORMAL, 1
  field :HIGH, 2
end
defmodule Google.Cloud.Policytroubleshooter.V1.BindingExplanation.RolePermission do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :ROLE_PERMISSION_UNSPECIFIED, 0
  field :ROLE_PERMISSION_INCLUDED, 1
  field :ROLE_PERMISSION_NOT_INCLUDED, 2
  field :ROLE_PERMISSION_UNKNOWN_INFO_DENIED, 3
end
defmodule Google.Cloud.Policytroubleshooter.V1.BindingExplanation.Membership do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :MEMBERSHIP_UNSPECIFIED, 0
  field :MEMBERSHIP_INCLUDED, 1
  field :MEMBERSHIP_NOT_INCLUDED, 2
  field :MEMBERSHIP_UNKNOWN_INFO_DENIED, 3
  field :MEMBERSHIP_UNKNOWN_UNSUPPORTED, 4
end
defmodule Google.Cloud.Policytroubleshooter.V1.AccessTuple do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :principal, 1, type: :string, deprecated: false
  field :full_resource_name, 2, type: :string, json_name: "fullResourceName", deprecated: false
  field :permission, 3, type: :string, deprecated: false
end
defmodule Google.Cloud.Policytroubleshooter.V1.ExplainedPolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :access, 1, type: Google.Cloud.Policytroubleshooter.V1.AccessState, enum: true
  field :full_resource_name, 2, type: :string, json_name: "fullResourceName"
  field :policy, 3, type: Google.Iam.V1.Policy

  field :binding_explanations, 4,
    repeated: true,
    type: Google.Cloud.Policytroubleshooter.V1.BindingExplanation,
    json_name: "bindingExplanations"

  field :relevance, 5, type: Google.Cloud.Policytroubleshooter.V1.HeuristicRelevance, enum: true
end
defmodule Google.Cloud.Policytroubleshooter.V1.BindingExplanation.AnnotatedMembership do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :membership, 1,
    type: Google.Cloud.Policytroubleshooter.V1.BindingExplanation.Membership,
    enum: true

  field :relevance, 2, type: Google.Cloud.Policytroubleshooter.V1.HeuristicRelevance, enum: true
end
defmodule Google.Cloud.Policytroubleshooter.V1.BindingExplanation.MembershipsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string

  field :value, 2,
    type: Google.Cloud.Policytroubleshooter.V1.BindingExplanation.AnnotatedMembership
end
defmodule Google.Cloud.Policytroubleshooter.V1.BindingExplanation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :access, 1,
    type: Google.Cloud.Policytroubleshooter.V1.AccessState,
    enum: true,
    deprecated: false

  field :role, 2, type: :string

  field :role_permission, 3,
    type: Google.Cloud.Policytroubleshooter.V1.BindingExplanation.RolePermission,
    json_name: "rolePermission",
    enum: true

  field :role_permission_relevance, 4,
    type: Google.Cloud.Policytroubleshooter.V1.HeuristicRelevance,
    json_name: "rolePermissionRelevance",
    enum: true

  field :memberships, 5,
    repeated: true,
    type: Google.Cloud.Policytroubleshooter.V1.BindingExplanation.MembershipsEntry,
    map: true

  field :relevance, 6, type: Google.Cloud.Policytroubleshooter.V1.HeuristicRelevance, enum: true
  field :condition, 7, type: Google.Type.Expr
end
