defmodule Google.Devtools.Build.V1.BuildStatus.Result do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :result, 1, type: Google.Devtools.Build.V1.BuildStatus.Result, enum: true
  field :final_invocation_id, 3, type: :string, json_name: "finalInvocationId"
  field :build_tool_exit_code, 4, type: Google.Protobuf.Int32Value, json_name: "buildToolExitCode"
  field :details, 2, type: Google.Protobuf.Any
end
