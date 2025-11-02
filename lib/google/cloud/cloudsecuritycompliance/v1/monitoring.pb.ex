defmodule Google.Cloud.Cloudsecuritycompliance.V1.EvaluationState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :EVALUATION_STATE_UNSPECIFIED, 0
  field :EVALUATION_STATE_PASSED, 1
  field :EVALUATION_STATE_FAILED, 2
  field :EVALUATION_STATE_NOT_ASSESSED, 3
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.FindingClass do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :FINDING_CLASS_UNSPECIFIED, 0
  field :THREAT, 1
  field :VULNERABILITY, 2
  field :MISCONFIGURATION, 3
  field :OBSERVATION, 4
  field :SCC_ERROR, 5
  field :POSTURE_VIOLATION, 6
  field :TOXIC_COMBINATION, 7
  field :SENSITIVE_DATA_RISK, 8
  field :CHOKEPOINT, 9
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.ListFrameworkComplianceSummariesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.ListFrameworkComplianceSummariesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :framework_compliance_summaries, 1,
    repeated: true,
    type: Google.Cloud.Cloudsecuritycompliance.V1.FrameworkComplianceSummary,
    json_name: "frameworkComplianceSummaries"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken", deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.FrameworkComplianceReport do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :framework, 1, type: :string
  field :framework_description, 2, type: :string, json_name: "frameworkDescription"

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :control_assessment_details, 4,
    type: Google.Cloud.Cloudsecuritycompliance.V1.ControlAssessmentDetails,
    json_name: "controlAssessmentDetails"

  field :framework_type, 5,
    type: Google.Cloud.Cloudsecuritycompliance.V1.Framework.FrameworkType,
    json_name: "frameworkType",
    enum: true

  field :supported_cloud_providers, 6,
    repeated: true,
    type: Google.Cloud.Cloudsecuritycompliance.V1.CloudProvider,
    json_name: "supportedCloudProviders",
    enum: true

  field :framework_categories, 7,
    repeated: true,
    type: Google.Cloud.Cloudsecuritycompliance.V1.FrameworkCategory,
    json_name: "frameworkCategories",
    enum: true

  field :framework_display_name, 8,
    type: :string,
    json_name: "frameworkDisplayName",
    deprecated: false

  field :name, 9, type: :string, deprecated: false
  field :major_revision_id, 10, type: :int64, json_name: "majorRevisionId"
  field :minor_revision_id, 11, type: :int64, json_name: "minorRevisionId"

  field :target_resource_details, 12,
    repeated: true,
    type: Google.Cloud.Cloudsecuritycompliance.V1.TargetResourceDetails,
    json_name: "targetResourceDetails"
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.FetchFrameworkComplianceReportRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.ListFindingSummariesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :end_time, 5, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: true
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.ListFindingSummariesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :finding_summaries, 1,
    repeated: true,
    type: Google.Cloud.Cloudsecuritycompliance.V1.FindingSummary,
    json_name: "findingSummaries"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken", deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.ListControlComplianceSummariesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: true
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 5, type: :string, deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.ListControlComplianceSummariesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :control_compliance_summaries, 1,
    repeated: true,
    type: Google.Cloud.Cloudsecuritycompliance.V1.ControlComplianceSummary,
    json_name: "controlComplianceSummaries"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken", deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.AggregateFrameworkComplianceReportRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :interval, 2, type: Google.Type.Interval, deprecated: false
  field :filter, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.AggregateFrameworkComplianceReportResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :aggregated_compliance_reports, 1,
    repeated: true,
    type: Google.Cloud.Cloudsecuritycompliance.V1.AggregatedComplianceReport,
    json_name: "aggregatedComplianceReports"
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.ControlAssessmentDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :passing_controls, 1, type: :int32, json_name: "passingControls"
  field :failing_controls, 2, type: :int32, json_name: "failingControls"
  field :assessed_passing_controls, 3, type: :int32, json_name: "assessedPassingControls"
  field :not_assessed_controls, 4, type: :int32, json_name: "notAssessedControls"
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.FrameworkComplianceSummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :framework, 1, type: :string

  field :control_assessment_details, 2,
    type: Google.Cloud.Cloudsecuritycompliance.V1.ControlAssessmentDetails,
    json_name: "controlAssessmentDetails"

  field :framework_type, 3,
    type: Google.Cloud.Cloudsecuritycompliance.V1.Framework.FrameworkType,
    json_name: "frameworkType",
    enum: true

  field :supported_cloud_providers, 4,
    repeated: true,
    type: Google.Cloud.Cloudsecuritycompliance.V1.CloudProvider,
    json_name: "supportedCloudProviders",
    enum: true

  field :framework_categories, 5,
    repeated: true,
    type: Google.Cloud.Cloudsecuritycompliance.V1.FrameworkCategory,
    json_name: "frameworkCategories",
    enum: true

  field :framework_display_name, 6,
    type: :string,
    json_name: "frameworkDisplayName",
    deprecated: false

  field :name, 7, type: :string, deprecated: false
  field :major_revision_id, 8, type: :int64, json_name: "majorRevisionId"
  field :minor_revision_id, 9, type: :int64, json_name: "minorRevisionId"

  field :target_resource_details, 10,
    repeated: true,
    type: Google.Cloud.Cloudsecuritycompliance.V1.TargetResourceDetails,
    json_name: "targetResourceDetails"
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.FindingSummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :finding_category, 1, type: :string, json_name: "findingCategory"

  field :finding_class, 2,
    type: Google.Cloud.Cloudsecuritycompliance.V1.FindingClass,
    json_name: "findingClass",
    enum: true

  field :severity, 3, type: Google.Cloud.Cloudsecuritycompliance.V1.Severity, enum: true
  field :finding_count, 4, type: :int64, json_name: "findingCount"

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :related_frameworks, 6,
    repeated: true,
    type: :string,
    json_name: "relatedFrameworks",
    deprecated: false

  field :name, 7, type: :string, deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.ControlComplianceSummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :control, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :description, 3, type: :string

  field :overall_evaluation_state, 4,
    type: Google.Cloud.Cloudsecuritycompliance.V1.EvaluationState,
    json_name: "overallEvaluationState",
    enum: true,
    deprecated: false

  field :total_findings_count, 5, type: :int32, json_name: "totalFindingsCount"

  field :compliance_frameworks, 6,
    repeated: true,
    type: :string,
    json_name: "complianceFrameworks"

  field :similar_controls, 7,
    repeated: true,
    type: Google.Cloud.Cloudsecuritycompliance.V1.SimilarControls,
    json_name: "similarControls"

  field :cloud_control_reports, 8,
    repeated: true,
    type: Google.Cloud.Cloudsecuritycompliance.V1.CloudControlReport,
    json_name: "cloudControlReports"

  field :control_responsibility_type, 9,
    type: Google.Cloud.Cloudsecuritycompliance.V1.RegulatoryControlResponsibilityType,
    json_name: "controlResponsibilityType",
    enum: true

  field :is_fake_control, 10, type: :bool, json_name: "isFakeControl"
  field :name, 11, type: :string, deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.CloudControlReport do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :assessment_details, 0

  field :manual_cloud_control_assessment_details, 13,
    type: Google.Cloud.Cloudsecuritycompliance.V1.ManualCloudControlAssessmentDetails,
    json_name: "manualCloudControlAssessmentDetails",
    oneof: 0

  field :cloud_control_assessment_details, 14,
    type: Google.Cloud.Cloudsecuritycompliance.V1.CloudControlAssessmentDetails,
    json_name: "cloudControlAssessmentDetails",
    oneof: 0

  field :cloud_control, 1, type: :string, json_name: "cloudControl"
  field :display_name, 2, type: :string, json_name: "displayName"
  field :description, 3, type: :string
  field :categories, 6, repeated: true, type: :string

  field :similar_controls, 9,
    repeated: true,
    type: Google.Cloud.Cloudsecuritycompliance.V1.SimilarControls,
    json_name: "similarControls"

  field :cloud_control_type, 10,
    type: Google.Cloud.Cloudsecuritycompliance.V1.CloudControl.Type,
    json_name: "cloudControlType",
    enum: true

  field :finding_category, 11, type: :string, json_name: "findingCategory"
  field :rules, 12, repeated: true, type: Google.Cloud.Cloudsecuritycompliance.V1.Rule

  field :finding_severity, 15,
    type: Google.Cloud.Cloudsecuritycompliance.V1.Severity,
    json_name: "findingSeverity",
    enum: true

  field :enforcement_mode, 16,
    type: Google.Cloud.Cloudsecuritycompliance.V1.EnforcementMode,
    json_name: "enforcementMode",
    enum: true

  field :cloud_control_deployment, 17, type: :string, json_name: "cloudControlDeployment"
  field :major_revision_id, 18, type: :int64, json_name: "majorRevisionId"
  field :minor_revision_id, 19, type: :int64, json_name: "minorRevisionId"

  field :framework_major_revision_ids, 20,
    repeated: true,
    type: :int64,
    json_name: "frameworkMajorRevisionIds"
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.ManualCloudControlAssessmentDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :manual_cloud_control_guide, 1,
    repeated: true,
    type: :string,
    json_name: "manualCloudControlGuide"
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.CloudControlAssessmentDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :findings_count, 1, type: :int32, json_name: "findingsCount"

  field :evaluation_state, 2,
    type: Google.Cloud.Cloudsecuritycompliance.V1.EvaluationState,
    json_name: "evaluationState",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.SimilarControls do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :framework, 1, type: :string
  field :control_id, 2, type: :string, json_name: "controlId"
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.AggregatedComplianceReport do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :control_assessment_details, 1,
    type: Google.Cloud.Cloudsecuritycompliance.V1.ControlAssessmentDetails,
    json_name: "controlAssessmentDetails"

  field :report_time, 2, type: Google.Protobuf.Timestamp, json_name: "reportTime"
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.TargetResourceDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :framework_deployment, 1, type: :string, json_name: "frameworkDeployment"
  field :target_resource_display_name, 2, type: :string, json_name: "targetResourceDisplayName"
  field :target_resource, 3, type: :string, json_name: "targetResource"
  field :create_time, 4, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 5, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :major_revision_id, 6, type: :int64, json_name: "majorRevisionId"
  field :minor_revision_id, 7, type: :int64, json_name: "minorRevisionId"
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.Monitoring.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.cloudsecuritycompliance.v1.Monitoring",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListFrameworkComplianceSummaries,
      Google.Cloud.Cloudsecuritycompliance.V1.ListFrameworkComplianceSummariesRequest,
      Google.Cloud.Cloudsecuritycompliance.V1.ListFrameworkComplianceSummariesResponse

  rpc :ListFindingSummaries,
      Google.Cloud.Cloudsecuritycompliance.V1.ListFindingSummariesRequest,
      Google.Cloud.Cloudsecuritycompliance.V1.ListFindingSummariesResponse

  rpc :FetchFrameworkComplianceReport,
      Google.Cloud.Cloudsecuritycompliance.V1.FetchFrameworkComplianceReportRequest,
      Google.Cloud.Cloudsecuritycompliance.V1.FrameworkComplianceReport

  rpc :ListControlComplianceSummaries,
      Google.Cloud.Cloudsecuritycompliance.V1.ListControlComplianceSummariesRequest,
      Google.Cloud.Cloudsecuritycompliance.V1.ListControlComplianceSummariesResponse

  rpc :AggregateFrameworkComplianceReport,
      Google.Cloud.Cloudsecuritycompliance.V1.AggregateFrameworkComplianceReportRequest,
      Google.Cloud.Cloudsecuritycompliance.V1.AggregateFrameworkComplianceReportResponse
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.Monitoring.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Cloudsecuritycompliance.V1.Monitoring.Service
end
