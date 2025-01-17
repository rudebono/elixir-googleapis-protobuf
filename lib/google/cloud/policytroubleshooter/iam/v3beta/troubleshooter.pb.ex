defmodule Google.Cloud.Policytroubleshooter.Iam.V3beta.AllowAccessState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :ALLOW_ACCESS_STATE_UNSPECIFIED, 0
  field :ALLOW_ACCESS_STATE_GRANTED, 1
  field :ALLOW_ACCESS_STATE_NOT_GRANTED, 2
  field :ALLOW_ACCESS_STATE_UNKNOWN_CONDITIONAL, 3
  field :ALLOW_ACCESS_STATE_UNKNOWN_INFO, 4
end

defmodule Google.Cloud.Policytroubleshooter.Iam.V3beta.DenyAccessState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :DENY_ACCESS_STATE_UNSPECIFIED, 0
  field :DENY_ACCESS_STATE_DENIED, 1
  field :DENY_ACCESS_STATE_NOT_DENIED, 2
  field :DENY_ACCESS_STATE_UNKNOWN_CONDITIONAL, 3
  field :DENY_ACCESS_STATE_UNKNOWN_INFO, 4
end

defmodule Google.Cloud.Policytroubleshooter.Iam.V3beta.RolePermissionInclusionState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :ROLE_PERMISSION_INCLUSION_STATE_UNSPECIFIED, 0
  field :ROLE_PERMISSION_INCLUDED, 1
  field :ROLE_PERMISSION_NOT_INCLUDED, 2
  field :ROLE_PERMISSION_UNKNOWN_INFO, 3
end

defmodule Google.Cloud.Policytroubleshooter.Iam.V3beta.PermissionPatternMatchingState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :PERMISSION_PATTERN_MATCHING_STATE_UNSPECIFIED, 0
  field :PERMISSION_PATTERN_MATCHED, 1
  field :PERMISSION_PATTERN_NOT_MATCHED, 2
end

defmodule Google.Cloud.Policytroubleshooter.Iam.V3beta.MembershipMatchingState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :MEMBERSHIP_MATCHING_STATE_UNSPECIFIED, 0
  field :MEMBERSHIP_MATCHED, 1
  field :MEMBERSHIP_NOT_MATCHED, 2
  field :MEMBERSHIP_UNKNOWN_INFO, 3
  field :MEMBERSHIP_UNKNOWN_UNSUPPORTED, 4
end

defmodule Google.Cloud.Policytroubleshooter.Iam.V3beta.HeuristicRelevance do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :HEURISTIC_RELEVANCE_UNSPECIFIED, 0
  field :HEURISTIC_RELEVANCE_NORMAL, 1
  field :HEURISTIC_RELEVANCE_HIGH, 2
end

defmodule Google.Cloud.Policytroubleshooter.Iam.V3beta.TroubleshootIamPolicyResponse.OverallAccessState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :OVERALL_ACCESS_STATE_UNSPECIFIED, 0
  field :CAN_ACCESS, 1
  field :CANNOT_ACCESS, 2
  field :UNKNOWN_INFO, 3
  field :UNKNOWN_CONDITIONAL, 4
end

defmodule Google.Cloud.Policytroubleshooter.Iam.V3beta.TroubleshootIamPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :access_tuple, 1,
    type: Google.Cloud.Policytroubleshooter.Iam.V3beta.AccessTuple,
    json_name: "accessTuple"
end

defmodule Google.Cloud.Policytroubleshooter.Iam.V3beta.TroubleshootIamPolicyResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :overall_access_state, 1,
    type:
      Google.Cloud.Policytroubleshooter.Iam.V3beta.TroubleshootIamPolicyResponse.OverallAccessState,
    json_name: "overallAccessState",
    enum: true

  field :access_tuple, 2,
    type: Google.Cloud.Policytroubleshooter.Iam.V3beta.AccessTuple,
    json_name: "accessTuple"

  field :allow_policy_explanation, 3,
    type: Google.Cloud.Policytroubleshooter.Iam.V3beta.AllowPolicyExplanation,
    json_name: "allowPolicyExplanation"

  field :deny_policy_explanation, 4,
    type: Google.Cloud.Policytroubleshooter.Iam.V3beta.DenyPolicyExplanation,
    json_name: "denyPolicyExplanation"
end

defmodule Google.Cloud.Policytroubleshooter.Iam.V3beta.AccessTuple do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :principal, 1, type: :string, deprecated: false
  field :full_resource_name, 2, type: :string, json_name: "fullResourceName", deprecated: false
  field :permission, 3, type: :string, deprecated: false
  field :permission_fqdn, 4, type: :string, json_name: "permissionFqdn", deprecated: false

  field :condition_context, 5,
    type: Google.Cloud.Policytroubleshooter.Iam.V3beta.ConditionContext,
    json_name: "conditionContext",
    deprecated: false
