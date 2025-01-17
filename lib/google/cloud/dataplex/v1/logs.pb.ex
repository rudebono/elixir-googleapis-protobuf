defmodule Google.Cloud.Dataplex.V1.DiscoveryEvent.EventType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :EVENT_TYPE_UNSPECIFIED, 0
  field :CONFIG, 1
  field :ENTITY_CREATED, 2
  field :ENTITY_UPDATED, 3
  field :ENTITY_DELETED, 4
  field :PARTITION_CREATED, 5
  field :PARTITION_UPDATED, 6
  field :PARTITION_DELETED, 7
  field :TABLE_PUBLISHED, 10
  field :TABLE_UPDATED, 11
  field :TABLE_IGNORED, 12
  field :TABLE_DELETED, 13
end

defmodule Google.Cloud.Dataplex.V1.DiscoveryEvent.EntityType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :ENTITY_TYPE_UNSPECIFIED, 0
  field :TABLE, 1
  field :FILESET, 2
end

defmodule Google.Cloud.Dataplex.V1.DiscoveryEvent.TableType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :TABLE_TYPE_UNSPECIFIED, 0
  field :EXTERNAL_TABLE, 1
  field :BIGLAKE_TABLE, 2
  field :OBJECT_TABLE, 3
end

defmodule Google.Cloud.Dataplex.V1.JobEvent.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :SPARK, 1
  field :NOTEBOOK, 2
end

defmodule Google.Cloud.Dataplex.V1.JobEvent.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :SUCCEEDED, 1
  field :FAILED, 2
  field :CANCELLED, 3
  field :ABORTED, 4
end

defmodule Google.Cloud.Dataplex.V1.JobEvent.Service do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :SERVICE_UNSPECIFIED, 0
  field :DATAPROC, 1
end

defmodule Google.Cloud.Dataplex.V1.JobEvent.ExecutionTrigger do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :EXECUTION_TRIGGER_UNSPECIFIED, 0
  field :TASK_CONFIG, 1
  field :RUN_REQUEST, 2
end

defmodule Google.Cloud.Dataplex.V1.SessionEvent.EventType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :EVENT_TYPE_UNSPECIFIED, 0
  field :START, 1
  field :STOP, 2
  field :QUERY, 3
  field :CREATE, 4
end

defmodule Google.Cloud.Dataplex.V1.SessionEvent.QueryDetail.Engine do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :ENGINE_UNSPECIFIED, 0
  field :SPARK_SQL, 1
  field :BIGQUERY, 2
end

defmodule Google.Cloud.Dataplex.V1.GovernanceEvent.EventType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :EVENT_TYPE_UNSPECIFIED, 0
  field :RESOURCE_IAM_POLICY_UPDATE, 1
  field :BIGQUERY_TABLE_CREATE, 2
  field :BIGQUERY_TABLE_UPDATE, 3
  field :BIGQUERY_TABLE_DELETE, 4
  field :BIGQUERY_CONNECTION_CREATE, 5
  field :BIGQUERY_CONNECTION_UPDATE, 6
  field :BIGQUERY_CONNECTION_DELETE, 7
  field :BIGQUERY_TAXONOMY_CREATE, 10
  field :BIGQUERY_POLICY_TAG_CREATE, 11
  field :BIGQUERY_POLICY_TAG_DELETE, 12
  field :BIGQUERY_POLICY_TAG_SET_IAM_POLICY, 13
  field :ACCESS_POLICY_UPDATE, 14
  field :GOVERNANCE_RULE_MATCHED_RESOURCES, 15
  field :GOVERNANCE_RULE_SEARCH_LIMIT_EXCEEDS, 16
  field :GOVERNANCE_RULE_ERRORS, 17
  field :GOVERNANCE_RULE_PROCESSING, 18
end

defmodule Google.Cloud.Dataplex.V1.GovernanceEvent.Entity.EntityType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :ENTITY_TYPE_UNSPECIFIED, 0
  field :TABLE, 1
  field :FILESET, 2
end

defmodule Google.Cloud.Dataplex.V1.DataScanEvent.ScanType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :SCAN_TYPE_UNSPECIFIED, 0
  field :DATA_PROFILE, 1
  field :DATA_QUALITY, 2
  field :DATA_DISCOVERY, 4
end

