defmodule Google.Cloud.Osconfig.V1alpha.OSPolicyAssignmentReport.OSPolicyCompliance.ComplianceState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :UNKNOWN, 0
  field :COMPLIANT, 1
  field :NON_COMPLIANT, 2
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicyAssignmentReport.OSPolicyCompliance.OSPolicyResourceCompliance.ComplianceState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :UNKNOWN, 0
  field :COMPLIANT, 1
  field :NON_COMPLIANT, 2
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicyAssignmentReport.OSPolicyCompliance.OSPolicyResourceCompliance.OSPolicyResourceConfigStep.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :VALIDATION, 1
  field :DESIRED_STATE_CHECK, 2
  field :DESIRED_STATE_ENFORCEMENT, 3
  field :DESIRED_STATE_CHECK_POST_ENFORCEMENT, 4
end

defmodule Google.Cloud.Osconfig.V1alpha.GetOSPolicyAssignmentReportRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Osconfig.V1alpha.ListOSPolicyAssignmentReportsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :filter, 3, type: :string
  field :page_token, 4, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Osconfig.V1alpha.ListOSPolicyAssignmentReportsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :os_policy_assignment_reports, 1,
    repeated: true,
    type: Google.Cloud.Osconfig.V1alpha.OSPolicyAssignmentReport,
    json_name: "osPolicyAssignmentReports"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicyAssignmentReport.OSPolicyCompliance.OSPolicyResourceCompliance.OSPolicyResourceConfigStep do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :type, 1,
    type:
      Google.Cloud.Osconfig.V1alpha.OSPolicyAssignmentReport.OSPolicyCompliance.OSPolicyResourceCompliance.OSPolicyResourceConfigStep.Type,
    enum: true

  field :error_message, 2, type: :string, json_name: "errorMessage"
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicyAssignmentReport.OSPolicyCompliance.OSPolicyResourceCompliance.ExecResourceOutput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :enforcement_output, 2, type: :bytes, json_name: "enforcementOutput"
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicyAssignmentReport.OSPolicyCompliance.OSPolicyResourceCompliance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :output, 0

  field :os_policy_resource_id, 1, type: :string, json_name: "osPolicyResourceId"

  field :config_steps, 2,
    repeated: true,
    type:
      Google.Cloud.Osconfig.V1alpha.OSPolicyAssignmentReport.OSPolicyCompliance.OSPolicyResourceCompliance.OSPolicyResourceConfigStep,
    json_name: "configSteps"

  field :compliance_state, 3,
    type:
      Google.Cloud.Osconfig.V1alpha.OSPolicyAssignmentReport.OSPolicyCompliance.OSPolicyResourceCompliance.ComplianceState,
    json_name: "complianceState",
    enum: true

  field :compliance_state_reason, 4, type: :string, json_name: "complianceStateReason"

  field :exec_resource_output, 5,
    type:
      Google.Cloud.Osconfig.V1alpha.OSPolicyAssignmentReport.OSPolicyCompliance.OSPolicyResourceCompliance.ExecResourceOutput,
    json_name: "execResourceOutput",
    oneof: 0
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicyAssignmentReport.OSPolicyCompliance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :os_policy_id, 1, type: :string, json_name: "osPolicyId"

  field :compliance_state, 2,
    type:
      Google.Cloud.Osconfig.V1alpha.OSPolicyAssignmentReport.OSPolicyCompliance.ComplianceState,
    json_name: "complianceState",
    enum: true

  field :compliance_state_reason, 3, type: :string, json_name: "complianceStateReason"

  field :os_policy_resource_compliances, 4,
    repeated: true,
    type:
      Google.Cloud.Osconfig.V1alpha.OSPolicyAssignmentReport.OSPolicyCompliance.OSPolicyResourceCompliance,
    json_name: "osPolicyResourceCompliances"
end

defmodule Google.Cloud.Osconfig.V1alpha.OSPolicyAssignmentReport do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :instance, 2, type: :string

  field :os_policy_assignment, 3,
    type: :string,
    json_name: "osPolicyAssignment",
    deprecated: false

  field :os_policy_compliances, 4,
    repeated: true,
    type: Google.Cloud.Osconfig.V1alpha.OSPolicyAssignmentReport.OSPolicyCompliance,
    json_name: "osPolicyCompliances"

  field :update_time, 5, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :last_run_id, 6, type: :string, json_name: "lastRunId"
end