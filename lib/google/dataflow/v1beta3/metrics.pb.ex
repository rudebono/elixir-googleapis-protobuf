defmodule Google.Dataflow.V1beta3.ExecutionState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :EXECUTION_STATE_UNKNOWN, 0
  field :EXECUTION_STATE_NOT_STARTED, 1
  field :EXECUTION_STATE_RUNNING, 2
  field :EXECUTION_STATE_SUCCEEDED, 3
  field :EXECUTION_STATE_FAILED, 4
  field :EXECUTION_STATE_CANCELLED, 5
end

defmodule Google.Dataflow.V1beta3.MetricStructuredName.ContextEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Dataflow.V1beta3.MetricStructuredName do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :origin, 1, type: :string
  field :name, 2, type: :string

  field :context, 3,
    repeated: true,
    type: Google.Dataflow.V1beta3.MetricStructuredName.ContextEntry,
    map: true
end

defmodule Google.Dataflow.V1beta3.MetricUpdate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: Google.Dataflow.V1beta3.MetricStructuredName
  field :kind, 2, type: :string
  field :cumulative, 3, type: :bool
  field :scalar, 4, type: Google.Protobuf.Value
  field :mean_sum, 5, type: Google.Protobuf.Value, json_name: "meanSum"
  field :mean_count, 6, type: Google.Protobuf.Value, json_name: "meanCount"
  field :set, 7, type: Google.Protobuf.Value
  field :trie, 13, type: Google.Protobuf.Value
  field :distribution, 11, type: Google.Protobuf.Value
  field :gauge, 12, type: Google.Protobuf.Value
  field :internal, 8, type: Google.Protobuf.Value
  field :update_time, 9, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Dataflow.V1beta3.GetJobMetricsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :job_id, 2, type: :string, json_name: "jobId"
  field :start_time, 3, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :location, 4, type: :string
end

defmodule Google.Dataflow.V1beta3.JobMetrics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :metric_time, 1, type: Google.Protobuf.Timestamp, json_name: "metricTime"
  field :metrics, 2, repeated: true, type: Google.Dataflow.V1beta3.MetricUpdate
end

defmodule Google.Dataflow.V1beta3.GetJobExecutionDetailsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :job_id, 2, type: :string, json_name: "jobId"
  field :location, 3, type: :string
  field :page_size, 4, type: :int32, json_name: "pageSize"
  field :page_token, 5, type: :string, json_name: "pageToken"
end

defmodule Google.Dataflow.V1beta3.ProgressTimeseries.Point do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :time, 1, type: Google.Protobuf.Timestamp
  field :value, 2, type: :double
end

defmodule Google.Dataflow.V1beta3.ProgressTimeseries do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :current_progress, 1, type: :double, json_name: "currentProgress"

  field :data_points, 2,
    repeated: true,
    type: Google.Dataflow.V1beta3.ProgressTimeseries.Point,
    json_name: "dataPoints"
end

defmodule Google.Dataflow.V1beta3.StragglerInfo.StragglerDebuggingInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :straggler_debugging_info_value, 0

  field :hot_key, 1,
    type: Google.Dataflow.V1beta3.HotKeyDebuggingInfo,
    json_name: "hotKey",
    oneof: 0
end

defmodule Google.Dataflow.V1beta3.StragglerInfo.CausesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Dataflow.V1beta3.StragglerInfo.StragglerDebuggingInfo
end

defmodule Google.Dataflow.V1beta3.StragglerInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"

  field :causes, 2,
    repeated: true,
    type: Google.Dataflow.V1beta3.StragglerInfo.CausesEntry,
    map: true
end

defmodule Google.Dataflow.V1beta3.StreamingStragglerInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :worker_name, 3, type: :string, json_name: "workerName"
  field :data_watermark_lag, 4, type: Google.Protobuf.Duration, json_name: "dataWatermarkLag"
  field :system_watermark_lag, 5, type: Google.Protobuf.Duration, json_name: "systemWatermarkLag"
end

defmodule Google.Dataflow.V1beta3.Straggler do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :straggler_info, 0

  field :batch_straggler, 1,
    type: Google.Dataflow.V1beta3.StragglerInfo,
    json_name: "batchStraggler",
    oneof: 0

  field :streaming_straggler, 2,
    type: Google.Dataflow.V1beta3.StreamingStragglerInfo,
    json_name: "streamingStraggler",
    oneof: 0
end

