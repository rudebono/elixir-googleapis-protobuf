defmodule Google.Cloud.Tasks.V2beta3.ListQueuesRequest do
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
  field :page_size, 3, type: :int32
  field :page_token, 4, type: :string
  field :read_mask, 5, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Tasks.V2beta3.ListQueuesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          queues: [Google.Cloud.Tasks.V2beta3.Queue.t()],
          next_page_token: String.t()
        }

  defstruct [:queues, :next_page_token]

  field :queues, 1, repeated: true, type: Google.Cloud.Tasks.V2beta3.Queue
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Tasks.V2beta3.GetQueueRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          read_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:name, :read_mask]

  field :name, 1, type: :string
  field :read_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Tasks.V2beta3.CreateQueueRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          queue: Google.Cloud.Tasks.V2beta3.Queue.t() | nil
        }

  defstruct [:parent, :queue]

  field :parent, 1, type: :string
  field :queue, 2, type: Google.Cloud.Tasks.V2beta3.Queue
end

defmodule Google.Cloud.Tasks.V2beta3.UpdateQueueRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          queue: Google.Cloud.Tasks.V2beta3.Queue.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:queue, :update_mask]

  field :queue, 1, type: Google.Cloud.Tasks.V2beta3.Queue
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Tasks.V2beta3.DeleteQueueRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Tasks.V2beta3.PurgeQueueRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Tasks.V2beta3.PauseQueueRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Tasks.V2beta3.ResumeQueueRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Tasks.V2beta3.ListTasksRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          response_view: Google.Cloud.Tasks.V2beta3.Task.View.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :response_view, :page_size, :page_token]

  field :parent, 1, type: :string
  field :response_view, 2, type: Google.Cloud.Tasks.V2beta3.Task.View, enum: true
  field :page_size, 3, type: :int32
  field :page_token, 4, type: :string
end

defmodule Google.Cloud.Tasks.V2beta3.ListTasksResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tasks: [Google.Cloud.Tasks.V2beta3.Task.t()],
          next_page_token: String.t()
        }

  defstruct [:tasks, :next_page_token]

  field :tasks, 1, repeated: true, type: Google.Cloud.Tasks.V2beta3.Task
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Tasks.V2beta3.GetTaskRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          response_view: Google.Cloud.Tasks.V2beta3.Task.View.t()
        }

  defstruct [:name, :response_view]

  field :name, 1, type: :string
  field :response_view, 2, type: Google.Cloud.Tasks.V2beta3.Task.View, enum: true
end

defmodule Google.Cloud.Tasks.V2beta3.CreateTaskRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          task: Google.Cloud.Tasks.V2beta3.Task.t() | nil,
          response_view: Google.Cloud.Tasks.V2beta3.Task.View.t()
        }

  defstruct [:parent, :task, :response_view]

  field :parent, 1, type: :string
  field :task, 2, type: Google.Cloud.Tasks.V2beta3.Task
  field :response_view, 3, type: Google.Cloud.Tasks.V2beta3.Task.View, enum: true
end

defmodule Google.Cloud.Tasks.V2beta3.DeleteTaskRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Tasks.V2beta3.RunTaskRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          response_view: Google.Cloud.Tasks.V2beta3.Task.View.t()
        }

  defstruct [:name, :response_view]

  field :name, 1, type: :string
  field :response_view, 2, type: Google.Cloud.Tasks.V2beta3.Task.View, enum: true
end

defmodule Google.Cloud.Tasks.V2beta3.CloudTasks.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.tasks.v2beta3.CloudTasks"

  rpc :ListQueues,
      Google.Cloud.Tasks.V2beta3.ListQueuesRequest,
      Google.Cloud.Tasks.V2beta3.ListQueuesResponse

  rpc :GetQueue, Google.Cloud.Tasks.V2beta3.GetQueueRequest, Google.Cloud.Tasks.V2beta3.Queue

  rpc :CreateQueue,
      Google.Cloud.Tasks.V2beta3.CreateQueueRequest,
      Google.Cloud.Tasks.V2beta3.Queue

  rpc :UpdateQueue,
      Google.Cloud.Tasks.V2beta3.UpdateQueueRequest,
      Google.Cloud.Tasks.V2beta3.Queue

  rpc :DeleteQueue, Google.Cloud.Tasks.V2beta3.DeleteQueueRequest, Google.Protobuf.Empty

  rpc :PurgeQueue, Google.Cloud.Tasks.V2beta3.PurgeQueueRequest, Google.Cloud.Tasks.V2beta3.Queue

  rpc :PauseQueue, Google.Cloud.Tasks.V2beta3.PauseQueueRequest, Google.Cloud.Tasks.V2beta3.Queue

  rpc :ResumeQueue,
      Google.Cloud.Tasks.V2beta3.ResumeQueueRequest,
      Google.Cloud.Tasks.V2beta3.Queue

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse

  rpc :ListTasks,
      Google.Cloud.Tasks.V2beta3.ListTasksRequest,
      Google.Cloud.Tasks.V2beta3.ListTasksResponse

  rpc :GetTask, Google.Cloud.Tasks.V2beta3.GetTaskRequest, Google.Cloud.Tasks.V2beta3.Task

  rpc :CreateTask, Google.Cloud.Tasks.V2beta3.CreateTaskRequest, Google.Cloud.Tasks.V2beta3.Task

  rpc :DeleteTask, Google.Cloud.Tasks.V2beta3.DeleteTaskRequest, Google.Protobuf.Empty

  rpc :RunTask, Google.Cloud.Tasks.V2beta3.RunTaskRequest, Google.Cloud.Tasks.V2beta3.Task
end

defmodule Google.Cloud.Tasks.V2beta3.CloudTasks.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Tasks.V2beta3.CloudTasks.Service
end
