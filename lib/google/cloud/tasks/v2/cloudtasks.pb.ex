defmodule Google.Cloud.Tasks.V2.ListQueuesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Tasks.V2.ListQueuesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :queues, 1, repeated: true, type: Google.Cloud.Tasks.V2.Queue
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Tasks.V2.GetQueueRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Tasks.V2.CreateQueueRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :queue, 2, type: Google.Cloud.Tasks.V2.Queue, deprecated: false
end

defmodule Google.Cloud.Tasks.V2.UpdateQueueRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :queue, 1, type: Google.Cloud.Tasks.V2.Queue, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Tasks.V2.DeleteQueueRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Tasks.V2.PurgeQueueRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Tasks.V2.PauseQueueRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Tasks.V2.ResumeQueueRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Tasks.V2.ListTasksRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :response_view, 2,
    type: Google.Cloud.Tasks.V2.Task.View,
    json_name: "responseView",
    enum: true

  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Tasks.V2.ListTasksResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :tasks, 1, repeated: true, type: Google.Cloud.Tasks.V2.Task
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Tasks.V2.GetTaskRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :response_view, 2,
    type: Google.Cloud.Tasks.V2.Task.View,
    json_name: "responseView",
    enum: true
end

defmodule Google.Cloud.Tasks.V2.CreateTaskRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :task, 2, type: Google.Cloud.Tasks.V2.Task, deprecated: false

  field :response_view, 3,
    type: Google.Cloud.Tasks.V2.Task.View,
    json_name: "responseView",
    enum: true
end

defmodule Google.Cloud.Tasks.V2.DeleteTaskRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Tasks.V2.RunTaskRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :response_view, 2,
    type: Google.Cloud.Tasks.V2.Task.View,
    json_name: "responseView",
    enum: true
end

defmodule Google.Cloud.Tasks.V2.CloudTasks.Service do
  @moduledoc false

  use GRPC.Service, name: "google.cloud.tasks.v2.CloudTasks", protoc_gen_elixir_version: "0.13.0"

  rpc :ListQueues,
      Google.Cloud.Tasks.V2.ListQueuesRequest,
      Google.Cloud.Tasks.V2.ListQueuesResponse

  rpc :GetQueue, Google.Cloud.Tasks.V2.GetQueueRequest, Google.Cloud.Tasks.V2.Queue

  rpc :CreateQueue, Google.Cloud.Tasks.V2.CreateQueueRequest, Google.Cloud.Tasks.V2.Queue

  rpc :UpdateQueue, Google.Cloud.Tasks.V2.UpdateQueueRequest, Google.Cloud.Tasks.V2.Queue

  rpc :DeleteQueue, Google.Cloud.Tasks.V2.DeleteQueueRequest, Google.Protobuf.Empty

  rpc :PurgeQueue, Google.Cloud.Tasks.V2.PurgeQueueRequest, Google.Cloud.Tasks.V2.Queue

  rpc :PauseQueue, Google.Cloud.Tasks.V2.PauseQueueRequest, Google.Cloud.Tasks.V2.Queue

  rpc :ResumeQueue, Google.Cloud.Tasks.V2.ResumeQueueRequest, Google.Cloud.Tasks.V2.Queue

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse

  rpc :ListTasks, Google.Cloud.Tasks.V2.ListTasksRequest, Google.Cloud.Tasks.V2.ListTasksResponse

  rpc :GetTask, Google.Cloud.Tasks.V2.GetTaskRequest, Google.Cloud.Tasks.V2.Task

  rpc :CreateTask, Google.Cloud.Tasks.V2.CreateTaskRequest, Google.Cloud.Tasks.V2.Task

  rpc :DeleteTask, Google.Cloud.Tasks.V2.DeleteTaskRequest, Google.Protobuf.Empty

  rpc :RunTask, Google.Cloud.Tasks.V2.RunTaskRequest, Google.Cloud.Tasks.V2.Task
end

defmodule Google.Cloud.Tasks.V2.CloudTasks.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Tasks.V2.CloudTasks.Service
end