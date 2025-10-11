defmodule Google.Cloud.Dialogflow.Cx.V3beta1.OutputState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :OUTPUT_STATE_UNSPECIFIED, 0
  field :OUTPUT_STATE_OK, 1
  field :OUTPUT_STATE_CANCELLED, 2
  field :OUTPUT_STATE_FAILED, 3
  field :OUTPUT_STATE_ESCALATED, 4
  field :OUTPUT_STATE_PENDING, 5
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.RetrievalStrategy do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :RETRIEVAL_STRATEGY_UNSPECIFIED, 0
  field :DEFAULT, 1
  field :STATIC, 2
  field :NEVER, 3
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.PlaybookOutput.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :OK, 1
  field :CANCELLED, 2
  field :FAILED, 3
  field :ESCALATED, 4
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Action.IntentMatch.MatchedIntent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :intent_id, 1, type: :string, json_name: "intentId"
  field :display_name, 2, type: :string, json_name: "displayName"
  field :score, 3, type: :float
  field :generative_fallback, 4, type: Google.Protobuf.Struct, json_name: "generativeFallback"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Action.IntentMatch do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :matched_intents, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Action.IntentMatch.MatchedIntent,
    json_name: "matchedIntents"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Action.FlowStateUpdate.PageState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :page, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :status, 3, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Action.FlowStateUpdate.FunctionCall do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Action.FlowStateUpdate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :event_type, 1, type: :string, json_name: "eventType"

  field :page_state, 2,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Action.FlowStateUpdate.PageState,
    json_name: "pageState"

  field :updated_parameters, 3, type: Google.Protobuf.Struct, json_name: "updatedParameters"
  field :destination, 4, type: :string

  field :function_call, 5,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Action.FlowStateUpdate.FunctionCall,
    json_name: "functionCall"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Action.TTS do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Action.STT do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Action do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :action, 0

  field :user_utterance, 1,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.UserUtterance,
    json_name: "userUtterance",
    oneof: 0,
    deprecated: false

  field :event, 7, type: Google.Cloud.Dialogflow.Cx.V3beta1.Event, oneof: 0, deprecated: false

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

  field :llm_call, 14,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.LlmCall,
    json_name: "llmCall",
    oneof: 0,
    deprecated: false

  field :intent_match, 17,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Action.IntentMatch,
    json_name: "intentMatch",
    oneof: 0,
    deprecated: false

  field :flow_state_update, 18,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Action.FlowStateUpdate,
    json_name: "flowStateUpdate",
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

  field :playbook_transition, 12,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.PlaybookTransition,
    json_name: "playbookTransition",
    oneof: 0,
    deprecated: false

  field :flow_transition, 13,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.FlowTransition,
    json_name: "flowTransition",
    oneof: 0,
    deprecated: false

  field :tts, 19, type: Google.Cloud.Dialogflow.Cx.V3beta1.Action.TTS, oneof: 0, deprecated: false
  field :stt, 20, type: Google.Cloud.Dialogflow.Cx.V3beta1.Action.STT, oneof: 0, deprecated: false
  field :display_name, 15, type: :string, json_name: "displayName", deprecated: false
  field :start_time, 8, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false

  field :complete_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "completeTime",
    deprecated: false

  field :sub_execution_steps, 11,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Span,
    json_name: "subExecutionSteps",
    deprecated: false

  field :status, 16, type: Google.Cloud.Dialogflow.Cx.V3beta1.Status, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.UserUtterance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :text, 1, type: :string, deprecated: false

  field :audio_tokens, 2,
    repeated: true,
    type: :int32,
    json_name: "audioTokens",
    deprecated: false

  field :audio, 3, type: :bytes, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Event do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :payload, 0

  field :event, 1, type: :string, deprecated: false
  field :text, 2, type: :string, oneof: 0, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.AgentUtterance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :text, 1, type: :string, deprecated: false
  field :require_generation, 2, type: :bool, json_name: "requireGeneration", deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ToolUse.DataStoreToolTrace do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :data_store_connection_signals, 1,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.DataStoreConnectionSignals,
    json_name: "dataStoreConnectionSignals",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ToolUse.WebhookToolTrace do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :webhook_tag, 1, type: :string, json_name: "webhookTag", deprecated: false
  field :webhook_uri, 2, type: :string, json_name: "webhookUri", deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ToolUse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :ToolTrace, 0

  field :tool, 1, type: :string, deprecated: false
  field :display_name, 8, type: :string, json_name: "displayName", deprecated: false
  field :action, 2, type: :string, deprecated: false

  field :input_action_parameters, 5,
    type: Google.Protobuf.Struct,
    json_name: "inputActionParameters",
    deprecated: false

  field :output_action_parameters, 6,
    type: Google.Protobuf.Struct,
    json_name: "outputActionParameters",
    deprecated: false

  field :data_store_tool_trace, 7,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.ToolUse.DataStoreToolTrace,
    json_name: "dataStoreToolTrace",
    oneof: 0,
    deprecated: false

  field :webhook_tool_trace, 9,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.ToolUse.WebhookToolTrace,
    json_name: "webhookToolTrace",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.LlmCall.RetrievedExample do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :example_id, 1, type: :string, json_name: "exampleId"
  field :example_display_name, 2, type: :string, json_name: "exampleDisplayName"

  field :retrieval_strategy, 3,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.RetrievalStrategy,
    json_name: "retrievalStrategy",
    enum: true

  field :matched_retrieval_label, 14,
    type: :string,
    json_name: "matchedRetrievalLabel",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.LlmCall.TokenCount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :total_input_token_count, 1, type: :int64, json_name: "totalInputTokenCount"

  field :conversation_context_token_count, 3,
    type: :int64,
    json_name: "conversationContextTokenCount"

  field :example_token_count, 4, type: :int64, json_name: "exampleTokenCount"
  field :total_output_token_count, 5, type: :int64, json_name: "totalOutputTokenCount"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.LlmCall do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :retrieved_examples, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.LlmCall.RetrievedExample,
    json_name: "retrievedExamples"

  field :token_count, 2,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.LlmCall.TokenCount,
    json_name: "tokenCount"

  field :model, 3, type: :string
  field :temperature, 4, type: :float
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.PlaybookInvocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :playbook, 1, type: :string, deprecated: false
  field :display_name, 5, type: :string, json_name: "displayName", deprecated: false

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

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :flow, 1, type: :string, deprecated: false
  field :display_name, 7, type: :string, json_name: "displayName", deprecated: false

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

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.PlaybookTransition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :playbook, 1, type: :string, deprecated: false
  field :display_name, 3, type: :string, json_name: "displayName", deprecated: false

  field :input_action_parameters, 2,
    type: Google.Protobuf.Struct,
    json_name: "inputActionParameters",
    deprecated: true
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.FlowTransition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :flow, 1, type: :string, deprecated: false
  field :display_name, 3, type: :string, json_name: "displayName", deprecated: false

  field :input_action_parameters, 2,
    type: Google.Protobuf.Struct,
    json_name: "inputActionParameters",
    deprecated: true
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.PlaybookInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :execution_summary, 1, type: :string, json_name: "executionSummary", deprecated: false

  field :state, 2,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.PlaybookOutput.State,
    enum: true,
    deprecated: true

  field :action_parameters, 4,
    type: Google.Protobuf.Struct,
    json_name: "actionParameters",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Span do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :tags, 2, repeated: true, type: :string
  field :metrics, 3, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3beta1.NamedMetric
  field :start_time, 4, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :complete_time, 5, type: Google.Protobuf.Timestamp, json_name: "completeTime"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.NamedMetric do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :value, 2, type: Google.Protobuf.Value
  field :unit, 3, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Status do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :exception, 1, type: Google.Cloud.Dialogflow.Cx.V3beta1.ExceptionDetail, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ExceptionDetail do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :error_message, 1, type: :string, json_name: "errorMessage", deprecated: false
end