defmodule Google.Cloud.Dataplex.V1.DataScanEvent.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :STARTED, 1
  field :SUCCEEDED, 2
  field :FAILED, 3
  field :CANCELLED, 4
  field :CREATED, 5
end

defmodule Google.Cloud.Dataplex.V1.DataScanEvent.Trigger do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :TRIGGER_UNSPECIFIED, 0
  field :ON_DEMAND, 1
  field :SCHEDULE, 2
end

defmodule Google.Cloud.Dataplex.V1.DataScanEvent.Scope do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :SCOPE_UNSPECIFIED, 0
  field :FULL, 1
  field :INCREMENTAL, 2
end

defmodule Google.Cloud.Dataplex.V1.DataScanEvent.PostScanActionsResult.BigQueryExportResult.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :SUCCEEDED, 1
  field :FAILED, 2
  field :SKIPPED, 3
end

defmodule Google.Cloud.Dataplex.V1.DataQualityScanRuleResult.RuleType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :RULE_TYPE_UNSPECIFIED, 0
  field :NON_NULL_EXPECTATION, 1
  field :RANGE_EXPECTATION, 2
  field :REGEX_EXPECTATION, 3
  field :ROW_CONDITION_EXPECTATION, 4
  field :SET_EXPECTATION, 5
  field :STATISTIC_RANGE_EXPECTATION, 6
  field :TABLE_CONDITION_EXPECTATION, 7
  field :UNIQUENESS_EXPECTATION, 8
  field :SQL_ASSERTION, 9
end

defmodule Google.Cloud.Dataplex.V1.DataQualityScanRuleResult.EvaluationType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :EVALUATION_TYPE_UNSPECIFIED, 0
  field :PER_ROW, 1
  field :AGGREGATE, 2
end

defmodule Google.Cloud.Dataplex.V1.DataQualityScanRuleResult.Result do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :RESULT_UNSPECIFIED, 0
  field :PASSED, 1
  field :FAILED, 2
end

defmodule Google.Cloud.Dataplex.V1.DiscoveryEvent.ConfigDetails.ParametersEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dataplex.V1.DiscoveryEvent.ConfigDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parameters, 1,
    repeated: true,
    type: Google.Cloud.Dataplex.V1.DiscoveryEvent.ConfigDetails.ParametersEntry,
    map: true
end

defmodule Google.Cloud.Dataplex.V1.DiscoveryEvent.EntityDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :entity, 1, type: :string
  field :type, 2, type: Google.Cloud.Dataplex.V1.DiscoveryEvent.EntityType, enum: true
end

defmodule Google.Cloud.Dataplex.V1.DiscoveryEvent.TableDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :table, 1, type: :string
  field :type, 2, type: Google.Cloud.Dataplex.V1.DiscoveryEvent.TableType, enum: true
end

defmodule Google.Cloud.Dataplex.V1.DiscoveryEvent.PartitionDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :partition, 1, type: :string
  field :entity, 2, type: :string
  field :type, 3, type: Google.Cloud.Dataplex.V1.DiscoveryEvent.EntityType, enum: true

  field :sampled_data_locations, 4,
    repeated: true,
    type: :string,
    json_name: "sampledDataLocations"
end

defmodule Google.Cloud.Dataplex.V1.DiscoveryEvent.ActionDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :type, 1, type: :string
  field :issue, 2, type: :string
end

defmodule Google.Cloud.Dataplex.V1.DiscoveryEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :details, 0

  field :message, 1, type: :string
  field :lake_id, 2, type: :string, json_name: "lakeId"
  field :zone_id, 3, type: :string, json_name: "zoneId"
  field :asset_id, 4, type: :string, json_name: "assetId"
  field :data_location, 5, type: :string, json_name: "dataLocation"
  field :datascan_id, 6, type: :string, json_name: "datascanId"
  field :type, 10, type: Google.Cloud.Dataplex.V1.DiscoveryEvent.EventType, enum: true
  field :config, 20, type: Google.Cloud.Dataplex.V1.DiscoveryEvent.ConfigDetails, oneof: 0
  field :entity, 21, type: Google.Cloud.Dataplex.V1.DiscoveryEvent.EntityDetails, oneof: 0
  field :partition, 22, type: Google.Cloud.Dataplex.V1.DiscoveryEvent.PartitionDetails, oneof: 0
  field :action, 23, type: Google.Cloud.Dataplex.V1.DiscoveryEvent.ActionDetails, oneof: 0
  field :table, 24, type: Google.Cloud.Dataplex.V1.DiscoveryEvent.TableDetails, oneof: 0
