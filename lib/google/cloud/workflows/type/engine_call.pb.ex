defmodule Google.Cloud.Workflows.Type.EngineCallLog.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATE_UNSPECIFIED | :BEGUN | :SUCCEEDED | :EXCEPTION_RAISED

  field :STATE_UNSPECIFIED, 0
  field :BEGUN, 1
  field :SUCCEEDED, 2
  field :EXCEPTION_RAISED, 3
end
defmodule Google.Cloud.Workflows.Type.EngineCallLog.CallArg do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          argument: String.t()
        }

  defstruct argument: ""

  field :argument, 1, type: :string
end
defmodule Google.Cloud.Workflows.Type.EngineCallLog.Begun do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          args: [Google.Cloud.Workflows.Type.EngineCallLog.CallArg.t()]
        }

  defstruct args: []

  field :args, 1, repeated: true, type: Google.Cloud.Workflows.Type.EngineCallLog.CallArg
end
defmodule Google.Cloud.Workflows.Type.EngineCallLog.Succeeded do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          call_start_time: Google.Protobuf.Timestamp.t() | nil,
          response: String.t()
        }

  defstruct call_start_time: nil,
            response: ""

  field :call_start_time, 1, type: Google.Protobuf.Timestamp, json_name: "callStartTime"
  field :response, 2, type: :string
end
defmodule Google.Cloud.Workflows.Type.EngineCallLog.ExceptionRaised do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          call_start_time: Google.Protobuf.Timestamp.t() | nil,
          exception: String.t(),
          origin: String.t()
        }

  defstruct call_start_time: nil,
            exception: "",
            origin: ""

  field :call_start_time, 1, type: Google.Protobuf.Timestamp, json_name: "callStartTime"
  field :exception, 2, type: :string
  field :origin, 3, type: :string
end
defmodule Google.Cloud.Workflows.Type.EngineCallLog do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          details:
            {:begun, Google.Cloud.Workflows.Type.EngineCallLog.Begun.t() | nil}
            | {:succeeded, Google.Cloud.Workflows.Type.EngineCallLog.Succeeded.t() | nil}
            | {:exception_raised,
               Google.Cloud.Workflows.Type.EngineCallLog.ExceptionRaised.t() | nil},
          execution_id: String.t(),
          activity_time: Google.Protobuf.Timestamp.t() | nil,
          state: Google.Cloud.Workflows.Type.EngineCallLog.State.t(),
          step: String.t(),
          callee: String.t()
        }

  defstruct details: nil,
            execution_id: "",
            activity_time: nil,
            state: :STATE_UNSPECIFIED,
            step: "",
            callee: ""

  oneof :details, 0

  field :execution_id, 1, type: :string, json_name: "executionId"
  field :activity_time, 2, type: Google.Protobuf.Timestamp, json_name: "activityTime"
  field :state, 3, type: Google.Cloud.Workflows.Type.EngineCallLog.State, enum: true
  field :step, 4, type: :string
  field :callee, 5, type: :string
  field :begun, 6, type: Google.Cloud.Workflows.Type.EngineCallLog.Begun, oneof: 0
  field :succeeded, 7, type: Google.Cloud.Workflows.Type.EngineCallLog.Succeeded, oneof: 0

  field :exception_raised, 8,
    type: Google.Cloud.Workflows.Type.EngineCallLog.ExceptionRaised,
    json_name: "exceptionRaised",
    oneof: 0
end
