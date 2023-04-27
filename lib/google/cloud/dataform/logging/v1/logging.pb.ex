defmodule Google.Cloud.Dataform.Logging.V1.WorkflowInvocationCompletionLogEntry.TerminalState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TERMINAL_STATE_UNSPECIFIED, 0
  field :SUCCEEDED, 1
  field :CANCELLED, 2
  field :FAILED, 3
end

defmodule Google.Cloud.Dataform.Logging.V1.WorkflowInvocationCompletionLogEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :workflow_invocation_id, 1,
    type: :string,
    json_name: "workflowInvocationId",
    deprecated: false

  field :workflow_config_id, 2, type: :string, json_name: "workflowConfigId", deprecated: false
  field :release_config_id, 3, type: :string, json_name: "releaseConfigId", deprecated: false

  field :terminal_state, 4,
    type: Google.Cloud.Dataform.Logging.V1.WorkflowInvocationCompletionLogEntry.TerminalState,
    json_name: "terminalState",
    enum: true,
    deprecated: false
end