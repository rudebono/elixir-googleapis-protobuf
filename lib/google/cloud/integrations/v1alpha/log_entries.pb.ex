defmodule Google.Cloud.Integrations.V1alpha.ExecutionType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :EXECUTION_TYPE_UNSPECIFIED, 0
  field :INTEGRATION_VERSION, 1
  field :TEST_CASE, 2
end

defmodule Google.Cloud.Integrations.V1alpha.ExecutionInfo.ExecutionMethod do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :EXECUTION_METHOD_UNSPECIFIED, 0
  field :POST, 1
  field :SCHEDULE, 2
  field :POST_TO_QUEUE, 3
end

defmodule Google.Cloud.Integrations.V1alpha.ExecutionInfo.ReplayInfo.ReplayMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :REPLAY_MODE_UNSPECIFIED, 0
  field :REPLAY_MODE_FROM_BEGINNING, 1
  field :REPLAY_MODE_POINT_OF_FAILURE, 2
end

defmodule Google.Cloud.Integrations.V1alpha.IntegrationExecutionDetails.IntegrationExecutionState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :INTEGRATION_EXECUTION_STATE_UNSPECIFIED, 0
  field :ON_HOLD, 1
  field :IN_PROCESS, 2
  field :SUCCEEDED, 3
  field :FAILED, 4
  field :CANCELLED, 5
  field :RETRY_ON_HOLD, 6
  field :SUSPENDED, 7
end

defmodule Google.Cloud.Integrations.V1alpha.TaskExecutionDetails.TaskExecutionState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :TASK_EXECUTION_STATE_UNSPECIFIED, 0
  field :PENDING_EXECUTION, 1
  field :IN_PROCESS, 2
  field :SUCCEED, 3
  field :FAILED, 4
  field :FATAL, 5
  field :RETRY_ON_HOLD, 6
  field :SKIPPED, 7
  field :CANCELLED, 8
  field :PENDING_ROLLBACK, 9
  field :ROLLBACK_IN_PROCESS, 10
  field :ROLLEDBACK, 11
  field :SUSPENDED, 12
end

defmodule Google.Cloud.Integrations.V1alpha.ExecutionInfo.ReplayInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :original_execution_info_id, 1, type: :string, json_name: "originalExecutionInfoId"

  field :replayed_execution_info_ids, 2,
    repeated: true,
    type: :string,
    json_name: "replayedExecutionInfoIds"

  field :replay_reason, 3, type: :string, json_name: "replayReason"

  field :replay_mode, 4,
    type: Google.Cloud.Integrations.V1alpha.ExecutionInfo.ReplayInfo.ReplayMode,
    json_name: "replayMode",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Integrations.V1alpha.ExecutionInfo.RequestParamsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Integrations.V1alpha.EventParameter
end

defmodule Google.Cloud.Integrations.V1alpha.ExecutionInfo.ResponseParamsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Integrations.V1alpha.EventParameter
end

defmodule Google.Cloud.Integrations.V1alpha.ExecutionInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :integration, 2, type: :string
  field :project_id, 4, type: :string, json_name: "projectId"
  field :trigger_id, 5, type: :string, json_name: "triggerId"

  field :request_params, 6,
    repeated: true,
    type: Google.Cloud.Integrations.V1alpha.ExecutionInfo.RequestParamsEntry,
    json_name: "requestParams",
    map: true

  field :response_params, 7,
    repeated: true,
    type: Google.Cloud.Integrations.V1alpha.ExecutionInfo.ResponseParamsEntry,
    json_name: "responseParams",
    map: true

  field :errors, 10, repeated: true, type: Google.Cloud.Integrations.V1alpha.ErrorDetail

  field :task_configs, 13,
    repeated: true,
    type: Google.Cloud.Integrations.V1alpha.TaskConfig,
    json_name: "taskConfigs"

  field :integration_version_number, 14, type: :string, json_name: "integrationVersionNumber"
  field :execution_id, 15, type: :string, json_name: "executionId"

  field :integration_version_state, 16,
    type: Google.Cloud.Integrations.V1alpha.IntegrationState,
    json_name: "integrationVersionState",
    enum: true,
    deprecated: false

  field :enable_database_persistence, 17, type: :bool, json_name: "enableDatabasePersistence"

  field :cloud_logging_details, 18,
    type: Google.Cloud.Integrations.V1alpha.CloudLoggingDetails,
    json_name: "cloudLoggingDetails"

  field :integration_execution_details, 19,
    type: Google.Cloud.Integrations.V1alpha.IntegrationExecutionDetails,
    json_name: "integrationExecutionDetails"

  field :execution_type, 20,
    type: Google.Cloud.Integrations.V1alpha.ExecutionType,
    json_name: "executionType",
    enum: true

  field :execution_method, 21,
    type: Google.Cloud.Integrations.V1alpha.ExecutionInfo.ExecutionMethod,
    json_name: "executionMethod",
    enum: true

  field :integration_snapshot_number, 22, type: :int64, json_name: "integrationSnapshotNumber"

  field :replay_info, 23,
    type: Google.Cloud.Integrations.V1alpha.ExecutionInfo.ReplayInfo,
    json_name: "replayInfo"
