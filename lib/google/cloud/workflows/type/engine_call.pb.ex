defmodule Google.Cloud.Workflows.Type.EngineCallLog.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :BEGUN, 1
  field :SUCCEEDED, 2
  field :EXCEPTION_RAISED, 3
  field :EXCEPTION_HANDLED, 4
end

defmodule Google.Cloud.Workflows.Type.EngineCallLog.CallArg do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :argument, 1, type: :string
end

defmodule Google.Cloud.Workflows.Type.EngineCallLog.Begun.NamedArgsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Value
end

defmodule Google.Cloud.Workflows.Type.EngineCallLog.Begun do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :args, 1, repeated: true, type: Google.Cloud.Workflows.Type.EngineCallLog.CallArg

  field :named_args, 2,
    repeated: true,
    type: Google.Cloud.Workflows.Type.EngineCallLog.Begun.NamedArgsEntry,
    json_name: "namedArgs",
    map: true
end

defmodule Google.Cloud.Workflows.Type.EngineCallLog.Succeeded do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :call_start_time, 1, type: Google.Protobuf.Timestamp, json_name: "callStartTime"
  field :response, 2, type: :string
end

defmodule Google.Cloud.Workflows.Type.EngineCallLog.ExceptionRaised do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :call_start_time, 1, type: Google.Protobuf.Timestamp, json_name: "callStartTime"
  field :exception, 2, type: :string
  field :origin, 3, type: :string
end

defmodule Google.Cloud.Workflows.Type.EngineCallLog.ExceptionHandled do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :call_start_time, 1, type: Google.Protobuf.Timestamp, json_name: "callStartTime"
  field :exception, 2, type: :string
  field :origin, 3, type: :string
end

defmodule Google.Cloud.Workflows.Type.EngineCallLog do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

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

  field :exception_handled, 9,
    type: Google.Cloud.Workflows.Type.EngineCallLog.ExceptionHandled,
    json_name: "exceptionHandled",
    oneof: 0
end