end

defmodule Google.Cloud.Policytroubleshooter.Iam.V3beta.ConditionContext.Resource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :service, 1, type: :string
  field :name, 2, type: :string
  field :type, 3, type: :string
end

defmodule Google.Cloud.Policytroubleshooter.Iam.V3beta.ConditionContext.Peer do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :ip, 1, type: :string
  field :port, 2, type: :int64
end

defmodule Google.Cloud.Policytroubleshooter.Iam.V3beta.ConditionContext.Request do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :receive_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "receiveTime",
    deprecated: false
end

defmodule Google.Cloud.Policytroubleshooter.Iam.V3beta.ConditionContext.EffectiveTag do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :tag_value, 1, type: :string, json_name: "tagValue", deprecated: false

  field :namespaced_tag_value, 2,
    type: :string,
    json_name: "namespacedTagValue",
    deprecated: false

  field :tag_key, 3, type: :string, json_name: "tagKey", deprecated: false
  field :namespaced_tag_key, 4, type: :string, json_name: "namespacedTagKey", deprecated: false
  field :tag_key_parent_name, 6, type: :string, json_name: "tagKeyParentName"
  field :inherited, 5, type: :bool, deprecated: false
end

defmodule Google.Cloud.Policytroubleshooter.Iam.V3beta.ConditionContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :resource, 1, type: Google.Cloud.Policytroubleshooter.Iam.V3beta.ConditionContext.Resource
  field :destination, 2, type: Google.Cloud.Policytroubleshooter.Iam.V3beta.ConditionContext.Peer
  field :request, 3, type: Google.Cloud.Policytroubleshooter.Iam.V3beta.ConditionContext.Request

  field :effective_tags, 4,
    repeated: true,
    type: Google.Cloud.Policytroubleshooter.Iam.V3beta.ConditionContext.EffectiveTag,
    json_name: "effectiveTags",
    deprecated: false
end

defmodule Google.Cloud.Policytroubleshooter.Iam.V3beta.AllowPolicyExplanation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :allow_access_state, 1,
    type: Google.Cloud.Policytroubleshooter.Iam.V3beta.AllowAccessState,
    json_name: "allowAccessState",
    enum: true

  field :explained_policies, 2,
    repeated: true,
    type: Google.Cloud.Policytroubleshooter.Iam.V3beta.ExplainedAllowPolicy,
    json_name: "explainedPolicies"

  field :relevance, 3,
    type: Google.Cloud.Policytroubleshooter.Iam.V3beta.HeuristicRelevance,
    enum: true
end

defmodule Google.Cloud.Policytroubleshooter.Iam.V3beta.ExplainedAllowPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :allow_access_state, 1,
    type: Google.Cloud.Policytroubleshooter.Iam.V3beta.AllowAccessState,
    json_name: "allowAccessState",
    enum: true,
    deprecated: false

  field :full_resource_name, 2, type: :string, json_name: "fullResourceName"

  field :binding_explanations, 3,
    repeated: true,
    type: Google.Cloud.Policytroubleshooter.Iam.V3beta.AllowBindingExplanation,
    json_name: "bindingExplanations"

  field :relevance, 4,
    type: Google.Cloud.Policytroubleshooter.Iam.V3beta.HeuristicRelevance,
    enum: true

  field :policy, 5, type: Google.Iam.V1.Policy
end

defmodule Google.Cloud.Policytroubleshooter.Iam.V3beta.AllowBindingExplanation.AnnotatedAllowMembership do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :membership, 1,
    type: Google.Cloud.Policytroubleshooter.Iam.V3beta.MembershipMatchingState,
    enum: true

  field :relevance, 2,
    type: Google.Cloud.Policytroubleshooter.Iam.V3beta.HeuristicRelevance,
    enum: true
end

defmodule Google.Cloud.Policytroubleshooter.Iam.V3beta.AllowBindingExplanation.MembershipsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string

  field :value, 2,
    type:
      Google.Cloud.Policytroubleshooter.Iam.V3beta.AllowBindingExplanation.AnnotatedAllowMembership
end

