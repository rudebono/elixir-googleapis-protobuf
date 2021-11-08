defmodule Google.Cloud.Workflows.Executions.V1.ExecutionView do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :EXECUTION_VIEW_UNSPECIFIED | :BASIC | :FULL

  field :EXECUTION_VIEW_UNSPECIFIED, 0
  field :BASIC, 1
  field :FULL, 2
end

defmodule Google.Cloud.Workflows.Executions.V1.Execution.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :ACTIVE | :SUCCEEDED | :FAILED | :CANCELLED

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :SUCCEEDED, 2
  field :FAILED, 3
  field :CANCELLED, 4
end

defmodule Google.Cloud.Workflows.Executions.V1.Execution.CallLogLevel do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :CALL_LOG_LEVEL_UNSPECIFIED | :LOG_ALL_CALLS | :LOG_ERRORS_ONLY

  field :CALL_LOG_LEVEL_UNSPECIFIED, 0
  field :LOG_ALL_CALLS, 1
  field :LOG_ERRORS_ONLY, 2
end

defmodule Google.Cloud.Workflows.Executions.V1.Execution.StackTraceElement.Position do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          line: integer,
          column: integer,
          length: integer
        }

  defstruct [:line, :column, :length]

  field :line, 1, type: :int64
  field :column, 2, type: :int64
  field :length, 3, type: :int64

  def transform_module(), do: nil
end

defmodule Google.Cloud.Workflows.Executions.V1.Execution.StackTraceElement do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          step: String.t(),
          routine: String.t(),
          position:
            Google.Cloud.Workflows.Executions.V1.Execution.StackTraceElement.Position.t() | nil
        }

  defstruct [:step, :routine, :position]

  field :step, 1, type: :string
  field :routine, 2, type: :string

  field :position, 3,
    type: Google.Cloud.Workflows.Executions.V1.Execution.StackTraceElement.Position

  def transform_module(), do: nil
end

defmodule Google.Cloud.Workflows.Executions.V1.Execution.StackTrace do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          elements: [Google.Cloud.Workflows.Executions.V1.Execution.StackTraceElement.t()]
        }

  defstruct [:elements]

  field :elements, 1,
    repeated: true,
    type: Google.Cloud.Workflows.Executions.V1.Execution.StackTraceElement

  def transform_module(), do: nil
end

defmodule Google.Cloud.Workflows.Executions.V1.Execution.Error do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          payload: String.t(),
          context: String.t(),
          stack_trace: Google.Cloud.Workflows.Executions.V1.Execution.StackTrace.t() | nil
        }

  defstruct [:payload, :context, :stack_trace]

  field :payload, 1, type: :string
  field :context, 2, type: :string

  field :stack_trace, 3,
    type: Google.Cloud.Workflows.Executions.V1.Execution.StackTrace,
    json_name: "stackTrace"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Workflows.Executions.V1.Execution do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          state: Google.Cloud.Workflows.Executions.V1.Execution.State.t(),
          argument: String.t(),
          result: String.t(),
          error: Google.Cloud.Workflows.Executions.V1.Execution.Error.t() | nil,
          workflow_revision_id: String.t(),
          call_log_level: Google.Cloud.Workflows.Executions.V1.Execution.CallLogLevel.t()
        }

  defstruct [
    :name,
    :start_time,
    :end_time,
    :state,
    :argument,
    :result,
    :error,
    :workflow_revision_id,
    :call_log_level
  ]

  field :name, 1, type: :string
  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 3, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :state, 4, type: Google.Cloud.Workflows.Executions.V1.Execution.State, enum: true
  field :argument, 5, type: :string
  field :result, 6, type: :string
  field :error, 7, type: Google.Cloud.Workflows.Executions.V1.Execution.Error
  field :workflow_revision_id, 8, type: :string, json_name: "workflowRevisionId"

  field :call_log_level, 9,
    type: Google.Cloud.Workflows.Executions.V1.Execution.CallLogLevel,
    enum: true,
    json_name: "callLogLevel"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Workflows.Executions.V1.ListExecutionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          view: Google.Cloud.Workflows.Executions.V1.ExecutionView.t()
        }

  defstruct [:parent, :page_size, :page_token, :view]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :view, 4, type: Google.Cloud.Workflows.Executions.V1.ExecutionView, enum: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Workflows.Executions.V1.ListExecutionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          executions: [Google.Cloud.Workflows.Executions.V1.Execution.t()],
          next_page_token: String.t()
        }

  defstruct [:executions, :next_page_token]

  field :executions, 1, repeated: true, type: Google.Cloud.Workflows.Executions.V1.Execution
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Workflows.Executions.V1.CreateExecutionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          execution: Google.Cloud.Workflows.Executions.V1.Execution.t() | nil
        }

  defstruct [:parent, :execution]

  field :parent, 1, type: :string
  field :execution, 2, type: Google.Cloud.Workflows.Executions.V1.Execution

  def transform_module(), do: nil
end

defmodule Google.Cloud.Workflows.Executions.V1.GetExecutionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          view: Google.Cloud.Workflows.Executions.V1.ExecutionView.t()
        }

  defstruct [:name, :view]

  field :name, 1, type: :string
  field :view, 2, type: Google.Cloud.Workflows.Executions.V1.ExecutionView, enum: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Workflows.Executions.V1.CancelExecutionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Workflows.Executions.V1.Executions.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.workflows.executions.v1.Executions"

  rpc :ListExecutions,
      Google.Cloud.Workflows.Executions.V1.ListExecutionsRequest,
      Google.Cloud.Workflows.Executions.V1.ListExecutionsResponse

  rpc :CreateExecution,
      Google.Cloud.Workflows.Executions.V1.CreateExecutionRequest,
      Google.Cloud.Workflows.Executions.V1.Execution

  rpc :GetExecution,
      Google.Cloud.Workflows.Executions.V1.GetExecutionRequest,
      Google.Cloud.Workflows.Executions.V1.Execution

  rpc :CancelExecution,
      Google.Cloud.Workflows.Executions.V1.CancelExecutionRequest,
      Google.Cloud.Workflows.Executions.V1.Execution
end

defmodule Google.Cloud.Workflows.Executions.V1.Executions.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Workflows.Executions.V1.Executions.Service
end
