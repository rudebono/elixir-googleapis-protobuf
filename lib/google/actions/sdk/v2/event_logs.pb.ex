defmodule Google.Actions.Sdk.V2.ExecutionEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          EventData:
            {:user_input, Google.Actions.Sdk.V2.UserConversationInput.t() | nil}
            | {:intent_match, Google.Actions.Sdk.V2.IntentMatch.t() | nil}
            | {:conditions_evaluated, Google.Actions.Sdk.V2.ConditionsEvaluated.t() | nil}
            | {:on_scene_enter, Google.Actions.Sdk.V2.OnSceneEnter.t() | nil}
            | {:webhook_request, Google.Actions.Sdk.V2.WebhookRequest.t() | nil}
            | {:webhook_response, Google.Actions.Sdk.V2.WebhookResponse.t() | nil}
            | {:webhook_initiated_transition,
               Google.Actions.Sdk.V2.WebhookInitiatedTransition.t() | nil}
            | {:slot_match, Google.Actions.Sdk.V2.SlotMatch.t() | nil}
            | {:slot_requested, Google.Actions.Sdk.V2.SlotRequested.t() | nil}
            | {:slot_validated, Google.Actions.Sdk.V2.SlotValidated.t() | nil}
            | {:form_filled, Google.Actions.Sdk.V2.FormFilled.t() | nil}
            | {:waiting_user_input, Google.Actions.Sdk.V2.WaitingForUserInput.t() | nil}
            | {:end_conversation, Google.Actions.Sdk.V2.EndConversation.t() | nil},
          event_time: Google.Protobuf.Timestamp.t() | nil,
          execution_state: Google.Actions.Sdk.V2.ExecutionState.t() | nil,
          status: Google.Rpc.Status.t() | nil,
          warning_messages: [String.t()]
        }

  defstruct [:EventData, :event_time, :execution_state, :status, :warning_messages]

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

  def transform_module(), do: nil
end

defmodule Google.Actions.Sdk.V2.ExecutionState do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          current_scene_id: String.t(),
          session_storage: Google.Protobuf.Struct.t() | nil,
          slots: Google.Actions.Sdk.V2.Slots.t() | nil,
          prompt_queue: [Google.Actions.Sdk.V2.Conversation.Prompt.t()],
          user_storage: Google.Protobuf.Struct.t() | nil,
          household_storage: Google.Protobuf.Struct.t() | nil
        }

  defstruct [
    :current_scene_id,
    :session_storage,
    :slots,
    :prompt_queue,
    :user_storage,
    :household_storage
  ]

  field :current_scene_id, 1, type: :string, json_name: "currentSceneId"
  field :session_storage, 2, type: Google.Protobuf.Struct, json_name: "sessionStorage"
  field :slots, 5, type: Google.Actions.Sdk.V2.Slots

  field :prompt_queue, 7,
    repeated: true,
    type: Google.Actions.Sdk.V2.Conversation.Prompt,
    json_name: "promptQueue"

  field :user_storage, 6, type: Google.Protobuf.Struct, json_name: "userStorage"
  field :household_storage, 8, type: Google.Protobuf.Struct, json_name: "householdStorage"

  def transform_module(), do: nil
end

defmodule Google.Actions.Sdk.V2.Slots.SlotsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Actions.Sdk.V2.Conversation.Slot.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Actions.Sdk.V2.Conversation.Slot

  def transform_module(), do: nil
end

defmodule Google.Actions.Sdk.V2.Slots do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          status: Google.Actions.Sdk.V2.Conversation.SlotFillingStatus.t(),
          slots: %{String.t() => Google.Actions.Sdk.V2.Conversation.Slot.t() | nil}
        }

  defstruct [:status, :slots]

  field :status, 2, type: Google.Actions.Sdk.V2.Conversation.SlotFillingStatus, enum: true
  field :slots, 3, repeated: true, type: Google.Actions.Sdk.V2.Slots.SlotsEntry, map: true

  def transform_module(), do: nil
end

defmodule Google.Actions.Sdk.V2.UserConversationInput do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: String.t(),
          original_query: String.t()
        }

  defstruct [:type, :original_query]

  field :type, 1, type: :string
  field :original_query, 2, type: :string, json_name: "originalQuery"

  def transform_module(), do: nil
end