defmodule Google.Cloud.Policytroubleshooter.Iam.V3beta.AllowBindingExplanation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :allow_access_state, 1,
    type: Google.Cloud.Policytroubleshooter.Iam.V3beta.AllowAccessState,
    json_name: "allowAccessState",
    enum: true,
    deprecated: false

  field :role, 2, type: :string

  field :role_permission, 3,
    type: Google.Cloud.Policytroubleshooter.Iam.V3beta.RolePermissionInclusionState,
    json_name: "rolePermission",
    enum: true

  field :role_permission_relevance, 4,
    type: Google.Cloud.Policytroubleshooter.Iam.V3beta.HeuristicRelevance,
    json_name: "rolePermissionRelevance",
    enum: true

  field :combined_membership, 5,
    type:
      Google.Cloud.Policytroubleshooter.Iam.V3beta.AllowBindingExplanation.AnnotatedAllowMembership,
    json_name: "combinedMembership"

  field :memberships, 6,
    repeated: true,
    type: Google.Cloud.Policytroubleshooter.Iam.V3beta.AllowBindingExplanation.MembershipsEntry,
    map: true

  field :relevance, 7,
    type: Google.Cloud.Policytroubleshooter.Iam.V3beta.HeuristicRelevance,
    enum: true

  field :condition, 8, type: Google.Type.Expr

  field :condition_explanation, 9,
    type: Google.Cloud.Policytroubleshooter.Iam.V3beta.ConditionExplanation,
    json_name: "conditionExplanation"
end

defmodule Google.Cloud.Policytroubleshooter.Iam.V3beta.DenyPolicyExplanation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :deny_access_state, 1,
    type: Google.Cloud.Policytroubleshooter.Iam.V3beta.DenyAccessState,
    json_name: "denyAccessState",
    enum: true

  field :explained_resources, 2,
    repeated: true,
    type: Google.Cloud.Policytroubleshooter.Iam.V3beta.ExplainedDenyResource,
    json_name: "explainedResources"

  field :relevance, 3,
    type: Google.Cloud.Policytroubleshooter.Iam.V3beta.HeuristicRelevance,
    enum: true

  field :permission_deniable, 4, type: :bool, json_name: "permissionDeniable"
end

defmodule Google.Cloud.Policytroubleshooter.Iam.V3beta.ExplainedDenyResource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :deny_access_state, 1,
    type: Google.Cloud.Policytroubleshooter.Iam.V3beta.DenyAccessState,
    json_name: "denyAccessState",
    enum: true,
    deprecated: false

  field :full_resource_name, 2, type: :string, json_name: "fullResourceName"

  field :explained_policies, 3,
    repeated: true,
    type: Google.Cloud.Policytroubleshooter.Iam.V3beta.ExplainedDenyPolicy,
    json_name: "explainedPolicies"

  field :relevance, 4,
    type: Google.Cloud.Policytroubleshooter.Iam.V3beta.HeuristicRelevance,
    enum: true
end

defmodule Google.Cloud.Policytroubleshooter.Iam.V3beta.ExplainedDenyPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :deny_access_state, 1,
    type: Google.Cloud.Policytroubleshooter.Iam.V3beta.DenyAccessState,
    json_name: "denyAccessState",
    enum: true,
    deprecated: false

  field :policy, 2, type: Google.Iam.V2.Policy

  field :rule_explanations, 3,
    repeated: true,
    type: Google.Cloud.Policytroubleshooter.Iam.V3beta.DenyRuleExplanation,
    json_name: "ruleExplanations"

  field :relevance, 4,
    type: Google.Cloud.Policytroubleshooter.Iam.V3beta.HeuristicRelevance,
    enum: true
end

defmodule Google.Cloud.Policytroubleshooter.Iam.V3beta.DenyRuleExplanation.AnnotatedPermissionMatching do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :permission_matching_state, 1,
    type: Google.Cloud.Policytroubleshooter.Iam.V3beta.PermissionPatternMatchingState,
    json_name: "permissionMatchingState",
    enum: true

  field :relevance, 2,
    type: Google.Cloud.Policytroubleshooter.Iam.V3beta.HeuristicRelevance,
    enum: true
end

defmodule Google.Cloud.Policytroubleshooter.Iam.V3beta.DenyRuleExplanation.AnnotatedDenyPrincipalMatching do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :membership, 1,
    type: Google.Cloud.Policytroubleshooter.Iam.V3beta.MembershipMatchingState,
    enum: true

  field :relevance, 2,
    type: Google.Cloud.Policytroubleshooter.Iam.V3beta.HeuristicRelevance,
    enum: true
end

defmodule Google.Cloud.Policytroubleshooter.Iam.V3beta.DenyRuleExplanation.DeniedPermissionsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string

  field :value, 2,
    type:
      Google.Cloud.Policytroubleshooter.Iam.V3beta.DenyRuleExplanation.AnnotatedPermissionMatching
end

defmodule Google.Cloud.Policytroubleshooter.Iam.V3beta.DenyRuleExplanation.ExceptionPermissionsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string

  field :value, 2,
    type:
      Google.Cloud.Policytroubleshooter.Iam.V3beta.DenyRuleExplanation.AnnotatedPermissionMatching
end

