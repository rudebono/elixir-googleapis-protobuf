defmodule Google.Devtools.Build.V1.ConsoleOutputStream do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNKNOWN, 0
  field :STDOUT, 1
  field :STDERR, 2
end

defmodule Google.Devtools.Build.V1.BuildEvent.BuildComponentStreamFinished.FinishType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :FINISH_TYPE_UNSPECIFIED, 0
  field :FINISHED, 1
  field :EXPIRED, 2
end

defmodule Google.Devtools.Build.V1.StreamId.BuildComponent do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNKNOWN_COMPONENT, 0
  field :CONTROLLER, 1
  field :WORKER, 2
  field :TOOL, 3
end

defmodule Google.Devtools.Build.V1.BuildEvent.InvocationAttemptStarted do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :attempt_number, 1, type: :int64, json_name: "attemptNumber"
  field :details, 2, type: Google.Protobuf.Any
end

defmodule Google.Devtools.Build.V1.BuildEvent.InvocationAttemptFinished do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :invocation_status, 3,
    type: Google.Devtools.Build.V1.BuildStatus,
    json_name: "invocationStatus"

  field :details, 4, type: Google.Protobuf.Any
end

defmodule Google.Devtools.Build.V1.BuildEvent.BuildEnqueued do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :details, 1, type: Google.Protobuf.Any
end

defmodule Google.Devtools.Build.V1.BuildEvent.BuildFinished do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :status, 1, type: Google.Devtools.Build.V1.BuildStatus
  field :details, 2, type: Google.Protobuf.Any
end

defmodule Google.Devtools.Build.V1.BuildEvent.ConsoleOutput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :output, 0

  field :type, 1, type: Google.Devtools.Build.V1.ConsoleOutputStream, enum: true
  field :text_output, 2, type: :string, json_name: "textOutput", oneof: 0
  field :binary_output, 3, type: :bytes, json_name: "binaryOutput", oneof: 0
end

defmodule Google.Devtools.Build.V1.BuildEvent.BuildComponentStreamFinished do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :type, 1,
    type: Google.Devtools.Build.V1.BuildEvent.BuildComponentStreamFinished.FinishType,
    enum: true
end

defmodule Google.Devtools.Build.V1.BuildEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :event, 0

  field :event_time, 1, type: Google.Protobuf.Timestamp, json_name: "eventTime"

  field :invocation_attempt_started, 51,
    type: Google.Devtools.Build.V1.BuildEvent.InvocationAttemptStarted,
    json_name: "invocationAttemptStarted",
    oneof: 0

  field :invocation_attempt_finished, 52,
    type: Google.Devtools.Build.V1.BuildEvent.InvocationAttemptFinished,
    json_name: "invocationAttemptFinished",
    oneof: 0

  field :build_enqueued, 53,
    type: Google.Devtools.Build.V1.BuildEvent.BuildEnqueued,
    json_name: "buildEnqueued",
    oneof: 0

  field :build_finished, 55,
    type: Google.Devtools.Build.V1.BuildEvent.BuildFinished,
    json_name: "buildFinished",
    oneof: 0

  field :console_output, 56,
    type: Google.Devtools.Build.V1.BuildEvent.ConsoleOutput,
    json_name: "consoleOutput",
    oneof: 0

  field :component_stream_finished, 59,
    type: Google.Devtools.Build.V1.BuildEvent.BuildComponentStreamFinished,
    json_name: "componentStreamFinished",
    oneof: 0

  field :bazel_event, 60, type: Google.Protobuf.Any, json_name: "bazelEvent", oneof: 0

  field :build_execution_event, 61,
    type: Google.Protobuf.Any,
    json_name: "buildExecutionEvent",
    oneof: 0

  field :source_fetch_event, 62,
    type: Google.Protobuf.Any,
    json_name: "sourceFetchEvent",
    oneof: 0
end

defmodule Google.Devtools.Build.V1.StreamId do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :build_id, 1, type: :string, json_name: "buildId"
  field :invocation_id, 6, type: :string, json_name: "invocationId"
  field :component, 3, type: Google.Devtools.Build.V1.StreamId.BuildComponent, enum: true
end