defmodule Google.Dataflow.V1beta3.HotKeyDebuggingInfo.HotKeyInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :hot_key_age, 1, type: Google.Protobuf.Duration, json_name: "hotKeyAge"
  field :key, 2, type: :string
  field :key_truncated, 3, type: :bool, json_name: "keyTruncated"
end

defmodule Google.Dataflow.V1beta3.HotKeyDebuggingInfo.DetectedHotKeysEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :uint64
  field :value, 2, type: Google.Dataflow.V1beta3.HotKeyDebuggingInfo.HotKeyInfo
end

defmodule Google.Dataflow.V1beta3.HotKeyDebuggingInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :detected_hot_keys, 1,
    repeated: true,
    type: Google.Dataflow.V1beta3.HotKeyDebuggingInfo.DetectedHotKeysEntry,
    json_name: "detectedHotKeys",
    map: true
end

defmodule Google.Dataflow.V1beta3.StragglerSummary.StragglerCauseCountEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :int64
end

defmodule Google.Dataflow.V1beta3.StragglerSummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :total_straggler_count, 1, type: :int64, json_name: "totalStragglerCount"

  field :straggler_cause_count, 2,
    repeated: true,
    type: Google.Dataflow.V1beta3.StragglerSummary.StragglerCauseCountEntry,
    json_name: "stragglerCauseCount",
    map: true

  field :recent_stragglers, 3,
    repeated: true,
    type: Google.Dataflow.V1beta3.Straggler,
    json_name: "recentStragglers"
end

defmodule Google.Dataflow.V1beta3.StageSummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :stage_id, 1, type: :string, json_name: "stageId"
  field :state, 2, type: Google.Dataflow.V1beta3.ExecutionState, enum: true
  field :start_time, 3, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 4, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :progress, 5, type: Google.Dataflow.V1beta3.ProgressTimeseries
  field :metrics, 6, repeated: true, type: Google.Dataflow.V1beta3.MetricUpdate

  field :straggler_summary, 7,
    type: Google.Dataflow.V1beta3.StragglerSummary,
    json_name: "stragglerSummary"
end

defmodule Google.Dataflow.V1beta3.JobExecutionDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :stages, 1, repeated: true, type: Google.Dataflow.V1beta3.StageSummary
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Dataflow.V1beta3.GetStageExecutionDetailsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :job_id, 2, type: :string, json_name: "jobId"
  field :location, 3, type: :string
  field :stage_id, 4, type: :string, json_name: "stageId"
  field :page_size, 5, type: :int32, json_name: "pageSize"
  field :page_token, 6, type: :string, json_name: "pageToken"
  field :start_time, 7, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 8, type: Google.Protobuf.Timestamp, json_name: "endTime"
end

defmodule Google.Dataflow.V1beta3.WorkItemDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :task_id, 1, type: :string, json_name: "taskId"
  field :attempt_id, 2, type: :string, json_name: "attemptId"
  field :start_time, 3, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 4, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :state, 5, type: Google.Dataflow.V1beta3.ExecutionState, enum: true
  field :progress, 6, type: Google.Dataflow.V1beta3.ProgressTimeseries
  field :metrics, 7, repeated: true, type: Google.Dataflow.V1beta3.MetricUpdate

  field :straggler_info, 8,
    type: Google.Dataflow.V1beta3.StragglerInfo,
    json_name: "stragglerInfo"
end

defmodule Google.Dataflow.V1beta3.WorkerDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :worker_name, 1, type: :string, json_name: "workerName"

  field :work_items, 2,
    repeated: true,
    type: Google.Dataflow.V1beta3.WorkItemDetails,
    json_name: "workItems"
end

defmodule Google.Dataflow.V1beta3.StageExecutionDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :workers, 1, repeated: true, type: Google.Dataflow.V1beta3.WorkerDetails
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Dataflow.V1beta3.MetricsV1Beta3.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.dataflow.v1beta3.MetricsV1Beta3",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GetJobMetrics,
      Google.Dataflow.V1beta3.GetJobMetricsRequest,
      Google.Dataflow.V1beta3.JobMetrics

  rpc :GetJobExecutionDetails,
      Google.Dataflow.V1beta3.GetJobExecutionDetailsRequest,
      Google.Dataflow.V1beta3.JobExecutionDetails

  rpc :GetStageExecutionDetails,
      Google.Dataflow.V1beta3.GetStageExecutionDetailsRequest,
      Google.Dataflow.V1beta3.StageExecutionDetails
end

defmodule Google.Dataflow.V1beta3.MetricsV1Beta3.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Dataflow.V1beta3.MetricsV1Beta3.Service
end
