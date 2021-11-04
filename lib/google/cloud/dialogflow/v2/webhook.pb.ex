defmodule Google.Cloud.Dialogflow.V2.WebhookRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          session: String.t(),
          response_id: String.t(),
          query_result: Google.Cloud.Dialogflow.V2.QueryResult.t() | nil,
          original_detect_intent_request:
            Google.Cloud.Dialogflow.V2.OriginalDetectIntentRequest.t() | nil
        }

  defstruct [:session, :response_id, :query_result, :original_detect_intent_request]

  field :session, 4, type: :string
  field :response_id, 1, type: :string, json_name: "responseId"
  field :query_result, 2, type: Google.Cloud.Dialogflow.V2.QueryResult, json_name: "queryResult"

  field :original_detect_intent_request, 3,
    type: Google.Cloud.Dialogflow.V2.OriginalDetectIntentRequest,
    json_name: "originalDetectIntentRequest"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.V2.WebhookResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          fulfillment_text: String.t(),
          fulfillment_messages: [Google.Cloud.Dialogflow.V2.Intent.Message.t()],
          source: String.t(),
          payload: Google.Protobuf.Struct.t() | nil,
          output_contexts: [Google.Cloud.Dialogflow.V2.Context.t()],
          followup_event_input: Google.Cloud.Dialogflow.V2.EventInput.t() | nil,
          session_entity_types: [Google.Cloud.Dialogflow.V2.SessionEntityType.t()]
        }

  defstruct [
    :fulfillment_text,
    :fulfillment_messages,
    :source,
    :payload,
    :output_contexts,
    :followup_event_input,
    :session_entity_types
  ]

  field :fulfillment_text, 1, type: :string, json_name: "fulfillmentText"

  field :fulfillment_messages, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.Intent.Message,
    json_name: "fulfillmentMessages"

  field :source, 3, type: :string
  field :payload, 4, type: Google.Protobuf.Struct

  field :output_contexts, 5,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.Context,
    json_name: "outputContexts"

  field :followup_event_input, 6,
    type: Google.Cloud.Dialogflow.V2.EventInput,
    json_name: "followupEventInput"

  field :session_entity_types, 10,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.SessionEntityType,
    json_name: "sessionEntityTypes"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.V2.OriginalDetectIntentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: String.t(),
          version: String.t(),
          payload: Google.Protobuf.Struct.t() | nil
        }

  defstruct [:source, :version, :payload]

  field :source, 1, type: :string
  field :version, 2, type: :string
  field :payload, 3, type: Google.Protobuf.Struct

  def transform_module(), do: nil
end
