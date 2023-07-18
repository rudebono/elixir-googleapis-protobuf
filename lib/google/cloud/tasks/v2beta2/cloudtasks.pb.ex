defmodule Google.Cloud.Tasks.V2beta2.ListQueuesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :read_mask, 5, type: Google.Protobuf.FieldMask, json_name: "readMask", deprecated: false
end

defmodule Google.Cloud.Tasks.V2beta2.ListQueuesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :queues, 1, repeated: true, type: Google.Cloud.Tasks.V2beta2.Queue
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Tasks.V2beta2.GetQueueRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :read_mask, 2, type: Google.Protobuf.FieldMask, json_name: "readMask", deprecated: false
end

defmodule Google.Cloud.Tasks.V2beta2.CreateQueueRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :queue, 2, type: Google.Cloud.Tasks.V2beta2.Queue, deprecated: false
end

defmodule Google.Cloud.Tasks.V2beta2.UpdateQueueRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :queue, 1, type: Google.Cloud.Tasks.V2beta2.Queue, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Tasks.V2beta2.DeleteQueueRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Tasks.V2beta2.PurgeQueueRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Tasks.V2beta2.PauseQueueRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Tasks.V2beta2.ResumeQueueRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Tasks.V2beta2.UploadQueueYamlRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :app_id, 1, type: :string, json_name: "appId", deprecated: false
  field :http_body, 2, proto3_optional: true, type: Google.Api.HttpBody, json_name: "httpBody"
end

defmodule Google.Cloud.Tasks.V2beta2.ListTasksRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :response_view, 2,
    type: Google.Cloud.Tasks.V2beta2.Task.View,
    json_name: "responseView",
    enum: true

  field :page_size, 4, type: :int32, json_name: "pageSize"
  field :page_token, 5, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Tasks.V2beta2.ListTasksResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :tasks, 1, repeated: true, type: Google.Cloud.Tasks.V2beta2.Task
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Tasks.V2beta2.GetTaskRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :response_view, 2,
    type: Google.Cloud.Tasks.V2beta2.Task.View,
    json_name: "responseView",
    enum: true
end

defmodule Google.Cloud.Tasks.V2beta2.CreateTaskRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :task, 2, type: Google.Cloud.Tasks.V2beta2.Task, deprecated: false

  field :response_view, 3,
    type: Google.Cloud.Tasks.V2beta2.Task.View,
    json_name: "responseView",
    enum: true
end

defmodule Google.Cloud.Tasks.V2beta2.DeleteTaskRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Tasks.V2beta2.LeaseTasksRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :max_tasks, 2, type: :int32, json_name: "maxTasks"

  field :lease_duration, 3,
    type: Google.Protobuf.Duration,
    json_name: "leaseDuration",
    deprecated: false

  field :response_view, 4,
    type: Google.Cloud.Tasks.V2beta2.Task.View,
    json_name: "responseView",
    enum: true

  field :filter, 5, type: :string
end

defmodule Google.Cloud.Tasks.V2beta2.LeaseTasksResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :tasks, 1, repeated: true, type: Google.Cloud.Tasks.V2beta2.Task
end

defmodule Google.Cloud.Tasks.V2beta2.AcknowledgeTaskRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :schedule_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "scheduleTime",
    deprecated: false
end

defmodule Google.Cloud.Tasks.V2beta2.RenewLeaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :schedule_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "scheduleTime",
    deprecated: false

  field :lease_duration, 3,
    type: Google.Protobuf.Duration,
    json_name: "leaseDuration",
    deprecated: false

  field :response_view, 4,
    type: Google.Cloud.Tasks.V2beta2.Task.View,
    json_name: "responseView",
    enum: true
end

defmodule Google.Cloud.Tasks.V2beta2.CancelLeaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :schedule_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "scheduleTime",
    deprecated: false

  field :response_view, 3,
    type: Google.Cloud.Tasks.V2beta2.Task.View,
    json_name: "responseView",
    enum: true
end

