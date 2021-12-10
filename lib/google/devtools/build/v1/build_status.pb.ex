defmodule Google.Devtools.Build.V1.BuildStatus.Result do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNKNOWN_STATUS
          | :COMMAND_SUCCEEDED
          | :COMMAND_FAILED
          | :USER_ERROR
          | :SYSTEM_ERROR
          | :RESOURCE_EXHAUSTED
          | :INVOCATION_DEADLINE_EXCEEDED
          | :REQUEST_DEADLINE_EXCEEDED
          | :CANCELLED

  field :UNKNOWN_STATUS, 0
  field :COMMAND_SUCCEEDED, 1
  field :COMMAND_FAILED, 2
  field :USER_ERROR, 3
  field :SYSTEM_ERROR, 4
  field :RESOURCE_EXHAUSTED, 5
  field :INVOCATION_DEADLINE_EXCEEDED, 6
  field :REQUEST_DEADLINE_EXCEEDED, 8
  field :CANCELLED, 7
end
defmodule Google.Devtools.Build.V1.BuildStatus do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          result: Google.Devtools.Build.V1.BuildStatus.Result.t(),
          final_invocation_id: String.t(),
          build_tool_exit_code: Google.Protobuf.Int32Value.t() | nil,
          details: Google.Protobuf.Any.t() | nil
        }

  defstruct result: :UNKNOWN_STATUS,
            final_invocation_id: "",
            build_tool_exit_code: nil,
            details: nil

  field :result, 1, type: Google.Devtools.Build.V1.BuildStatus.Result, enum: true
  field :final_invocation_id, 3, type: :string, json_name: "finalInvocationId"
  field :build_tool_exit_code, 4, type: Google.Protobuf.Int32Value, json_name: "buildToolExitCode"
  field :details, 2, type: Google.Protobuf.Any
end