end

defmodule Google.Cloud.Dataplex.V1.JobEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :message, 1, type: :string
  field :job_id, 2, type: :string, json_name: "jobId"
  field :start_time, 3, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 4, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :state, 5, type: Google.Cloud.Dataplex.V1.JobEvent.State, enum: true
  field :retries, 6, type: :int32
  field :type, 7, type: Google.Cloud.Dataplex.V1.JobEvent.Type, enum: true
  field :service, 8, type: Google.Cloud.Dataplex.V1.JobEvent.Service, enum: true
  field :service_job, 9, type: :string, json_name: "serviceJob"

  field :execution_trigger, 11,
    type: Google.Cloud.Dataplex.V1.JobEvent.ExecutionTrigger,
    json_name: "executionTrigger",
    enum: true
end

defmodule Google.Cloud.Dataplex.V1.SessionEvent.QueryDetail do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :query_id, 1, type: :string, json_name: "queryId"
  field :query_text, 2, type: :string, json_name: "queryText"
  field :engine, 3, type: Google.Cloud.Dataplex.V1.SessionEvent.QueryDetail.Engine, enum: true
  field :duration, 4, type: Google.Protobuf.Duration
  field :result_size_bytes, 5, type: :int64, json_name: "resultSizeBytes"
  field :data_processed_bytes, 6, type: :int64, json_name: "dataProcessedBytes"
end

defmodule Google.Cloud.Dataplex.V1.SessionEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :detail, 0

  field :message, 1, type: :string
  field :user_id, 2, type: :string, json_name: "userId"
  field :session_id, 3, type: :string, json_name: "sessionId"
  field :type, 4, type: Google.Cloud.Dataplex.V1.SessionEvent.EventType, enum: true
  field :query, 5, type: Google.Cloud.Dataplex.V1.SessionEvent.QueryDetail, oneof: 0
  field :event_succeeded, 6, type: :bool, json_name: "eventSucceeded"
  field :fast_startup_enabled, 7, type: :bool, json_name: "fastStartupEnabled"
  field :unassigned_duration, 8, type: Google.Protobuf.Duration, json_name: "unassignedDuration"
end

defmodule Google.Cloud.Dataplex.V1.GovernanceEvent.Entity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :entity, 1, type: :string, deprecated: false

  field :entity_type, 2,
    type: Google.Cloud.Dataplex.V1.GovernanceEvent.Entity.EntityType,
    json_name: "entityType",
    enum: true
end

defmodule Google.Cloud.Dataplex.V1.GovernanceEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :message, 1, type: :string

  field :event_type, 2,
    type: Google.Cloud.Dataplex.V1.GovernanceEvent.EventType,
    json_name: "eventType",
    enum: true

  field :entity, 3, proto3_optional: true, type: Google.Cloud.Dataplex.V1.GovernanceEvent.Entity
end

defmodule Google.Cloud.Dataplex.V1.DataScanEvent.DataProfileResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :row_count, 1, type: :int64, json_name: "rowCount"
end

defmodule Google.Cloud.Dataplex.V1.DataScanEvent.DataQualityResult.DimensionPassedEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :bool
end

defmodule Google.Cloud.Dataplex.V1.DataScanEvent.DataQualityResult.DimensionScoreEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :float
end

defmodule Google.Cloud.Dataplex.V1.DataScanEvent.DataQualityResult.ColumnScoreEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :float
end

defmodule Google.Cloud.Dataplex.V1.DataScanEvent.DataQualityResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :row_count, 1, type: :int64, json_name: "rowCount"
  field :passed, 2, type: :bool

  field :dimension_passed, 3,
    repeated: true,
    type: Google.Cloud.Dataplex.V1.DataScanEvent.DataQualityResult.DimensionPassedEntry,
    json_name: "dimensionPassed",
    map: true

  field :score, 4, type: :float

  field :dimension_score, 5,
    repeated: true,
    type: Google.Cloud.Dataplex.V1.DataScanEvent.DataQualityResult.DimensionScoreEntry,
    json_name: "dimensionScore",
    map: true

  field :column_score, 6,
    repeated: true,
    type: Google.Cloud.Dataplex.V1.DataScanEvent.DataQualityResult.ColumnScoreEntry,
    json_name: "columnScore",
    map: true
end

