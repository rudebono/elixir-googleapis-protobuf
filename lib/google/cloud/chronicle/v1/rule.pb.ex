defmodule Google.Cloud.Chronicle.V1.RunFrequency do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :RUN_FREQUENCY_UNSPECIFIED, 0
  field :LIVE, 1
  field :HOURLY, 2
  field :DAILY, 3
end

defmodule Google.Cloud.Chronicle.V1.RuleType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :RULE_TYPE_UNSPECIFIED, 0
  field :SINGLE_EVENT, 1
  field :MULTI_EVENT, 2
end

defmodule Google.Cloud.Chronicle.V1.RuleView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :RULE_VIEW_UNSPECIFIED, 0
  field :BASIC, 1
  field :FULL, 2
  field :REVISION_METADATA_ONLY, 3
end

defmodule Google.Cloud.Chronicle.V1.Rule.CompilationState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :COMPILATION_STATE_UNSPECIFIED, 0
  field :SUCCEEDED, 1
  field :FAILED, 2
end

defmodule Google.Cloud.Chronicle.V1.RuleDeployment.ExecutionState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :EXECUTION_STATE_UNSPECIFIED, 0
  field :DEFAULT, 1
  field :LIMITED, 2
  field :PAUSED, 3
end

defmodule Google.Cloud.Chronicle.V1.Retrohunt.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :RUNNING, 1
  field :DONE, 2
  field :CANCELLED, 3
  field :FAILED, 4
end

defmodule Google.Cloud.Chronicle.V1.CompilationDiagnostic.Severity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SEVERITY_UNSPECIFIED, 0
  field :WARNING, 1
  field :ERROR, 2
end

defmodule Google.Cloud.Chronicle.V1.Rule.MetadataEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Chronicle.V1.Rule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :revision_id, 2, type: :string, json_name: "revisionId", deprecated: false
  field :display_name, 3, type: :string, json_name: "displayName", deprecated: false
  field :text, 4, type: :string
  field :author, 5, type: :string, deprecated: false
  field :severity, 6, type: Google.Cloud.Chronicle.V1.Severity, deprecated: false

  field :metadata, 7,
    repeated: true,
    type: Google.Cloud.Chronicle.V1.Rule.MetadataEntry,
    map: true,
    deprecated: false

  field :create_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :revision_create_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "revisionCreateTime",
    deprecated: false

  field :compilation_state, 10,
    type: Google.Cloud.Chronicle.V1.Rule.CompilationState,
    json_name: "compilationState",
    enum: true,
    deprecated: false

  field :type, 12, type: Google.Cloud.Chronicle.V1.RuleType, enum: true, deprecated: false

  field :reference_lists, 13,
    repeated: true,
    type: :string,
    json_name: "referenceLists",
    deprecated: false

  field :allowed_run_frequencies, 14,
    repeated: true,
    type: Google.Cloud.Chronicle.V1.RunFrequency,
    json_name: "allowedRunFrequencies",
    enum: true,
    deprecated: false

  field :etag, 15, type: :string
  field :scope, 16, type: :string, deprecated: false

  field :compilation_diagnostics, 17,
    repeated: true,
    type: Google.Cloud.Chronicle.V1.CompilationDiagnostic,
    json_name: "compilationDiagnostics",
    deprecated: false

  field :near_real_time_live_rule_eligible, 18,
    type: :bool,
    json_name: "nearRealTimeLiveRuleEligible",
    deprecated: false

  field :inputs_used, 20,
    type: Google.Cloud.Chronicle.V1.InputsUsed,
    json_name: "inputsUsed",
    deprecated: false
end

defmodule Google.Cloud.Chronicle.V1.RuleDeployment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :enabled, 2, type: :bool
  field :alerting, 3, type: :bool
  field :archived, 4, type: :bool

  field :archive_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "archiveTime",
    deprecated: false

  field :run_frequency, 6,
    type: Google.Cloud.Chronicle.V1.RunFrequency,
    json_name: "runFrequency",
    enum: true

  field :execution_state, 7,
    type: Google.Cloud.Chronicle.V1.RuleDeployment.ExecutionState,
    json_name: "executionState",
    enum: true,
    deprecated: false

  field :producer_rules, 8,
    repeated: true,
    type: :string,
    json_name: "producerRules",
    deprecated: false

  field :consumer_rules, 9,
    repeated: true,
    type: :string,
    json_name: "consumerRules",
    deprecated: false

  field :last_alert_status_change_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "lastAlertStatusChangeTime",
    deprecated: false
end

defmodule Google.Cloud.Chronicle.V1.Retrohunt do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string

  field :process_interval, 2,
    type: Google.Type.Interval,
    json_name: "processInterval",
    deprecated: false

  field :execution_interval, 3,
    type: Google.Type.Interval,
    json_name: "executionInterval",
    deprecated: false

  field :state, 4, type: Google.Cloud.Chronicle.V1.Retrohunt.State, enum: true, deprecated: false
  field :progress_percentage, 5, type: :float, json_name: "progressPercentage", deprecated: false
end

defmodule Google.Cloud.Chronicle.V1.CreateRuleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :rule, 2, type: Google.Cloud.Chronicle.V1.Rule, deprecated: false
end

defmodule Google.Cloud.Chronicle.V1.GetRuleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :view, 2, type: Google.Cloud.Chronicle.V1.RuleView, enum: true
end

defmodule Google.Cloud.Chronicle.V1.ListRulesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :view, 4, type: Google.Cloud.Chronicle.V1.RuleView, enum: true
  field :filter, 5, type: :string
