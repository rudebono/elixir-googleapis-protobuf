defmodule Google.Actions.Sdk.V2.ExecutionEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :EventData, 0

  field :event_time, 1, type: Google.Protobuf.Timestamp, json_name: "eventTime"

  field :execution_state, 2,
    type: Google.Actions.Sdk.V2.ExecutionState,
    json_name: "executionState"

  field :status, 3, type: Google.Rpc.Status

  field :user_input, 4,
    type: Google.Actions.Sdk.V2.UserConversationInput,
    json_name: "userInput",
    oneof: 0

  field :intent_match, 5,
    type: Google.Actions.Sdk.V2.IntentMatch,
    json_name: "intentMatch",
    oneof: 0

  field :conditions_evaluated, 6,
    type: Google.Actions.Sdk.V2.ConditionsEvaluated,
    json_name: "conditionsEvaluated",
    oneof: 0

  field :on_scene_enter, 7,
    type: Google.Actions.Sdk.V2.OnSceneEnter,
    json_name: "onSceneEnter",
    oneof: 0

  field :webhook_request, 8,
    type: Google.Actions.Sdk.V2.WebhookRequest,
    json_name: "webhookRequest",
    oneof: 0

  field :webhook_response, 9,
    type: Google.Actions.Sdk.V2.WebhookResponse,
    json_name: "webhookResponse",
    oneof: 0

  field :webhook_initiated_transition, 10,
    type: Google.Actions.Sdk.V2.WebhookInitiatedTransition,
    json_name: "webhookInitiatedTransition",
    oneof: 0

  field :slot_match, 11, type: Google.Actions.Sdk.V2.SlotMatch, json_name: "slotMatch", oneof: 0

  field :slot_requested, 12,
    type: Google.Actions.Sdk.V2.SlotRequested,
    json_name: "slotRequested",
    oneof: 0

  field :slot_validated, 13,
    type: Google.Actions.Sdk.V2.SlotValidated,
    json_name: "slotValidated",
    oneof: 0

  field :form_filled, 14,
    type: Google.Actions.Sdk.V2.FormFilled,
    json_name: "formFilled",
    oneof: 0

  field :waiting_user_input, 15,
    type: Google.Actions.Sdk.V2.WaitingForUserInput,
    json_name: "waitingUserInput",
    oneof: 0

  field :end_conversation, 16,
    type: Google.Actions.Sdk.V2.EndConversation,
    json_name: "endConversation",
    oneof: 0

  field :warning_messages, 17, repeated: true, type: :string, json_name: "warningMessages"
end

defmodule Google.Actions.Sdk.V2.ExecutionState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :current_scene_id, 1, type: :string, json_name: "currentSceneId"
  field :session_storage, 2, type: Google.Protobuf.Struct, json_name: "sessionStorage"
  field :slots, 5, type: Google.Actions.Sdk.V2.Slots

  field :prompt_queue, 7,
    repeated: true,
    type: Google.Actions.Sdk.V2.Conversation.Prompt,
    json_name: "promptQueue"

  field :user_storage, 6, type: Google.Protobuf.Struct, json_name: "userStorage"
  field :household_storage, 8, type: Google.Protobuf.Struct, json_name: "householdStorage"
end

defmodule Google.Actions.Sdk.V2.Slots.SlotsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Actions.Sdk.V2.Conversation.Slot
end

defmodule Google.Actions.Sdk.V2.Slots do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :status, 2, type: Google.Actions.Sdk.V2.Conversation.SlotFillingStatus, enum: true
  field :slots, 3, repeated: true, type: Google.Actions.Sdk.V2.Slots.SlotsEntry, map: true
end

defmodule Google.Actions.Sdk.V2.UserConversationInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :type, 1, type: :string
  field :original_query, 2, type: :string, json_name: "originalQuery"
end

defmodule Google.Actions.Sdk.V2.IntentMatch.IntentParametersEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Actions.Sdk.V2.Conversation.IntentParameterValue
end

defmodule Google.Actions.Sdk.V2.IntentMatch do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :intent_id, 1, type: :string, json_name: "intentId"

  field :intent_parameters, 5,
    repeated: true,
    type: Google.Actions.Sdk.V2.IntentMatch.IntentParametersEntry,
    json_name: "intentParameters",
    map: true

  field :handler, 3, type: :string
  field :next_scene_id, 4, type: :string, json_name: "nextSceneId"
end

defmodule Google.Actions.Sdk.V2.ConditionsEvaluated do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :failed_conditions, 1,
    repeated: true,
    type: Google.Actions.Sdk.V2.Condition,
    json_name: "failedConditions"

  field :success_condition, 2,
    type: Google.Actions.Sdk.V2.Condition,
    json_name: "successCondition"
end

defmodule Google.Actions.Sdk.V2.Condition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :expression, 1, type: :string
  field :handler, 2, type: :string
  field :next_scene_id, 3, type: :string, json_name: "nextSceneId"
end

defmodule Google.Actions.Sdk.V2.OnSceneEnter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :handler, 1, type: :string
end

defmodule Google.Actions.Sdk.V2.WebhookInitiatedTransition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :next_scene_id, 1, type: :string, json_name: "nextSceneId"
end

defmodule Google.Actions.Sdk.V2.WebhookRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :request_json, 1, type: :string, json_name: "requestJson"
end

defmodule Google.Actions.Sdk.V2.WebhookResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :response_json, 1, type: :string, json_name: "responseJson"
end

defmodule Google.Actions.Sdk.V2.SlotMatch.NluParametersEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Actions.Sdk.V2.Conversation.IntentParameterValue
end

defmodule Google.Actions.Sdk.V2.SlotMatch do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :nlu_parameters, 2,
    repeated: true,
    type: Google.Actions.Sdk.V2.SlotMatch.NluParametersEntry,
    json_name: "nluParameters",
    map: true
end

defmodule Google.Actions.Sdk.V2.SlotRequested do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :slot, 1, type: :string
  field :prompt, 3, type: Google.Actions.Sdk.V2.Conversation.Prompt
end

defmodule Google.Actions.Sdk.V2.SlotValidated do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Actions.Sdk.V2.FormFilled do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Actions.Sdk.V2.WaitingForUserInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Actions.Sdk.V2.EndConversation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end
