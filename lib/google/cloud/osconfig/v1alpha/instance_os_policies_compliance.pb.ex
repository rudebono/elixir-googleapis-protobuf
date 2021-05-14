defmodule Google.Cloud.Osconfig.V1alpha.InstanceOSPoliciesCompliance.OSPolicyCompliance do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          os_policy_id: String.t(),
          os_policy_assignment: String.t(),
          state: Google.Cloud.Osconfig.V1alpha.OSPolicyComplianceState.t(),
          os_policy_resource_compliances: [
            Google.Cloud.Osconfig.V1alpha.OSPolicyResourceCompliance.t()
          ]
        }

  defstruct [:os_policy_id, :os_policy_assignment, :state, :os_policy_resource_compliances]

  field :os_policy_id, 1, type: :string
  field :os_policy_assignment, 2, type: :string
  field :state, 4, type: Google.Cloud.Osconfig.V1alpha.OSPolicyComplianceState, enum: true

  field :os_policy_resource_compliances, 5,
    repeated: true,
    type: Google.Cloud.Osconfig.V1alpha.OSPolicyResourceCompliance
end

defmodule Google.Cloud.Osconfig.V1alpha.InstanceOSPoliciesCompliance do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          instance: String.t(),
          state: Google.Cloud.Osconfig.V1alpha.OSPolicyComplianceState.t(),
          detailed_state: String.t(),
          detailed_state_reason: String.t(),
          os_policy_compliances: [
            Google.Cloud.Osconfig.V1alpha.InstanceOSPoliciesCompliance.OSPolicyCompliance.t()
          ],
          last_compliance_check_time: Google.Protobuf.Timestamp.t() | nil,
          last_compliance_run_id: String.t()
        }

  defstruct [
    :name,
    :instance,
    :state,
    :detailed_state,
    :detailed_state_reason,
    :os_policy_compliances,
    :last_compliance_check_time,
    :last_compliance_run_id
  ]

  field :name, 1, type: :string
  field :instance, 2, type: :string
  field :state, 3, type: Google.Cloud.Osconfig.V1alpha.OSPolicyComplianceState, enum: true
  field :detailed_state, 4, type: :string
  field :detailed_state_reason, 5, type: :string

  field :os_policy_compliances, 6,
    repeated: true,
    type: Google.Cloud.Osconfig.V1alpha.InstanceOSPoliciesCompliance.OSPolicyCompliance

  field :last_compliance_check_time, 7, type: Google.Protobuf.Timestamp
  field :last_compliance_run_id, 8, type: :string
end

defmodule Google.Cloud.Osconfig.V1alpha.GetInstanceOSPoliciesComplianceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Osconfig.V1alpha.ListInstanceOSPoliciesCompliancesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Osconfig.V1alpha.ListInstanceOSPoliciesCompliancesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance_os_policies_compliances: [
            Google.Cloud.Osconfig.V1alpha.InstanceOSPoliciesCompliance.t()
          ],
          next_page_token: String.t()
        }

  defstruct [:instance_os_policies_compliances, :next_page_token]

  field :instance_os_policies_compliances, 1,
    repeated: true,
    type: Google.Cloud.Osconfig.V1alpha.InstanceOSPoliciesCompliance

  field :next_page_token, 2, type: :string
end
