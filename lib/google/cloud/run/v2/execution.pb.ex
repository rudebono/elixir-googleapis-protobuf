defmodule Google.Cloud.Run.V2.GetExecutionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Run.V2.ListExecutionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :show_deleted, 4, type: :bool, json_name: "showDeleted"
end

defmodule Google.Cloud.Run.V2.ListExecutionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :executions, 1, repeated: true, type: Google.Cloud.Run.V2.Execution
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Run.V2.DeleteExecutionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :validate_only, 2, type: :bool, json_name: "validateOnly"
  field :etag, 3, type: :string
end

defmodule Google.Cloud.Run.V2.Execution.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Run.V2.Execution.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Run.V2.Execution do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :uid, 2, type: :string, deprecated: false
  field :generation, 3, type: :int64, deprecated: false
  field :labels, 4, repeated: true, type: Google.Cloud.Run.V2.Execution.LabelsEntry, map: true

  field :annotations, 5,
    repeated: true,
    type: Google.Cloud.Run.V2.Execution.AnnotationsEntry,
    map: true

  field :create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :start_time, 22,
    type: Google.Protobuf.Timestamp,
    json_name: "startTime",
    deprecated: false

  field :completion_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "completionTime",
    deprecated: false

  field :update_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :delete_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "deleteTime",
    deprecated: false

  field :expire_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "expireTime",
    deprecated: false

  field :launch_stage, 11, type: Google.Api.LaunchStage, json_name: "launchStage", enum: true
  field :job, 12, type: :string, deprecated: false
  field :parallelism, 13, type: :int32, deprecated: false
  field :task_count, 14, type: :int32, json_name: "taskCount", deprecated: false
  field :template, 15, type: Google.Cloud.Run.V2.TaskTemplate, deprecated: false
  field :reconciling, 16, type: :bool, deprecated: false
  field :conditions, 17, repeated: true, type: Google.Cloud.Run.V2.Condition, deprecated: false
  field :observed_generation, 18, type: :int64, json_name: "observedGeneration", deprecated: false
  field :running_count, 19, type: :int32, json_name: "runningCount", deprecated: false
  field :succeeded_count, 20, type: :int32, json_name: "succeededCount", deprecated: false
  field :failed_count, 21, type: :int32, json_name: "failedCount", deprecated: false
  field :cancelled_count, 24, type: :int32, json_name: "cancelledCount", deprecated: false
  field :retried_count, 25, type: :int32, json_name: "retriedCount", deprecated: false
  field :log_uri, 26, type: :string, json_name: "logUri", deprecated: false
  field :etag, 99, type: :string, deprecated: false
end

defmodule Google.Cloud.Run.V2.Executions.Service do
  @moduledoc false

  use GRPC.Service, name: "google.cloud.run.v2.Executions", protoc_gen_elixir_version: "0.12.0"

  rpc :GetExecution, Google.Cloud.Run.V2.GetExecutionRequest, Google.Cloud.Run.V2.Execution

  rpc :ListExecutions,
      Google.Cloud.Run.V2.ListExecutionsRequest,
      Google.Cloud.Run.V2.ListExecutionsResponse

  rpc :DeleteExecution, Google.Cloud.Run.V2.DeleteExecutionRequest, Google.Longrunning.Operation
end

defmodule Google.Cloud.Run.V2.Executions.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Run.V2.Executions.Service
end