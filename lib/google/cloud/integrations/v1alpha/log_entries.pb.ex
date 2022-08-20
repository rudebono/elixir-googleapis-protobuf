defmodule Google.Cloud.Integrations.V1alpha.ExecutionInfo.PostMethod do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :POST_METHOD_UNSPECIFIED, 0
  field :POST, 1
  field :SCHEDULE, 2
end

defmodule Google.Cloud.Integrations.V1alpha.EventExecutionDetails.EventExecutionState do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :EVENT_EXECUTION_STATE_UNSPECIFIED, 0
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
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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

defmodule Google.Cloud.Integrations.V1alpha.ExecutionInfo.RequestParamsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Integrations.V1alpha.EventParameter
end

defmodule Google.Cloud.Integrations.V1alpha.ExecutionInfo.ResponseParamsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Integrations.V1alpha.EventParameter
end

defmodule Google.Cloud.Integrations.V1alpha.ExecutionInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :event_execution_info_id, 1, type: :string, json_name: "eventExecutionInfoId"
  field :integration, 2, type: :string
  field :integration_version, 3, type: :string, json_name: "integrationVersion"
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

  field :post_method, 8,
    type: Google.Cloud.Integrations.V1alpha.ExecutionInfo.PostMethod,
    json_name: "postMethod",
    enum: true

  field :event_execution_details, 9,
    type: Google.Cloud.Integrations.V1alpha.EventExecutionDetails,
    json_name: "eventExecutionDetails"

  field :errors, 10, repeated: true, type: Google.Cloud.Integrations.V1alpha.ErrorDetail
  field :product, 11, type: Google.Cloud.Integrations.V1alpha.Product, enum: true
  field :request_id, 12, type: :string, json_name: "requestId"

  field :task_configs, 13,
    repeated: true,
    type: Google.Cloud.Integrations.V1alpha.TaskConfig,
    json_name: "taskConfigs"
end

defmodule Google.Cloud.Integrations.V1alpha.EventExecutionDetails do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :event_execution_state, 1,
    type: Google.Cloud.Integrations.V1alpha.EventExecutionDetails.EventExecutionState,
    json_name: "eventExecutionState",
    enum: true

  field :event_execution_snapshot, 2,
    repeated: true,
    type: Google.Cloud.Integrations.V1alpha.EventExecutionSnapshot,
    json_name: "eventExecutionSnapshot"

  field :event_attempt_stats, 3,
    repeated: true,
    type: Google.Cloud.Integrations.V1alpha.AttemptStats,
    json_name: "eventAttemptStats"

  field :next_execution_time, 4, type: Google.Protobuf.Timestamp, json_name: "nextExecutionTime"
  field :event_retries_count, 5, type: :int32, json_name: "eventRetriesCount"
end

defmodule Google.Cloud.Integrations.V1alpha.EventExecutionSnapshot.EventExecutionSnapshotMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :task_number, 1, type: :string, json_name: "taskNumber"
  field :task, 2, type: :string
  field :event_attempt_num, 3, type: :int32, json_name: "eventAttemptNum"
  field :task_attempt_num, 4, type: :int32, json_name: "taskAttemptNum"
end

defmodule Google.Cloud.Integrations.V1alpha.EventExecutionSnapshot.EventParamsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Integrations.V1alpha.EventParameter
end

defmodule Google.Cloud.Integrations.V1alpha.EventExecutionSnapshot.DiffParamsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Integrations.V1alpha.EventParameter
end

defmodule Google.Cloud.Integrations.V1alpha.EventExecutionSnapshot do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :checkpoint_task_number, 1, type: :string, json_name: "checkpointTaskNumber"
  field :snapshot_time, 2, type: Google.Protobuf.Timestamp, json_name: "snapshotTime"

  field :event_execution_snapshot_metadata, 3,
    type: Google.Cloud.Integrations.V1alpha.EventExecutionSnapshot.EventExecutionSnapshotMetadata,
    json_name: "eventExecutionSnapshotMetadata"

  field :task_execution_details, 4,
    repeated: true,
    type: Google.Cloud.Integrations.V1alpha.TaskExecutionDetails,
    json_name: "taskExecutionDetails"

  field :condition_results, 5,
    repeated: true,
    type: Google.Cloud.Integrations.V1alpha.ConditionResult,
    json_name: "conditionResults"

  field :event_params, 6,
    repeated: true,
    type: Google.Cloud.Integrations.V1alpha.EventExecutionSnapshot.EventParamsEntry,
    json_name: "eventParams",
    map: true

  field :diff_params, 7,
    repeated: true,
    type: Google.Cloud.Integrations.V1alpha.EventExecutionSnapshot.DiffParamsEntry,
    json_name: "diffParams",
    map: true
end

defmodule Google.Cloud.Integrations.V1alpha.TaskExecutionDetails do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
end

defmodule Google.Cloud.Integrations.V1alpha.ErrorDetail do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :error_message, 1, type: :string, json_name: "errorMessage"
  field :task_number, 2, type: :int32, json_name: "taskNumber"
end

defmodule Google.Cloud.Integrations.V1alpha.ConditionResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :current_task_number, 1, type: :string, json_name: "currentTaskNumber"
  field :next_task_number, 2, type: :string, json_name: "nextTaskNumber"
  field :result, 3, type: :bool
end