defmodule Google.Cloud.Dataplex.V1.DataScanEvent.DataProfileAppliedConfigs do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :sampling_percent, 1, type: :float, json_name: "samplingPercent"
  field :row_filter_applied, 2, type: :bool, json_name: "rowFilterApplied"
  field :column_filter_applied, 3, type: :bool, json_name: "columnFilterApplied"
end

defmodule Google.Cloud.Dataplex.V1.DataScanEvent.DataQualityAppliedConfigs do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :sampling_percent, 1, type: :float, json_name: "samplingPercent"
  field :row_filter_applied, 2, type: :bool, json_name: "rowFilterApplied"
end

defmodule Google.Cloud.Dataplex.V1.DataScanEvent.PostScanActionsResult.BigQueryExportResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :state, 1,
    type: Google.Cloud.Dataplex.V1.DataScanEvent.PostScanActionsResult.BigQueryExportResult.State,
    enum: true

  field :message, 2, type: :string
end

defmodule Google.Cloud.Dataplex.V1.DataScanEvent.PostScanActionsResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :bigquery_export_result, 1,
    type: Google.Cloud.Dataplex.V1.DataScanEvent.PostScanActionsResult.BigQueryExportResult,
    json_name: "bigqueryExportResult"
end

defmodule Google.Cloud.Dataplex.V1.DataScanEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :result, 0

  oneof :appliedConfigs, 1

  field :data_source, 1, type: :string, json_name: "dataSource"
  field :job_id, 2, type: :string, json_name: "jobId"
  field :create_time, 12, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :start_time, 3, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 4, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :type, 5, type: Google.Cloud.Dataplex.V1.DataScanEvent.ScanType, enum: true
  field :state, 6, type: Google.Cloud.Dataplex.V1.DataScanEvent.State, enum: true
  field :message, 7, type: :string
  field :spec_version, 8, type: :string, json_name: "specVersion"
  field :trigger, 9, type: Google.Cloud.Dataplex.V1.DataScanEvent.Trigger, enum: true
  field :scope, 10, type: Google.Cloud.Dataplex.V1.DataScanEvent.Scope, enum: true

  field :data_profile, 101,
    type: Google.Cloud.Dataplex.V1.DataScanEvent.DataProfileResult,
    json_name: "dataProfile",
    oneof: 0

  field :data_quality, 102,
    type: Google.Cloud.Dataplex.V1.DataScanEvent.DataQualityResult,
    json_name: "dataQuality",
    oneof: 0

  field :data_profile_configs, 201,
    type: Google.Cloud.Dataplex.V1.DataScanEvent.DataProfileAppliedConfigs,
    json_name: "dataProfileConfigs",
    oneof: 1

  field :data_quality_configs, 202,
    type: Google.Cloud.Dataplex.V1.DataScanEvent.DataQualityAppliedConfigs,
    json_name: "dataQualityConfigs",
    oneof: 1

  field :post_scan_actions_result, 11,
    type: Google.Cloud.Dataplex.V1.DataScanEvent.PostScanActionsResult,
    json_name: "postScanActionsResult"
end

defmodule Google.Cloud.Dataplex.V1.DataQualityScanRuleResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :job_id, 1, type: :string, json_name: "jobId"
  field :data_source, 2, type: :string, json_name: "dataSource"
  field :column, 3, type: :string
  field :rule_name, 4, type: :string, json_name: "ruleName"

  field :rule_type, 5,
    type: Google.Cloud.Dataplex.V1.DataQualityScanRuleResult.RuleType,
    json_name: "ruleType",
    enum: true

  field :evalution_type, 6,
    type: Google.Cloud.Dataplex.V1.DataQualityScanRuleResult.EvaluationType,
    json_name: "evalutionType",
    enum: true

  field :rule_dimension, 7, type: :string, json_name: "ruleDimension"
  field :threshold_percent, 8, type: :double, json_name: "thresholdPercent"
  field :result, 9, type: Google.Cloud.Dataplex.V1.DataQualityScanRuleResult.Result, enum: true
  field :evaluated_row_count, 10, type: :int64, json_name: "evaluatedRowCount"
  field :passed_row_count, 11, type: :int64, json_name: "passedRowCount"
  field :null_row_count, 12, type: :int64, json_name: "nullRowCount"
  field :assertion_row_count, 13, type: :int64, json_name: "assertionRowCount"
end
