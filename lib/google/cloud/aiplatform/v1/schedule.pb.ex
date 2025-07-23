defmodule Google.Cloud.Aiplatform.V1.Schedule.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :PAUSED, 2
  field :COMPLETED, 3
end

defmodule Google.Cloud.Aiplatform.V1.Schedule.RunResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :scheduled_run_time, 1, type: Google.Protobuf.Timestamp, json_name: "scheduledRunTime"
  field :run_response, 2, type: :string, json_name: "runResponse"
end

defmodule Google.Cloud.Aiplatform.V1.Schedule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :time_specification, 0

  oneof :request, 1

  field :cron, 10, type: :string, oneof: 0

  field :create_pipeline_job_request, 14,
    type: Google.Cloud.Aiplatform.V1.CreatePipelineJobRequest,
    json_name: "createPipelineJobRequest",
    oneof: 1

  field :create_notebook_execution_job_request, 20,
    type: Google.Cloud.Aiplatform.V1.CreateNotebookExecutionJobRequest,
    json_name: "createNotebookExecutionJobRequest",
    oneof: 1

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :start_time, 3, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 4, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :max_run_count, 16, type: :int64, json_name: "maxRunCount", deprecated: false
  field :started_run_count, 17, type: :int64, json_name: "startedRunCount", deprecated: false
  field :state, 5, type: Google.Cloud.Aiplatform.V1.Schedule.State, enum: true, deprecated: false

  field :create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 19,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :next_run_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "nextRunTime",
    deprecated: false

  field :last_pause_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "lastPauseTime",
    deprecated: false

  field :last_resume_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "lastResumeTime",
    deprecated: false

  field :max_concurrent_run_count, 11,
    type: :int64,
    json_name: "maxConcurrentRunCount",
    deprecated: false

  field :allow_queueing, 12, type: :bool, json_name: "allowQueueing", deprecated: false
  field :catch_up, 13, type: :bool, json_name: "catchUp", deprecated: false

  field :last_scheduled_run_response, 18,
    type: Google.Cloud.Aiplatform.V1.Schedule.RunResponse,
    json_name: "lastScheduledRunResponse",
    deprecated: false
end
