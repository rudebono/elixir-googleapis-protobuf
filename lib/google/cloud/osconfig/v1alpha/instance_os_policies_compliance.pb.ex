defmodule Google.Cloud.Osconfig.V1alpha.InstanceOSPoliciesCompliance.OSPolicyCompliance do
  @moduledoc false
  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :os_policy_id, 1, type: :string, json_name: "osPolicyId"

  field :os_policy_assignment, 2,
    type: :string,
    json_name: "osPolicyAssignment",
    deprecated: false

  field :state, 4, type: Google.Cloud.Osconfig.V1alpha.OSPolicyComplianceState, enum: true

  field :os_policy_resource_compliances, 5,
    repeated: true,
    type: Google.Cloud.Osconfig.V1alpha.OSPolicyResourceCompliance,
    json_name: "osPolicyResourceCompliances"
end

defmodule Google.Cloud.Osconfig.V1alpha.InstanceOSPoliciesCompliance do
  @moduledoc false
  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :instance, 2, type: :string, deprecated: false

  field :state, 3,
    type: Google.Cloud.Osconfig.V1alpha.OSPolicyComplianceState,
    enum: true,
    deprecated: false

  field :detailed_state, 4, type: :string, json_name: "detailedState", deprecated: false

  field :detailed_state_reason, 5,
    type: :string,
    json_name: "detailedStateReason",
    deprecated: false

  field :os_policy_compliances, 6,
    repeated: true,
    type: Google.Cloud.Osconfig.V1alpha.InstanceOSPoliciesCompliance.OSPolicyCompliance,
    json_name: "osPolicyCompliances",
    deprecated: false

  field :last_compliance_check_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "lastComplianceCheckTime",
    deprecated: false

  field :last_compliance_run_id, 8,
    type: :string,
    json_name: "lastComplianceRunId",
    deprecated: false
end

defmodule Google.Cloud.Osconfig.V1alpha.GetInstanceOSPoliciesComplianceRequest do
  @moduledoc false
  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Osconfig.V1alpha.ListInstanceOSPoliciesCompliancesRequest do
  @moduledoc false
  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Osconfig.V1alpha.ListInstanceOSPoliciesCompliancesResponse do
  @moduledoc false
  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_os_policies_compliances, 1,
    repeated: true,
    type: Google.Cloud.Osconfig.V1alpha.InstanceOSPoliciesCompliance,
    json_name: "instanceOsPoliciesCompliances"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end