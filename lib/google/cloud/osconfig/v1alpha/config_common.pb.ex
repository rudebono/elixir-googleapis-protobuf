defmodule Google.Cloud.Osconfig.V1alpha.OSPolicyComplianceState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :OS_POLICY_COMPLIANCE_STATE_UNSPECIFIED
          | :COMPLIANT
          | :NON_COMPLIANT
          | :UNKNOWN
          | :NO_OS_POLICIES_APPLICABLE

  field :OS_POLICY_COMPLIANCE_STATE_UNSPECIFIED, 0

  field :COMPLIANT, 1

  field :NON_COMPLIANT, 2

  field :UNKNOWN, 3

  field :NO_OS_POLICIES_APPLICABLE, 4
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicyResourceConfigStep.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :TYPE_UNSPECIFIED
          | :VALIDATION
          | :DESIRED_STATE_CHECK
          | :DESIRED_STATE_ENFORCEMENT
          | :DESIRED_STATE_CHECK_POST_ENFORCEMENT

  field :TYPE_UNSPECIFIED, 0

  field :VALIDATION, 1

  field :DESIRED_STATE_CHECK, 2

  field :DESIRED_STATE_ENFORCEMENT, 3

  field :DESIRED_STATE_CHECK_POST_ENFORCEMENT, 4
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicyResourceConfigStep.Outcome do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :OUTCOME_UNSPECIFIED | :SUCCEEDED | :FAILED

  field :OUTCOME_UNSPECIFIED, 0

  field :SUCCEEDED, 1

  field :FAILED, 2
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicyResourceConfigStep do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Cloud.Osconfig.V1alpha.OSPolicyResourceConfigStep.Type.t(),
          outcome: Google.Cloud.Osconfig.V1alpha.OSPolicyResourceConfigStep.Outcome.t()
        }

  defstruct [:type, :outcome]

  field :type, 1, type: Google.Cloud.Osconfig.V1alpha.OSPolicyResourceConfigStep.Type, enum: true

  field :outcome, 2,
    type: Google.Cloud.Osconfig.V1alpha.OSPolicyResourceConfigStep.Outcome,
    enum: true
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicyResourceCompliance do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          os_policy_resource_id: String.t(),
          config_steps: [Google.Cloud.Osconfig.V1alpha.OSPolicyResourceConfigStep.t()],
          state: Google.Cloud.Osconfig.V1alpha.OSPolicyComplianceState.t()
        }

  defstruct [:os_policy_resource_id, :config_steps, :state]

  field :os_policy_resource_id, 1, type: :string

  field :config_steps, 2,
    repeated: true,
    type: Google.Cloud.Osconfig.V1alpha.OSPolicyResourceConfigStep

  field :state, 3, type: Google.Cloud.Osconfig.V1alpha.OSPolicyComplianceState, enum: true
end
