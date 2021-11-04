defmodule Google.Cloud.Tasks.V2beta2.ListQueuesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t(),
          read_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:parent, :filter, :page_size, :page_token, :read_mask]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :read_mask, 5, type: Google.Protobuf.FieldMask, json_name: "readMask"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Tasks.V2beta2.ListQueuesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          queues: [Google.Cloud.Tasks.V2beta2.Queue.t()],
          next_page_token: String.t()
        }

  defstruct [:queues, :next_page_token]

  field :queues, 1, repeated: true, type: Google.Cloud.Tasks.V2beta2.Queue
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Tasks.V2beta2.GetQueueRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          read_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:name, :read_mask]

  field :name, 1, type: :string
  field :read_mask, 2, type: Google.Protobuf.FieldMask, json_name: "readMask"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Tasks.V2beta2.CreateQueueRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          queue: Google.Cloud.Tasks.V2beta2.Queue.t() | nil
        }

  defstruct [:parent, :queue]

  field :parent, 1, type: :string
  field :queue, 2, type: Google.Cloud.Tasks.V2beta2.Queue

  def transform_module(), do: nil
end

defmodule Google.Cloud.Tasks.V2beta2.UpdateQueueRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          queue: Google.Cloud.Tasks.V2beta2.Queue.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:queue, :update_mask]

  field :queue, 1, type: Google.Cloud.Tasks.V2beta2.Queue
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Tasks.V2beta2.DeleteQueueRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Tasks.V2beta2.PurgeQueueRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Tasks.V2beta2.PauseQueueRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Tasks.V2beta2.ResumeQueueRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Tasks.V2beta2.ListTasksRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          response_view: Google.Cloud.Tasks.V2beta2.Task.View.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :response_view, :page_size, :page_token]

  field :parent, 1, type: :string

  field :response_view, 2,
    type: Google.Cloud.Tasks.V2beta2.Task.View,
    enum: true,
    json_name: "responseView"

  field :page_size, 4, type: :int32, json_name: "pageSize"
  field :page_token, 5, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Tasks.V2beta2.ListTasksResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tasks: [Google.Cloud.Tasks.V2beta2.Task.t()],
          next_page_token: String.t()
        }

  defstruct [:tasks, :next_page_token]

  field :tasks, 1, repeated: true, type: Google.Cloud.Tasks.V2beta2.Task
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Tasks.V2beta2.GetTaskRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          response_view: Google.Cloud.Tasks.V2beta2.Task.View.t()
        }

  defstruct [:name, :response_view]

  field :name, 1, type: :string

  field :response_view, 2,
    type: Google.Cloud.Tasks.V2beta2.Task.View,
    enum: true,
    json_name: "responseView"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Tasks.V2beta2.CreateTaskRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          task: Google.Cloud.Tasks.V2beta2.Task.t() | nil,
          response_view: Google.Cloud.Tasks.V2beta2.Task.View.t()
        }

  defstruct [:parent, :task, :response_view]

  field :parent, 1, type: :string
  field :task, 2, type: Google.Cloud.Tasks.V2beta2.Task

  field :response_view, 3,
    type: Google.Cloud.Tasks.V2beta2.Task.View,
    enum: true,
    json_name: "responseView"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Tasks.V2beta2.DeleteTaskRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Tasks.V2beta2.LeaseTasksRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          max_tasks: integer,
          lease_duration: Google.Protobuf.Duration.t() | nil,
          response_view: Google.Cloud.Tasks.V2beta2.Task.View.t(),
          filter: String.t()
        }

  defstruct [:parent, :max_tasks, :lease_duration, :response_view, :filter]

  field :parent, 1, type: :string
  field :max_tasks, 2, type: :int32, json_name: "maxTasks"
  field :lease_duration, 3, type: Google.Protobuf.Duration, json_name: "leaseDuration"

  field :response_view, 4,
    type: Google.Cloud.Tasks.V2beta2.Task.View,
    enum: true,
    json_name: "responseView"

  field :filter, 5, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Tasks.V2beta2.LeaseTasksResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tasks: [Google.Cloud.Tasks.V2beta2.Task.t()]
        }

  defstruct [:tasks]

  field :tasks, 1, repeated: true, type: Google.Cloud.Tasks.V2beta2.Task

  def transform_module(), do: nil
end

defmodule Google.Cloud.Tasks.V2beta2.AcknowledgeTaskRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          schedule_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:name, :schedule_time]

  field :name, 1, type: :string
  field :schedule_time, 2, type: Google.Protobuf.Timestamp, json_name: "scheduleTime"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Tasks.V2beta2.RenewLeaseRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          schedule_time: Google.Protobuf.Timestamp.t() | nil,
          lease_duration: Google.Protobuf.Duration.t() | nil,
          response_view: Google.Cloud.Tasks.V2beta2.Task.View.t()
        }

  defstruct [:name, :schedule_time, :lease_duration, :response_view]

  field :name, 1, type: :string
  field :schedule_time, 2, type: Google.Protobuf.Timestamp, json_name: "scheduleTime"
  field :lease_duration, 3, type: Google.Protobuf.Duration, json_name: "leaseDuration"

  field :response_view, 4,
    type: Google.Cloud.Tasks.V2beta2.Task.View,
    enum: true,
    json_name: "responseView"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Tasks.V2beta2.CancelLeaseRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          schedule_time: Google.Protobuf.Timestamp.t() | nil,
          response_view: Google.Cloud.Tasks.V2beta2.Task.View.t()
        }

  defstruct [:name, :schedule_time, :response_view]

  field :name, 1, type: :string
  field :schedule_time, 2, type: Google.Protobuf.Timestamp, json_name: "scheduleTime"

  field :response_view, 3,
    type: Google.Cloud.Tasks.V2beta2.Task.View,
    enum: true,
    json_name: "responseView"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Tasks.V2beta2.RunTaskRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          response_view: Google.Cloud.Tasks.V2beta2.Task.View.t()
        }

  defstruct [:name, :response_view]

  field :name, 1, type: :string

  field :response_view, 2,
    type: Google.Cloud.Tasks.V2beta2.Task.View,
    enum: true,
    json_name: "responseView"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Tasks.V2beta2.CloudTasks.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.tasks.v2beta2.CloudTasks"

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
end

defmodule Google.Cloud.Tasks.V2beta2.CloudTasks.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Tasks.V2beta2.CloudTasks.Service
end
