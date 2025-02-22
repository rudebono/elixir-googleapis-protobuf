defmodule Google.Cloud.Deploy.V1.DeployPolicyEvaluationEvent.PolicyVerdict do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :POLICY_VERDICT_UNSPECIFIED, 0
  field :ALLOWED_BY_POLICY, 1
  field :DENIED_BY_POLICY, 2
end

defmodule Google.Cloud.Deploy.V1.DeployPolicyEvaluationEvent.PolicyVerdictOverride do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :POLICY_VERDICT_OVERRIDE_UNSPECIFIED, 0
  field :POLICY_OVERRIDDEN, 1
  field :POLICY_SUSPENDED, 2
end

defmodule Google.Cloud.Deploy.V1.DeployPolicyEvaluationEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :message, 1, type: :string
  field :rule_type, 2, type: :string, json_name: "ruleType"
  field :rule, 3, type: :string
  field :pipeline_uid, 4, type: :string, json_name: "pipelineUid"
  field :delivery_pipeline, 5, type: :string, json_name: "deliveryPipeline"
  field :target_uid, 6, type: :string, json_name: "targetUid"
  field :target, 7, type: :string
  field :invoker, 8, type: Google.Cloud.Deploy.V1.DeployPolicy.Invoker, enum: true
  field :deploy_policy, 9, type: :string, json_name: "deployPolicy"
  field :deploy_policy_uid, 10, type: :string, json_name: "deployPolicyUid"
  field :allowed, 11, type: :bool

  field :verdict, 12,
    type: Google.Cloud.Deploy.V1.DeployPolicyEvaluationEvent.PolicyVerdict,
    enum: true

  field :overrides, 13,
    repeated: true,
    type: Google.Cloud.Deploy.V1.DeployPolicyEvaluationEvent.PolicyVerdictOverride,
    enum: true
end
