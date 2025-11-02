defmodule Google.Cloud.Cloudsecuritycompliance.V1.ComplianceState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :COMPLIANCE_STATE_UNSPECIFIED, 0
  field :COMPLIANT, 1
  field :VIOLATION, 2
  field :MANUAL_REVIEW_NEEDED, 3
  field :ERROR, 4
  field :AUDIT_NOT_SUPPORTED, 5
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.GenerateFrameworkAuditScopeReportRequest.Format do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :FORMAT_UNSPECIFIED, 0
  field :ODF, 1
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.BucketDestination.Format do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :FORMAT_UNSPECIFIED, 0
  field :ODF, 1
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.FrameworkAudit.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :SCHEDULED, 1
  field :RUNNING, 2
  field :UPLOADING, 3
  field :FAILED, 4
  field :SUCCEEDED, 5
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.GenerateFrameworkAuditScopeReportRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :scope, 1, type: :string, deprecated: false

  field :report_format, 2,
    type: Google.Cloud.Cloudsecuritycompliance.V1.GenerateFrameworkAuditScopeReportRequest.Format,
    json_name: "reportFormat",
    enum: true,
    deprecated: false

  field :compliance_framework, 3,
    type: :string,
    json_name: "complianceFramework",
    deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.GenerateFrameworkAuditScopeReportResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :audit_report, 0

  field :scope_report_contents, 3, type: :bytes, json_name: "scopeReportContents", oneof: 0
  field :name, 1, type: :string, deprecated: false

  field :compliance_framework, 2,
    type: :string,
    json_name: "complianceFramework",
    deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.ReportSummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :total_count, 1, type: :int32, json_name: "totalCount", deprecated: false
  field :compliant_count, 2, type: :int32, json_name: "compliantCount", deprecated: false
  field :violation_count, 3, type: :int32, json_name: "violationCount", deprecated: false

  field :manual_review_needed_count, 4,
    type: :int32,
    json_name: "manualReviewNeededCount",
    deprecated: false

  field :error_count, 5, type: :int32, json_name: "errorCount", deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.CreateFrameworkAuditRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :framework_audit_id, 2, type: :string, json_name: "frameworkAuditId", deprecated: false

  field :framework_audit, 3,
    type: Google.Cloud.Cloudsecuritycompliance.V1.FrameworkAudit,
    json_name: "frameworkAudit",
    deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.FrameworkAuditDestination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :destination_type, 0

  field :bucket, 1, type: Google.Cloud.Cloudsecuritycompliance.V1.BucketDestination, oneof: 0
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.BucketDestination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :bucket_uri, 1, type: :string, json_name: "bucketUri", deprecated: false

  field :framework_audit_format, 3,
    type: Google.Cloud.Cloudsecuritycompliance.V1.BucketDestination.Format,
    json_name: "frameworkAuditFormat",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.FrameworkAudit do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :framework_audit_id, 2, type: :string, json_name: "frameworkAuditId", deprecated: false

  field :compliance_framework, 3,
    type: :string,
    json_name: "complianceFramework",
    deprecated: false

  field :scope, 4, type: :string, deprecated: false

  field :framework_audit_destination, 5,
    type: Google.Cloud.Cloudsecuritycompliance.V1.FrameworkAuditDestination,
    json_name: "frameworkAuditDestination",
    deprecated: false

  field :start_time, 6, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false

  field :finish_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "finishTime",
    deprecated: false

  field :compliance_state, 8,
    type: Google.Cloud.Cloudsecuritycompliance.V1.ComplianceState,
    json_name: "complianceState",
    enum: true,
    deprecated: false

  field :report_summary, 9,
    type: Google.Cloud.Cloudsecuritycompliance.V1.ReportSummary,
    json_name: "reportSummary",
    deprecated: false

  field :cloud_control_group_audit_details, 10,
    repeated: true,
    type: Google.Cloud.Cloudsecuritycompliance.V1.CloudControlGroupAuditDetails,
    json_name: "cloudControlGroupAuditDetails",
    deprecated: false

  field :cloud_control_audit_details, 11,
    repeated: true,
    type: Google.Cloud.Cloudsecuritycompliance.V1.CloudControlAuditDetails,
    json_name: "cloudControlAuditDetails",
    deprecated: false

  field :operation_id, 12, type: :string, json_name: "operationId", deprecated: false

  field :state, 13,
    type: Google.Cloud.Cloudsecuritycompliance.V1.FrameworkAudit.State,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.ListFrameworkAuditsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.ListFrameworkAuditsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :framework_audits, 1,
    repeated: true,
    type: Google.Cloud.Cloudsecuritycompliance.V1.FrameworkAudit,
    json_name: "frameworkAudits"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.GetFrameworkAuditRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.CloudControlGroupAuditDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :cloud_control_group_id, 1,
    type: :string,
    json_name: "cloudControlGroupId",
    deprecated: false

  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string, deprecated: false
  field :responsibility_type, 4, type: :string, json_name: "responsibilityType", deprecated: false

  field :google_responsibility_description, 5,
    type: :string,
    json_name: "googleResponsibilityDescription",
    deprecated: false

  field :google_responsibility_implementation, 6,
    type: :string,
    json_name: "googleResponsibilityImplementation",
    deprecated: false

  field :customer_responsibility_description, 7,
    type: :string,
    json_name: "customerResponsibilityDescription",
    deprecated: false

  field :customer_responsibility_implementation, 8,
    type: :string,
    json_name: "customerResponsibilityImplementation",
    deprecated: false

  field :compliance_state, 9,
    type: Google.Cloud.Cloudsecuritycompliance.V1.ComplianceState,
    json_name: "complianceState",
    enum: true,
    deprecated: false

  field :control_id, 10, type: :string, json_name: "controlId", deprecated: false

  field :control_family, 11,
    type: Google.Cloud.Cloudsecuritycompliance.V1.ControlFamily,
    json_name: "controlFamily",
    deprecated: false

  field :cloud_control_details, 12,
    repeated: true,
    type: Google.Cloud.Cloudsecuritycompliance.V1.CloudControlAuditDetails,
    json_name: "cloudControlDetails",
    deprecated: false

  field :report_summary, 13,
    type: Google.Cloud.Cloudsecuritycompliance.V1.ReportSummary,
    json_name: "reportSummary",
    deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.FindingDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :compliance_state, 2,
    type: Google.Cloud.Cloudsecuritycompliance.V1.ComplianceState,
    json_name: "complianceState",
    enum: true,
    deprecated: false

  field :observation, 3,
    type: Google.Cloud.Cloudsecuritycompliance.V1.ObservationDetails,
    deprecated: false

  field :evidence, 4,
    type: Google.Cloud.Cloudsecuritycompliance.V1.EvidenceDetails,
    deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.ObservationDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :current_value, 1, type: :string, json_name: "currentValue", deprecated: false
  field :expected_value, 2, type: :string, json_name: "expectedValue", deprecated: false
  field :guidance, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.EvidenceDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource, 1, type: :string, deprecated: false
  field :service, 2, type: :string, deprecated: false
  field :evidence_path, 3, type: :string, json_name: "evidencePath", deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.CloudControlAuditDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :cloud_control, 1, type: :string, json_name: "cloudControl", deprecated: false
  field :cloud_control_id, 2, type: :string, json_name: "cloudControlId", deprecated: false

  field :cloud_control_description, 3,
    type: :string,
    json_name: "cloudControlDescription",
    deprecated: false

  field :compliance_state, 4,
    type: Google.Cloud.Cloudsecuritycompliance.V1.ComplianceState,
    json_name: "complianceState",
    enum: true,
    deprecated: false

  field :report_summary, 5,
    type: Google.Cloud.Cloudsecuritycompliance.V1.ReportSummary,
    json_name: "reportSummary",
    deprecated: false

  field :findings, 6,
    repeated: true,
    type: Google.Cloud.Cloudsecuritycompliance.V1.FindingDetails,
    deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.Audit.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.cloudsecuritycompliance.v1.Audit",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GenerateFrameworkAuditScopeReport,
      Google.Cloud.Cloudsecuritycompliance.V1.GenerateFrameworkAuditScopeReportRequest,
      Google.Cloud.Cloudsecuritycompliance.V1.GenerateFrameworkAuditScopeReportResponse

  rpc :CreateFrameworkAudit,
      Google.Cloud.Cloudsecuritycompliance.V1.CreateFrameworkAuditRequest,
      Google.Longrunning.Operation

  rpc :ListFrameworkAudits,
      Google.Cloud.Cloudsecuritycompliance.V1.ListFrameworkAuditsRequest,
      Google.Cloud.Cloudsecuritycompliance.V1.ListFrameworkAuditsResponse

  rpc :GetFrameworkAudit,
      Google.Cloud.Cloudsecuritycompliance.V1.GetFrameworkAuditRequest,
      Google.Cloud.Cloudsecuritycompliance.V1.FrameworkAudit
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.Audit.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Cloudsecuritycompliance.V1.Audit.Service
end