end

defmodule Google.Cloud.Chronicle.V1.ListRulesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :rules, 1, repeated: true, type: Google.Cloud.Chronicle.V1.Rule
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Chronicle.V1.UpdateRuleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :rule, 1, type: Google.Cloud.Chronicle.V1.Rule, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Chronicle.V1.DeleteRuleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :force, 2, type: :bool, deprecated: false
end

defmodule Google.Cloud.Chronicle.V1.ListRuleRevisionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :view, 4, type: Google.Cloud.Chronicle.V1.RuleView, enum: true
end

defmodule Google.Cloud.Chronicle.V1.ListRuleRevisionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :rules, 1, repeated: true, type: Google.Cloud.Chronicle.V1.Rule
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Chronicle.V1.CreateRetrohuntRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :retrohunt, 2, type: Google.Cloud.Chronicle.V1.Retrohunt, deprecated: false
end

defmodule Google.Cloud.Chronicle.V1.GetRetrohuntRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Chronicle.V1.ListRetrohuntsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Chronicle.V1.ListRetrohuntsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :retrohunts, 1, repeated: true, type: Google.Cloud.Chronicle.V1.Retrohunt
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Chronicle.V1.GetRuleDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Chronicle.V1.ListRuleDeploymentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Chronicle.V1.ListRuleDeploymentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :rule_deployments, 1,
    repeated: true,
    type: Google.Cloud.Chronicle.V1.RuleDeployment,
    json_name: "ruleDeployments"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Chronicle.V1.UpdateRuleDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :rule_deployment, 1,
    type: Google.Cloud.Chronicle.V1.RuleDeployment,
    json_name: "ruleDeployment",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Chronicle.V1.CompilationPosition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :start_line, 1, type: :int32, json_name: "startLine", deprecated: false
  field :start_column, 2, type: :int32, json_name: "startColumn", deprecated: false
  field :end_line, 3, type: :int32, json_name: "endLine", deprecated: false
  field :end_column, 4, type: :int32, json_name: "endColumn", deprecated: false
end

defmodule Google.Cloud.Chronicle.V1.CompilationDiagnostic do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :message, 1, type: :string, deprecated: false
  field :position, 2, type: Google.Cloud.Chronicle.V1.CompilationPosition, deprecated: false

  field :severity, 3,
    type: Google.Cloud.Chronicle.V1.CompilationDiagnostic.Severity,
    enum: true,
    deprecated: false

  field :uri, 5, type: :string, deprecated: false
end

defmodule Google.Cloud.Chronicle.V1.Severity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName"
end

defmodule Google.Cloud.Chronicle.V1.RetrohuntMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :retrohunt, 1, type: :string, deprecated: false
  field :execution_interval, 2, type: Google.Type.Interval, json_name: "executionInterval"
  field :progress_percentage, 3, type: :float, json_name: "progressPercentage"
end

defmodule Google.Cloud.Chronicle.V1.InputsUsed do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :uses_udm, 1, type: :bool, json_name: "usesUdm", deprecated: false
  field :uses_entity, 2, type: :bool, json_name: "usesEntity", deprecated: false
  field :uses_detection, 3, type: :bool, json_name: "usesDetection", deprecated: false
end

defmodule Google.Cloud.Chronicle.V1.RuleService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.chronicle.v1.RuleService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :CreateRule, Google.Cloud.Chronicle.V1.CreateRuleRequest, Google.Cloud.Chronicle.V1.Rule

  rpc :GetRule, Google.Cloud.Chronicle.V1.GetRuleRequest, Google.Cloud.Chronicle.V1.Rule

  rpc :ListRules,
      Google.Cloud.Chronicle.V1.ListRulesRequest,
      Google.Cloud.Chronicle.V1.ListRulesResponse

  rpc :UpdateRule, Google.Cloud.Chronicle.V1.UpdateRuleRequest, Google.Cloud.Chronicle.V1.Rule

  rpc :DeleteRule, Google.Cloud.Chronicle.V1.DeleteRuleRequest, Google.Protobuf.Empty

  rpc :ListRuleRevisions,
      Google.Cloud.Chronicle.V1.ListRuleRevisionsRequest,
      Google.Cloud.Chronicle.V1.ListRuleRevisionsResponse

  rpc :CreateRetrohunt,
      Google.Cloud.Chronicle.V1.CreateRetrohuntRequest,
      Google.Longrunning.Operation

  rpc :GetRetrohunt,
      Google.Cloud.Chronicle.V1.GetRetrohuntRequest,
      Google.Cloud.Chronicle.V1.Retrohunt

  rpc :ListRetrohunts,
      Google.Cloud.Chronicle.V1.ListRetrohuntsRequest,
      Google.Cloud.Chronicle.V1.ListRetrohuntsResponse

  rpc :GetRuleDeployment,
      Google.Cloud.Chronicle.V1.GetRuleDeploymentRequest,
      Google.Cloud.Chronicle.V1.RuleDeployment

  rpc :ListRuleDeployments,
      Google.Cloud.Chronicle.V1.ListRuleDeploymentsRequest,
      Google.Cloud.Chronicle.V1.ListRuleDeploymentsResponse

  rpc :UpdateRuleDeployment,
      Google.Cloud.Chronicle.V1.UpdateRuleDeploymentRequest,
      Google.Cloud.Chronicle.V1.RuleDeployment
end

defmodule Google.Cloud.Chronicle.V1.RuleService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Chronicle.V1.RuleService.Service
end