defmodule Google.Cloud.Tasks.V2beta2.RunTaskRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :response_view, 2,
    type: Google.Cloud.Tasks.V2beta2.Task.View,
    json_name: "responseView",
    enum: true
end

defmodule Google.Cloud.Tasks.V2beta2.BufferTaskRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :queue, 1, type: :string, deprecated: false
  field :task_id, 2, type: :string, json_name: "taskId", deprecated: false
  field :body, 3, type: Google.Api.HttpBody, deprecated: false
end

defmodule Google.Cloud.Tasks.V2beta2.BufferTaskResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :task, 1, type: Google.Cloud.Tasks.V2beta2.Task
end

defmodule Google.Cloud.Tasks.V2beta2.CloudTasks.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.tasks.v2beta2.CloudTasks",
    protoc_gen_elixir_version: "0.12.0"

  rpc :ListQueues,
      Google.Cloud.Tasks.V2beta2.ListQueuesRequest,
      Google.Cloud.Tasks.V2beta2.ListQueuesResponse

  rpc :GetQueue, Google.Cloud.Tasks.V2beta2.GetQueueRequest, Google.Cloud.Tasks.V2beta2.Queue

  rpc :CreateQueue,
      Google.Cloud.Tasks.V2beta2.CreateQueueRequest,
      Google.Cloud.Tasks.V2beta2.Queue

  rpc :UpdateQueue,
      Google.Cloud.Tasks.V2beta2.UpdateQueueRequest,
      Google.Cloud.Tasks.V2beta2.Queue

  rpc :DeleteQueue, Google.Cloud.Tasks.V2beta2.DeleteQueueRequest, Google.Protobuf.Empty

  rpc :PurgeQueue, Google.Cloud.Tasks.V2beta2.PurgeQueueRequest, Google.Cloud.Tasks.V2beta2.Queue

  rpc :PauseQueue, Google.Cloud.Tasks.V2beta2.PauseQueueRequest, Google.Cloud.Tasks.V2beta2.Queue

  rpc :ResumeQueue,
      Google.Cloud.Tasks.V2beta2.ResumeQueueRequest,
      Google.Cloud.Tasks.V2beta2.Queue

  rpc :UploadQueueYaml, Google.Cloud.Tasks.V2beta2.UploadQueueYamlRequest, Google.Protobuf.Empty

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse

  rpc :ListTasks,
      Google.Cloud.Tasks.V2beta2.ListTasksRequest,
      Google.Cloud.Tasks.V2beta2.ListTasksResponse

  rpc :GetTask, Google.Cloud.Tasks.V2beta2.GetTaskRequest, Google.Cloud.Tasks.V2beta2.Task

  rpc :CreateTask, Google.Cloud.Tasks.V2beta2.CreateTaskRequest, Google.Cloud.Tasks.V2beta2.Task

  rpc :DeleteTask, Google.Cloud.Tasks.V2beta2.DeleteTaskRequest, Google.Protobuf.Empty

  rpc :LeaseTasks,
      Google.Cloud.Tasks.V2beta2.LeaseTasksRequest,
      Google.Cloud.Tasks.V2beta2.LeaseTasksResponse

  rpc :AcknowledgeTask, Google.Cloud.Tasks.V2beta2.AcknowledgeTaskRequest, Google.Protobuf.Empty

  rpc :RenewLease, Google.Cloud.Tasks.V2beta2.RenewLeaseRequest, Google.Cloud.Tasks.V2beta2.Task

  rpc :CancelLease, Google.Cloud.Tasks.V2beta2.CancelLeaseRequest, Google.Cloud.Tasks.V2beta2.Task

  rpc :RunTask, Google.Cloud.Tasks.V2beta2.RunTaskRequest, Google.Cloud.Tasks.V2beta2.Task

  rpc :BufferTask,
      Google.Cloud.Tasks.V2beta2.BufferTaskRequest,
      Google.Cloud.Tasks.V2beta2.BufferTaskResponse
end

defmodule Google.Cloud.Tasks.V2beta2.CloudTasks.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Tasks.V2beta2.CloudTasks.Service
end