end

defmodule Google.Cloud.Integrations.V1alpha.IntegrationExecutionDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :integration_execution_state, 1,
    type: Google.Cloud.Integrations.V1alpha.IntegrationExecutionDetails.IntegrationExecutionState,
    json_name: "integrationExecutionState",
    enum: true,
    deprecated: false

  field :integration_execution_snapshot, 2,
    repeated: true,
    type: Google.Cloud.Integrations.V1alpha.IntegrationExecutionSnapshot,
    json_name: "integrationExecutionSnapshot"

  field :execution_attempt_stats, 3,
    repeated: true,
    type: Google.Cloud.Integrations.V1alpha.AttemptStats,
    json_name: "executionAttemptStats"

  field :next_execution_time, 4, type: Google.Protobuf.Timestamp, json_name: "nextExecutionTime"
  field :execution_retries_count, 5, type: :int32, json_name: "executionRetriesCount"
  field :cancel_reason, 6, type: :string, json_name: "cancelReason"
end

defmodule Google.Cloud.Integrations.V1alpha.IntegrationExecutionSnapshot.IntegrationExecutionSnapshotMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :task_number, 1, type: :string, json_name: "taskNumber"
  field :task, 2, type: :string

  field :integration_execution_attempt_num, 3,
    type: :int32,
    json_name: "integrationExecutionAttemptNum"

  field :task_attempt_num, 4, type: :int32, json_name: "taskAttemptNum"
  field :task_label, 5, type: :string, json_name: "taskLabel"
  field :ancestor_task_numbers, 6, repeated: true, type: :string, json_name: "ancestorTaskNumbers"

  field :ancestor_iteration_numbers, 7,
    repeated: true,
    type: :string,
    json_name: "ancestorIterationNumbers"

  field :integration, 8, type: :string
end

defmodule Google.Cloud.Integrations.V1alpha.IntegrationExecutionSnapshot.ExecutionParamsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Integrations.V1alpha.EventParameter
end

defmodule Google.Cloud.Integrations.V1alpha.IntegrationExecutionSnapshot do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :checkpoint_task_number, 1, type: :string, json_name: "checkpointTaskNumber"
  field :snapshot_time, 2, type: Google.Protobuf.Timestamp, json_name: "snapshotTime"

  field :integration_execution_snapshot_metadata, 3,
    type:
      Google.Cloud.Integrations.V1alpha.IntegrationExecutionSnapshot.IntegrationExecutionSnapshotMetadata,
    json_name: "integrationExecutionSnapshotMetadata"

  field :task_execution_details, 4,
    repeated: true,
    type: Google.Cloud.Integrations.V1alpha.TaskExecutionDetails,
    json_name: "taskExecutionDetails"

  field :condition_results, 5,
    repeated: true,
    type: Google.Cloud.Integrations.V1alpha.ConditionResult,
    json_name: "conditionResults"

  field :execution_params, 6,
    repeated: true,
    type: Google.Cloud.Integrations.V1alpha.IntegrationExecutionSnapshot.ExecutionParamsEntry,
    json_name: "executionParams",
    map: true
end

defmodule Google.Cloud.Integrations.V1alpha.TaskExecutionDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :task_number, 1, type: :string, json_name: "taskNumber"

  field :task_execution_state, 2,
    type: Google.Cloud.Integrations.V1alpha.TaskExecutionDetails.TaskExecutionState,
    json_name: "taskExecutionState",
    enum: true

  field :task_attempt_stats, 3,
    repeated: true,
    type: Google.Cloud.Integrations.V1alpha.AttemptStats,
    json_name: "taskAttemptStats"
end

defmodule Google.Cloud.Integrations.V1alpha.AttemptStats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
end

defmodule Google.Cloud.Integrations.V1alpha.ErrorDetail do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :error_message, 1, type: :string, json_name: "errorMessage"
  field :task_number, 2, type: :int32, json_name: "taskNumber"
end

defmodule Google.Cloud.Integrations.V1alpha.ConditionResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :current_task_number, 1, type: :string, json_name: "currentTaskNumber"
  field :next_task_number, 2, type: :string, json_name: "nextTaskNumber"
  field :result, 3, type: :bool
end
