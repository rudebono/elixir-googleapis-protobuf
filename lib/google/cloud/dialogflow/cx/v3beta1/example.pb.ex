defmodule Google.Cloud.Dialogflow.Cx.V3beta1.OutputState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :OUTPUT_STATE_UNSPECIFIED, 0
  field :OUTPUT_STATE_OK, 1
  field :OUTPUT_STATE_CANCELLED, 2
  field :OUTPUT_STATE_FAILED, 3
  field :OUTPUT_STATE_ESCALATED, 4
  field :OUTPUT_STATE_PENDING, 5
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.CreateExampleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :example, 2, type: Google.Cloud.Dialogflow.Cx.V3beta1.Example, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.DeleteExampleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListExamplesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :language_code, 4, type: :string, json_name: "languageCode", deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListExamplesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :examples, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3beta1.Example
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.GetExampleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.UpdateExampleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :example, 1, type: Google.Cloud.Dialogflow.Cx.V3beta1.Example, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Example do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string

  field :playbook_input, 3,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.PlaybookInput,
    json_name: "playbookInput",
    deprecated: false

  field :playbook_output, 4,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.PlaybookOutput,
    json_name: "playbookOutput",
    deprecated: false

  field :actions, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Action,
    deprecated: false

  field :display_name, 6, type: :string, json_name: "displayName", deprecated: false
  field :description, 8, type: :string, deprecated: false
  field :token_count, 9, type: :int64, json_name: "tokenCount", deprecated: false

  field :create_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 11,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :conversation_state, 12,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.OutputState,
    json_name: "conversationState",
    enum: true,
    deprecated: false

  field :language_code, 13, type: :string, json_name: "languageCode", deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.PlaybookInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :preceding_conversation_summary, 1,
    type: :string,
    json_name: "precedingConversationSummary",
    deprecated: false

  field :action_parameters, 3,
    type: Google.Protobuf.Struct,
    json_name: "actionParameters",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.PlaybookOutput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :execution_summary, 1, type: :string, json_name: "executionSummary", deprecated: false

  field :action_parameters, 4,
    type: Google.Protobuf.Struct,
    json_name: "actionParameters",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Action do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :action, 0

  field :user_utterance, 1,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.UserUtterance,
    json_name: "userUtterance",
    oneof: 0,
    deprecated: false

  field :agent_utterance, 2,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.AgentUtterance,
    json_name: "agentUtterance",
    oneof: 0,
    deprecated: false

  field :tool_use, 3,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.ToolUse,
    json_name: "toolUse",
    oneof: 0,
    deprecated: false

  field :playbook_invocation, 4,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.PlaybookInvocation,
    json_name: "playbookInvocation",
    oneof: 0,
    deprecated: false

  field :flow_invocation, 5,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.FlowInvocation,
    json_name: "flowInvocation",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.UserUtterance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :text, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.AgentUtterance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :text, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ToolUse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :tool, 1, type: :string, deprecated: false
  field :action, 2, type: :string, deprecated: false

  field :input_action_parameters, 5,
    type: Google.Protobuf.Struct,
    json_name: "inputActionParameters",
    deprecated: false

  field :output_action_parameters, 6,
    type: Google.Protobuf.Struct,
    json_name: "outputActionParameters",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.PlaybookInvocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :playbook, 1, type: :string, deprecated: false

  field :playbook_input, 2,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.PlaybookInput,
    json_name: "playbookInput",
    deprecated: false

  field :playbook_output, 3,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.PlaybookOutput,
    json_name: "playbookOutput",
    deprecated: false

  field :playbook_state, 4,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.OutputState,
    json_name: "playbookState",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.FlowInvocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :flow, 1, type: :string, deprecated: false

  field :input_action_parameters, 5,
    type: Google.Protobuf.Struct,
    json_name: "inputActionParameters",
    deprecated: false

  field :output_action_parameters, 6,
    type: Google.Protobuf.Struct,
    json_name: "outputActionParameters",
    deprecated: false

  field :flow_state, 4,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.OutputState,
    json_name: "flowState",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Examples.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.dialogflow.cx.v3beta1.Examples",
    protoc_gen_elixir_version: "0.12.0"

  rpc :CreateExample,
      Google.Cloud.Dialogflow.Cx.V3beta1.CreateExampleRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.Example

  rpc :DeleteExample,
      Google.Cloud.Dialogflow.Cx.V3beta1.DeleteExampleRequest,
      Google.Protobuf.Empty

  rpc :ListExamples,
      Google.Cloud.Dialogflow.Cx.V3beta1.ListExamplesRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.ListExamplesResponse

  rpc :GetExample,
      Google.Cloud.Dialogflow.Cx.V3beta1.GetExampleRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.Example

  rpc :UpdateExample,
      Google.Cloud.Dialogflow.Cx.V3beta1.UpdateExampleRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.Example
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Examples.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Dialogflow.Cx.V3beta1.Examples.Service
end