defmodule Google.Actions.Sdk.V2.IntentMatch.IntentParametersEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Actions.Sdk.V2.Conversation.IntentParameterValue.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Actions.Sdk.V2.Conversation.IntentParameterValue

  def transform_module(), do: nil
end

defmodule Google.Actions.Sdk.V2.IntentMatch do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          intent_id: String.t(),
          intent_parameters: %{
            String.t() => Google.Actions.Sdk.V2.Conversation.IntentParameterValue.t() | nil
          },
          handler: String.t(),
          next_scene_id: String.t()
        }

  defstruct [:intent_id, :intent_parameters, :handler, :next_scene_id]

  field :intent_id, 1, type: :string, json_name: "intentId"

  field :intent_parameters, 5,
    repeated: true,
    type: Google.Actions.Sdk.V2.IntentMatch.IntentParametersEntry,
    json_name: "intentParameters",
    map: true

  field :handler, 3, type: :string
  field :next_scene_id, 4, type: :string, json_name: "nextSceneId"

  def transform_module(), do: nil
end

defmodule Google.Actions.Sdk.V2.ConditionsEvaluated do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          failed_conditions: [Google.Actions.Sdk.V2.Condition.t()],
          success_condition: Google.Actions.Sdk.V2.Condition.t() | nil
        }

  defstruct [:failed_conditions, :success_condition]

  field :failed_conditions, 1,
    repeated: true,
    type: Google.Actions.Sdk.V2.Condition,
    json_name: "failedConditions"

  field :success_condition, 2,
    type: Google.Actions.Sdk.V2.Condition,
    json_name: "successCondition"

  def transform_module(), do: nil
end

defmodule Google.Actions.Sdk.V2.Condition do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          expression: String.t(),
          handler: String.t(),
          next_scene_id: String.t()
        }

  defstruct [:expression, :handler, :next_scene_id]

  field :expression, 1, type: :string
  field :handler, 2, type: :string
  field :next_scene_id, 3, type: :string, json_name: "nextSceneId"

  def transform_module(), do: nil
end

defmodule Google.Actions.Sdk.V2.OnSceneEnter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          handler: String.t()
        }

  defstruct [:handler]

  field :handler, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Actions.Sdk.V2.WebhookInitiatedTransition do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          next_scene_id: String.t()
        }

  defstruct [:next_scene_id]

  field :next_scene_id, 1, type: :string, json_name: "nextSceneId"

  def transform_module(), do: nil
end

defmodule Google.Actions.Sdk.V2.WebhookRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          request_json: String.t()
        }

  defstruct [:request_json]

  field :request_json, 1, type: :string, json_name: "requestJson"

  def transform_module(), do: nil
end

defmodule Google.Actions.Sdk.V2.WebhookResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response_json: String.t()
        }

  defstruct [:response_json]

  field :response_json, 1, type: :string, json_name: "responseJson"

  def transform_module(), do: nil
end

defmodule Google.Actions.Sdk.V2.SlotMatch.NluParametersEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Actions.Sdk.V2.Conversation.IntentParameterValue.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Actions.Sdk.V2.Conversation.IntentParameterValue

  def transform_module(), do: nil
end

defmodule Google.Actions.Sdk.V2.SlotMatch do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          nlu_parameters: %{
            String.t() => Google.Actions.Sdk.V2.Conversation.IntentParameterValue.t() | nil
          }
        }

  defstruct [:nlu_parameters]

  field :nlu_parameters, 2,
    repeated: true,
    type: Google.Actions.Sdk.V2.SlotMatch.NluParametersEntry,
    json_name: "nluParameters",
    map: true

  def transform_module(), do: nil
end

defmodule Google.Actions.Sdk.V2.SlotRequested do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          slot: String.t(),
          prompt: Google.Actions.Sdk.V2.Conversation.Prompt.t() | nil
        }

  defstruct [:slot, :prompt]

  field :slot, 1, type: :string
  field :prompt, 3, type: Google.Actions.Sdk.V2.Conversation.Prompt

  def transform_module(), do: nil
end

defmodule Google.Actions.Sdk.V2.SlotValidated do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Actions.Sdk.V2.FormFilled do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Actions.Sdk.V2.WaitingForUserInput do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Actions.Sdk.V2.EndConversation do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