defmodule Google.Cloud.Policytroubleshooter.Iam.V3beta.DenyRuleExplanation.DeniedPrincipalsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string

  field :value, 2,
    type:
      Google.Cloud.Policytroubleshooter.Iam.V3beta.DenyRuleExplanation.AnnotatedDenyPrincipalMatching
end

defmodule Google.Cloud.Policytroubleshooter.Iam.V3beta.DenyRuleExplanation.ExceptionPrincipalsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string

  field :value, 2,
    type:
      Google.Cloud.Policytroubleshooter.Iam.V3beta.DenyRuleExplanation.AnnotatedDenyPrincipalMatching
end

defmodule Google.Cloud.Policytroubleshooter.Iam.V3beta.DenyRuleExplanation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :deny_access_state, 1,
    type: Google.Cloud.Policytroubleshooter.Iam.V3beta.DenyAccessState,
    json_name: "denyAccessState",
    enum: true,
    deprecated: false

  field :combined_denied_permission, 2,
    type:
      Google.Cloud.Policytroubleshooter.Iam.V3beta.DenyRuleExplanation.AnnotatedPermissionMatching,
    json_name: "combinedDeniedPermission"

  field :denied_permissions, 3,
    repeated: true,
    type: Google.Cloud.Policytroubleshooter.Iam.V3beta.DenyRuleExplanation.DeniedPermissionsEntry,
    json_name: "deniedPermissions",
    map: true

  field :combined_exception_permission, 4,
    type:
      Google.Cloud.Policytroubleshooter.Iam.V3beta.DenyRuleExplanation.AnnotatedPermissionMatching,
    json_name: "combinedExceptionPermission"

  field :exception_permissions, 5,
    repeated: true,
    type:
      Google.Cloud.Policytroubleshooter.Iam.V3beta.DenyRuleExplanation.ExceptionPermissionsEntry,
    json_name: "exceptionPermissions",
    map: true

  field :combined_denied_principal, 6,
    type:
      Google.Cloud.Policytroubleshooter.Iam.V3beta.DenyRuleExplanation.AnnotatedDenyPrincipalMatching,
    json_name: "combinedDeniedPrincipal"

  field :denied_principals, 7,
    repeated: true,
    type: Google.Cloud.Policytroubleshooter.Iam.V3beta.DenyRuleExplanation.DeniedPrincipalsEntry,
    json_name: "deniedPrincipals",
    map: true

  field :combined_exception_principal, 8,
    type:
      Google.Cloud.Policytroubleshooter.Iam.V3beta.DenyRuleExplanation.AnnotatedDenyPrincipalMatching,
    json_name: "combinedExceptionPrincipal"

  field :exception_principals, 9,
    repeated: true,
    type:
      Google.Cloud.Policytroubleshooter.Iam.V3beta.DenyRuleExplanation.ExceptionPrincipalsEntry,
    json_name: "exceptionPrincipals",
    map: true

  field :relevance, 10,
    type: Google.Cloud.Policytroubleshooter.Iam.V3beta.HeuristicRelevance,
    enum: true

  field :condition, 11, type: Google.Type.Expr

  field :condition_explanation, 12,
    type: Google.Cloud.Policytroubleshooter.Iam.V3beta.ConditionExplanation,
    json_name: "conditionExplanation"
end

defmodule Google.Cloud.Policytroubleshooter.Iam.V3beta.ConditionExplanation.EvaluationState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :start, 1, type: :int32
  field :end, 2, type: :int32
  field :value, 3, type: Google.Protobuf.Value
  field :errors, 4, repeated: true, type: Google.Rpc.Status
end

defmodule Google.Cloud.Policytroubleshooter.Iam.V3beta.ConditionExplanation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :value, 1, type: Google.Protobuf.Value
  field :errors, 3, repeated: true, type: Google.Rpc.Status

  field :evaluation_states, 2,
    repeated: true,
    type: Google.Cloud.Policytroubleshooter.Iam.V3beta.ConditionExplanation.EvaluationState,
    json_name: "evaluationStates"
end

defmodule Google.Cloud.Policytroubleshooter.Iam.V3beta.PolicyTroubleshooter.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.policytroubleshooter.iam.v3beta.PolicyTroubleshooter",
    protoc_gen_elixir_version: "0.14.0"

  rpc :TroubleshootIamPolicy,
      Google.Cloud.Policytroubleshooter.Iam.V3beta.TroubleshootIamPolicyRequest,
      Google.Cloud.Policytroubleshooter.Iam.V3beta.TroubleshootIamPolicyResponse
end

defmodule Google.Cloud.Policytroubleshooter.Iam.V3beta.PolicyTroubleshooter.Stub do
  @moduledoc false

  use GRPC.Stub,
    service: Google.Cloud.Policytroubleshooter.Iam.V3beta.PolicyTroubleshooter.Service
end
