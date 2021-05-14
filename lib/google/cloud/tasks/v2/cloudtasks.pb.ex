defmodule Google.Cloud.Tasks.V2.ListQueuesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :filter, :page_size, :page_token]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32
  field :page_token, 4, type: :string
end

defmodule Google.Cloud.Tasks.V2.ListQueuesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          queues: [Google.Cloud.Tasks.V2.Queue.t()],
          next_page_token: String.t()
        }

  defstruct [:queues, :next_page_token]

  field :queues, 1, repeated: true, type: Google.Cloud.Tasks.V2.Queue
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Tasks.V2.GetQueueRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Tasks.V2.CreateQueueRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          queue: Google.Cloud.Tasks.V2.Queue.t() | nil
        }

  defstruct [:parent, :queue]

  field :parent, 1, type: :string
  field :queue, 2, type: Google.Cloud.Tasks.V2.Queue
end

defmodule Google.Cloud.Tasks.V2.UpdateQueueRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          queue: Google.Cloud.Tasks.V2.Queue.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:queue, :update_mask]

  field :queue, 1, type: Google.Cloud.Tasks.V2.Queue
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Tasks.V2.DeleteQueueRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Tasks.V2.PurgeQueueRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Tasks.V2.PauseQueueRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Tasks.V2.ResumeQueueRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Tasks.V2.ListTasksRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          response_view: Google.Cloud.Tasks.V2.Task.View.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :response_view, :page_size, :page_token]

  field :parent, 1, type: :string
  field :response_view, 2, type: Google.Cloud.Tasks.V2.Task.View, enum: true
  field :page_size, 3, type: :int32
  field :page_token, 4, type: :string
end

defmodule Google.Cloud.Tasks.V2.ListTasksResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tasks: [Google.Cloud.Tasks.V2.Task.t()],
          next_page_token: String.t()
        }

  defstruct [:tasks, :next_page_token]

  field :tasks, 1, repeated: true, type: Google.Cloud.Tasks.V2.Task
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Tasks.V2.GetTaskRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          response_view: Google.Cloud.Tasks.V2.Task.View.t()
        }

  defstruct [:name, :response_view]

  field :name, 1, type: :string
  field :response_view, 2, type: Google.Cloud.Tasks.V2.Task.View, enum: true
end

defmodule Google.Cloud.Tasks.V2.CreateTaskRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          task: Google.Cloud.Tasks.V2.Task.t() | nil,
          response_view: Google.Cloud.Tasks.V2.Task.View.t()
        }

  defstruct [:parent, :task, :response_view]

  field :parent, 1, type: :string
  field :task, 2, type: Google.Cloud.Tasks.V2.Task
  field :response_view, 3, type: Google.Cloud.Tasks.V2.Task.View, enum: true
end

defmodule Google.Cloud.Tasks.V2.DeleteTaskRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Tasks.V2.RunTaskRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          response_view: Google.Cloud.Tasks.V2.Task.View.t()
        }

  defstruct [:name, :response_view]

  field :name, 1, type: :string
  field :response_view, 2, type: Google.Cloud.Tasks.V2.Task.View, enum: true
end
