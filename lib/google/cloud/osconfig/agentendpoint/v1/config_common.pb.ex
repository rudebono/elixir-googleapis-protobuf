defmodule Google.Cloud.Osconfig.Agentendpoint.V1.OSPolicyComplianceState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :OS_POLICY_COMPLIANCE_STATE_UNSPECIFIED, 0
  field :COMPLIANT, 1
  field :NON_COMPLIANT, 2
  field :UNKNOWN, 3
  field :NO_OS_POLICIES_APPLICABLE, 4
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.OSPolicyResourceConfigStep.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :VALIDATION, 1
  field :DESIRED_STATE_CHECK, 2
  field :DESIRED_STATE_ENFORCEMENT, 3
  field :DESIRED_STATE_CHECK_POST_ENFORCEMENT, 4
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.OSPolicyResourceConfigStep.Outcome do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :OUTCOME_UNSPECIFIED, 0
  field :SUCCEEDED, 1
  field :FAILED, 2
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.OSPolicyResourceConfigStep do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :type, 1,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.OSPolicyResourceConfigStep.Type,
    enum: true

  field :outcome, 2,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.OSPolicyResourceConfigStep.Outcome,
    enum: true

  field :error_message, 3, type: :string, json_name: "errorMessage"
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.OSPolicyResourceCompliance.ExecResourceOutput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :enforcement_output, 2, type: :bytes, json_name: "enforcementOutput"
end

defmodule Google.Cloud.Osconfig.Agentendpoint.V1.OSPolicyResourceCompliance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :output, 0

  field :os_policy_resource_id, 1, type: :string, json_name: "osPolicyResourceId"

  field :config_steps, 2,
    repeated: true,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.OSPolicyResourceConfigStep,
    json_name: "configSteps"

  field :state, 3,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.OSPolicyComplianceState,
    enum: true

  field :exec_resource_output, 4,
    type: Google.Cloud.Osconfig.Agentendpoint.V1.OSPolicyResourceCompliance.ExecResourceOutput,
    json_name: "execResourceOutput",
    oneof: 0
end