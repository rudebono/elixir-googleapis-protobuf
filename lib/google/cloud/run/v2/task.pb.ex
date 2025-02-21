defmodule Google.Cloud.Run.V2.GetTaskRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Run.V2.ListTasksRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :show_deleted, 4, type: :bool, json_name: "showDeleted"
end

defmodule Google.Cloud.Run.V2.ListTasksResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :tasks, 1, repeated: true, type: Google.Cloud.Run.V2.Task
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Run.V2.Task.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Run.V2.Task.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Run.V2.Task do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :uid, 2, type: :string, deprecated: false
  field :generation, 3, type: :int64, deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Run.V2.Task.LabelsEntry,
    map: true,
    deprecated: false

  field :annotations, 5,
    repeated: true,
    type: Google.Cloud.Run.V2.Task.AnnotationsEntry,
    map: true,
    deprecated: false

  field :create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :scheduled_time, 34,
    type: Google.Protobuf.Timestamp,
    json_name: "scheduledTime",
    deprecated: false

  field :start_time, 27,
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

  field :job, 12, type: :string, deprecated: false
  field :execution, 13, type: :string, deprecated: false
  field :containers, 14, repeated: true, type: Google.Cloud.Run.V2.Container
  field :volumes, 15, repeated: true, type: Google.Cloud.Run.V2.Volume
  field :max_retries, 16, type: :int32, json_name: "maxRetries"
  field :timeout, 17, type: Google.Protobuf.Duration
  field :service_account, 18, type: :string, json_name: "serviceAccount"

  field :execution_environment, 20,
    type: Google.Cloud.Run.V2.ExecutionEnvironment,
    json_name: "executionEnvironment",
    enum: true

  field :reconciling, 21, type: :bool, deprecated: false
  field :conditions, 22, repeated: true, type: Google.Cloud.Run.V2.Condition, deprecated: false
  field :observed_generation, 23, type: :int64, json_name: "observedGeneration", deprecated: false
  field :index, 24, type: :int32, deprecated: false
  field :retried, 25, type: :int32, deprecated: false

  field :last_attempt_result, 26,
    type: Google.Cloud.Run.V2.TaskAttemptResult,
    json_name: "lastAttemptResult",
    deprecated: false

  field :encryption_key, 28, type: :string, json_name: "encryptionKey", deprecated: false

  field :vpc_access, 29,
    type: Google.Cloud.Run.V2.VpcAccess,
    json_name: "vpcAccess",
    deprecated: false

  field :log_uri, 32, type: :string, json_name: "logUri", deprecated: false
  field :satisfies_pzs, 33, type: :bool, json_name: "satisfiesPzs", deprecated: false
  field :etag, 99, type: :string, deprecated: false
end

defmodule Google.Cloud.Run.V2.TaskAttemptResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :status, 1, type: Google.Rpc.Status, deprecated: false
  field :exit_code, 2, type: :int32, json_name: "exitCode", deprecated: false
end

defmodule Google.Cloud.Run.V2.Tasks.Service do
  @moduledoc false

  use GRPC.Service, name: "google.cloud.run.v2.Tasks", protoc_gen_elixir_version: "0.14.1"

  rpc :GetTask, Google.Cloud.Run.V2.GetTaskRequest, Google.Cloud.Run.V2.Task

  rpc :ListTasks, Google.Cloud.Run.V2.ListTasksRequest, Google.Cloud.Run.V2.ListTasksResponse
end

defmodule Google.Cloud.Run.V2.Tasks.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Run.V2.Tasks.Service
end
