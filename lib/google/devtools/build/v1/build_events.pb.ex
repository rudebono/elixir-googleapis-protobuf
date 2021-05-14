defmodule Google.Devtools.Build.V1.ConsoleOutputStream do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNKNOWN | :STDOUT | :STDERR

  field :UNKNOWN, 0

  field :STDOUT, 1

  field :STDERR, 2
end

defmodule Google.Devtools.Build.V1.BuildEvent.BuildComponentStreamFinished.FinishType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :FINISH_TYPE_UNSPECIFIED | :FINISHED | :EXPIRED

  field :FINISH_TYPE_UNSPECIFIED, 0

  field :FINISHED, 1

  field :EXPIRED, 2
end

defmodule Google.Devtools.Build.V1.StreamId.BuildComponent do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNKNOWN_COMPONENT | :CONTROLLER | :WORKER | :TOOL

  field :UNKNOWN_COMPONENT, 0

  field :CONTROLLER, 1

  field :WORKER, 2

  field :TOOL, 3
end

defmodule Google.Devtools.Build.V1.BuildEvent.InvocationAttemptStarted do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          attempt_number: integer,
          details: Google.Protobuf.Any.t() | nil
        }

  defstruct [:attempt_number, :details]

  field :attempt_number, 1, type: :int64
  field :details, 2, type: Google.Protobuf.Any
end

defmodule Google.Devtools.Build.V1.BuildEvent.InvocationAttemptFinished do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          invocation_status: Google.Devtools.Build.V1.BuildStatus.t() | nil,
          details: Google.Protobuf.Any.t() | nil
        }

  defstruct [:invocation_status, :details]

  field :invocation_status, 3, type: Google.Devtools.Build.V1.BuildStatus
  field :details, 4, type: Google.Protobuf.Any
end

defmodule Google.Devtools.Build.V1.BuildEvent.BuildEnqueued do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          details: Google.Protobuf.Any.t() | nil
        }

  defstruct [:details]

  field :details, 1, type: Google.Protobuf.Any
end

defmodule Google.Devtools.Build.V1.BuildEvent.BuildFinished do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          status: Google.Devtools.Build.V1.BuildStatus.t() | nil,
          details: Google.Protobuf.Any.t() | nil
        }

  defstruct [:status, :details]

  field :status, 1, type: Google.Devtools.Build.V1.BuildStatus
  field :details, 2, type: Google.Protobuf.Any
end

defmodule Google.Devtools.Build.V1.BuildEvent.ConsoleOutput do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          output: {atom, any},
          type: Google.Devtools.Build.V1.ConsoleOutputStream.t()
        }

  defstruct [:output, :type]

  oneof :output, 0
  field :type, 1, type: Google.Devtools.Build.V1.ConsoleOutputStream, enum: true
  field :text_output, 2, type: :string, oneof: 0
  field :binary_output, 3, type: :bytes, oneof: 0
end

defmodule Google.Devtools.Build.V1.BuildEvent.BuildComponentStreamFinished do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Devtools.Build.V1.BuildEvent.BuildComponentStreamFinished.FinishType.t()
        }

  defstruct [:type]

  field :type, 1,
    type: Google.Devtools.Build.V1.BuildEvent.BuildComponentStreamFinished.FinishType,
    enum: true
end

defmodule Google.Devtools.Build.V1.BuildEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          event: {atom, any},
          event_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:event, :event_time]

  oneof :event, 0
  field :event_time, 1, type: Google.Protobuf.Timestamp

  field :invocation_attempt_started, 51,
    type: Google.Devtools.Build.V1.BuildEvent.InvocationAttemptStarted,
    oneof: 0

  field :invocation_attempt_finished, 52,
    type: Google.Devtools.Build.V1.BuildEvent.InvocationAttemptFinished,
    oneof: 0

  field :build_enqueued, 53, type: Google.Devtools.Build.V1.BuildEvent.BuildEnqueued, oneof: 0
  field :build_finished, 55, type: Google.Devtools.Build.V1.BuildEvent.BuildFinished, oneof: 0
  field :console_output, 56, type: Google.Devtools.Build.V1.BuildEvent.ConsoleOutput, oneof: 0

  field :component_stream_finished, 59,
    type: Google.Devtools.Build.V1.BuildEvent.BuildComponentStreamFinished,
    oneof: 0

  field :bazel_event, 60, type: Google.Protobuf.Any, oneof: 0
  field :build_execution_event, 61, type: Google.Protobuf.Any, oneof: 0
  field :source_fetch_event, 62, type: Google.Protobuf.Any, oneof: 0
end

defmodule Google.Devtools.Build.V1.StreamId do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          build_id: String.t(),
          invocation_id: String.t(),
          component: Google.Devtools.Build.V1.StreamId.BuildComponent.t()
        }

  defstruct [:build_id, :invocation_id, :component]

  field :build_id, 1, type: :string
  field :invocation_id, 6, type: :string
  field :component, 3, type: Google.Devtools.Build.V1.StreamId.BuildComponent, enum: true
end
