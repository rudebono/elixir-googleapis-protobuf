defmodule Google.Cloud.Dialogflow.V2beta1.WebhookRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          session: String.t(),
          response_id: String.t(),
          query_result: Google.Cloud.Dialogflow.V2beta1.QueryResult.t() | nil,
          alternative_query_results: [Google.Cloud.Dialogflow.V2beta1.QueryResult.t()],
          original_detect_intent_request:
            Google.Cloud.Dialogflow.V2beta1.OriginalDetectIntentRequest.t() | nil
        }

  defstruct session: "",
            response_id: "",
            query_result: nil,
            alternative_query_results: [],
            original_detect_intent_request: nil

  field :session, 4, type: :string
  field :response_id, 1, type: :string, json_name: "responseId"

  field :query_result, 2,
    type: Google.Cloud.Dialogflow.V2beta1.QueryResult,
    json_name: "queryResult"

  field :alternative_query_results, 5,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.QueryResult,
    json_name: "alternativeQueryResults"

  field :original_detect_intent_request, 3,
    type: Google.Cloud.Dialogflow.V2beta1.OriginalDetectIntentRequest,
    json_name: "originalDetectIntentRequest"
end
defmodule Google.Cloud.Dialogflow.V2beta1.WebhookResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          fulfillment_text: String.t(),
          fulfillment_messages: [Google.Cloud.Dialogflow.V2beta1.Intent.Message.t()],
          source: String.t(),
          payload: Google.Protobuf.Struct.t() | nil,
          output_contexts: [Google.Cloud.Dialogflow.V2beta1.Context.t()],
          followup_event_input: Google.Cloud.Dialogflow.V2beta1.EventInput.t() | nil,
          live_agent_handoff: boolean,
          end_interaction: boolean,
          session_entity_types: [Google.Cloud.Dialogflow.V2beta1.SessionEntityType.t()]
        }

  defstruct fulfillment_text: "",
            fulfillment_messages: [],
            source: "",
            payload: nil,
            output_contexts: [],
            followup_event_input: nil,
            live_agent_handoff: false,
            end_interaction: false,
            session_entity_types: []

  field :fulfillment_text, 1, type: :string, json_name: "fulfillmentText"

  field :fulfillment_messages, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message,
    json_name: "fulfillmentMessages"

  field :source, 3, type: :string
  field :payload, 4, type: Google.Protobuf.Struct

  field :output_contexts, 5,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Context,
    json_name: "outputContexts"

  field :followup_event_input, 6,
    type: Google.Cloud.Dialogflow.V2beta1.EventInput,
    json_name: "followupEventInput"

  field :live_agent_handoff, 7, type: :bool, json_name: "liveAgentHandoff"
  field :end_interaction, 8, type: :bool, json_name: "endInteraction"

  field :session_entity_types, 10,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.SessionEntityType,
    json_name: "sessionEntityTypes"
end
defmodule Google.Cloud.Dialogflow.V2beta1.OriginalDetectIntentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: String.t(),
          version: String.t(),
          payload: Google.Protobuf.Struct.t() | nil
        }

  defstruct source: "",
            version: "",
            payload: nil

  field :source, 1, type: :string
  field :version, 2, type: :string
  field :payload, 3, type: Google.Protobuf.Struct
end
