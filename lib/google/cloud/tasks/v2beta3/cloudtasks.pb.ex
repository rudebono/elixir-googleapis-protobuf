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

  defstruct parent: "",
            filter: "",
            page_size: 0,
            page_token: "",
            read_mask: nil

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :read_mask, 5, type: Google.Protobuf.FieldMask, json_name: "readMask", deprecated: false
end
defmodule Google.Cloud.Tasks.V2beta3.ListQueuesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          queues: [Google.Cloud.Tasks.V2beta3.Queue.t()],
          next_page_token: String.t()
        }

  defstruct queues: [],
            next_page_token: ""

  field :queues, 1, repeated: true, type: Google.Cloud.Tasks.V2beta3.Queue
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Tasks.V2beta3.GetQueueRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          read_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct name: "",
            read_mask: nil

  field :name, 1, type: :string, deprecated: false
  field :read_mask, 2, type: Google.Protobuf.FieldMask, json_name: "readMask", deprecated: false
end
defmodule Google.Cloud.Tasks.V2beta3.CreateQueueRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          queue: Google.Cloud.Tasks.V2beta3.Queue.t() | nil
        }

  defstruct parent: "",
            queue: nil

  field :parent, 1, type: :string, deprecated: false
  field :queue, 2, type: Google.Cloud.Tasks.V2beta3.Queue, deprecated: false
end
defmodule Google.Cloud.Tasks.V2beta3.UpdateQueueRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          queue: Google.Cloud.Tasks.V2beta3.Queue.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct queue: nil,
            update_mask: nil

  field :queue, 1, type: Google.Cloud.Tasks.V2beta3.Queue, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Cloud.Tasks.V2beta3.DeleteQueueRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Tasks.V2beta3.PurgeQueueRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Tasks.V2beta3.PauseQueueRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Tasks.V2beta3.ResumeQueueRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
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

  defstruct parent: "",
            response_view: :VIEW_UNSPECIFIED,
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false

  field :response_view, 2,
    type: Google.Cloud.Tasks.V2beta3.Task.View,
    json_name: "responseView",
    enum: true

  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Tasks.V2beta3.ListTasksResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tasks: [Google.Cloud.Tasks.V2beta3.Task.t()],
          next_page_token: String.t()
        }

  defstruct tasks: [],
            next_page_token: ""

  field :tasks, 1, repeated: true, type: Google.Cloud.Tasks.V2beta3.Task
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Tasks.V2beta3.GetTaskRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          response_view: Google.Cloud.Tasks.V2beta3.Task.View.t()
        }

  defstruct name: "",
            response_view: :VIEW_UNSPECIFIED

  field :name, 1, type: :string, deprecated: false

  field :response_view, 2,
    type: Google.Cloud.Tasks.V2beta3.Task.View,
    json_name: "responseView",
    enum: true
end
defmodule Google.Cloud.Tasks.V2beta3.CreateTaskRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          task: Google.Cloud.Tasks.V2beta3.Task.t() | nil,
          response_view: Google.Cloud.Tasks.V2beta3.Task.View.t()
        }

  defstruct parent: "",
            task: nil,
            response_view: :VIEW_UNSPECIFIED

  field :parent, 1, type: :string, deprecated: false
  field :task, 2, type: Google.Cloud.Tasks.V2beta3.Task, deprecated: false

  field :response_view, 3,
    type: Google.Cloud.Tasks.V2beta3.Task.View,
    json_name: "responseView",
    enum: true
end
defmodule Google.Cloud.Tasks.V2beta3.DeleteTaskRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Tasks.V2beta3.RunTaskRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          response_view: Google.Cloud.Tasks.V2beta3.Task.View.t()
        }

  defstruct name: "",
            response_view: :VIEW_UNSPECIFIED

  field :name, 1, type: :string, deprecated: false

  field :response_view, 2,
    type: Google.Cloud.Tasks.V2beta3.Task.View,
    json_name: "responseView",
    enum: true
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
