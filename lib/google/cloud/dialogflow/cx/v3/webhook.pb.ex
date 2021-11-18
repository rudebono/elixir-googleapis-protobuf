defmodule Google.Cloud.Dialogflow.Cx.V3.WebhookResponse.FulfillmentResponse.MergeBehavior do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :MERGE_BEHAVIOR_UNSPECIFIED | :APPEND | :REPLACE

  field :MERGE_BEHAVIOR_UNSPECIFIED, 0
  field :APPEND, 1
  field :REPLACE, 2
end

defmodule Google.Cloud.Dialogflow.Cx.V3.PageInfo.FormInfo.ParameterInfo.ParameterState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :PARAMETER_STATE_UNSPECIFIED | :EMPTY | :INVALID | :FILLED

  field :PARAMETER_STATE_UNSPECIFIED, 0
  field :EMPTY, 1
  field :INVALID, 2
  field :FILLED, 3
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Webhook.GenericWebService.RequestHeadersEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Webhook.GenericWebService do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uri: String.t(),
          username: String.t(),
          password: String.t(),
          request_headers: %{String.t() => String.t()},
          allowed_ca_certs: [binary]
        }

  defstruct [:uri, :username, :password, :request_headers, :allowed_ca_certs]

  field :uri, 1, type: :string
  field :username, 2, type: :string, deprecated: true
  field :password, 3, type: :string, deprecated: true

  field :request_headers, 4,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3.Webhook.GenericWebService.RequestHeadersEntry,
    json_name: "requestHeaders",
    map: true

  field :allowed_ca_certs, 5, repeated: true, type: :bytes, json_name: "allowedCaCerts"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Webhook.ServiceDirectoryConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service: String.t(),
          generic_web_service: Google.Cloud.Dialogflow.Cx.V3.Webhook.GenericWebService.t() | nil
        }

  defstruct [:service, :generic_web_service]

  field :service, 1, type: :string

  field :generic_web_service, 2,
    type: Google.Cloud.Dialogflow.Cx.V3.Webhook.GenericWebService,
    json_name: "genericWebService"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Webhook do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          webhook:
            {:generic_web_service,
             Google.Cloud.Dialogflow.Cx.V3.Webhook.GenericWebService.t() | nil}
            | {:service_directory,
               Google.Cloud.Dialogflow.Cx.V3.Webhook.ServiceDirectoryConfig.t() | nil},
          name: String.t(),
          display_name: String.t(),
          timeout: Google.Protobuf.Duration.t() | nil,
          disabled: boolean
        }

  defstruct [:webhook, :name, :display_name, :timeout, :disabled]

  oneof :webhook, 0

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"

  field :generic_web_service, 4,
    type: Google.Cloud.Dialogflow.Cx.V3.Webhook.GenericWebService,
    json_name: "genericWebService",
    oneof: 0

  field :service_directory, 7,
    type: Google.Cloud.Dialogflow.Cx.V3.Webhook.ServiceDirectoryConfig,
    json_name: "serviceDirectory",
    oneof: 0

  field :timeout, 6, type: Google.Protobuf.Duration
  field :disabled, 5, type: :bool

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ListWebhooksRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ListWebhooksResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          webhooks: [Google.Cloud.Dialogflow.Cx.V3.Webhook.t()],
          next_page_token: String.t()
        }

  defstruct [:webhooks, :next_page_token]

  field :webhooks, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3.Webhook
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3.GetWebhookRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3.CreateWebhookRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          webhook: Google.Cloud.Dialogflow.Cx.V3.Webhook.t() | nil
        }

  defstruct [:parent, :webhook]

  field :parent, 1, type: :string
  field :webhook, 2, type: Google.Cloud.Dialogflow.Cx.V3.Webhook

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3.UpdateWebhookRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          webhook: Google.Cloud.Dialogflow.Cx.V3.Webhook.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:webhook, :update_mask]

  field :webhook, 1, type: Google.Cloud.Dialogflow.Cx.V3.Webhook
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3.DeleteWebhookRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          force: boolean
        }

  defstruct [:name, :force]

  field :name, 1, type: :string
  field :force, 2, type: :bool

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3.WebhookRequest.FulfillmentInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tag: String.t()
        }

  defstruct [:tag]

  field :tag, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3.WebhookRequest.IntentInfo.IntentParameterValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          original_value: String.t(),
          resolved_value: Google.Protobuf.Value.t() | nil
        }

  defstruct [:original_value, :resolved_value]

  field :original_value, 1, type: :string, json_name: "originalValue"
  field :resolved_value, 2, type: Google.Protobuf.Value, json_name: "resolvedValue"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3.WebhookRequest.IntentInfo.ParametersEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value:
            Google.Cloud.Dialogflow.Cx.V3.WebhookRequest.IntentInfo.IntentParameterValue.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string

  field :value, 2,
    type: Google.Cloud.Dialogflow.Cx.V3.WebhookRequest.IntentInfo.IntentParameterValue

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3.WebhookRequest.IntentInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          last_matched_intent: String.t(),
          display_name: String.t(),
          parameters: %{
            String.t() =>
              Google.Cloud.Dialogflow.Cx.V3.WebhookRequest.IntentInfo.IntentParameterValue.t()
              | nil
          },
          confidence: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:last_matched_intent, :display_name, :parameters, :confidence]

  field :last_matched_intent, 1, type: :string, json_name: "lastMatchedIntent"
  field :display_name, 3, type: :string, json_name: "displayName"

  field :parameters, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3.WebhookRequest.IntentInfo.ParametersEntry,
    map: true

  field :confidence, 4, type: :float

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3.WebhookRequest.SentimentAnalysisResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          score: float | :infinity | :negative_infinity | :nan,
          magnitude: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:score, :magnitude]

  field :score, 1, type: :float
  field :magnitude, 2, type: :float

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3.WebhookRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          query:
            {:text, String.t()}
            | {:trigger_intent, String.t()}
            | {:transcript, String.t()}
            | {:trigger_event, String.t()},
          detect_intent_response_id: String.t(),
          language_code: String.t(),
          fulfillment_info:
            Google.Cloud.Dialogflow.Cx.V3.WebhookRequest.FulfillmentInfo.t() | nil,
          intent_info: Google.Cloud.Dialogflow.Cx.V3.WebhookRequest.IntentInfo.t() | nil,
          page_info: Google.Cloud.Dialogflow.Cx.V3.PageInfo.t() | nil,
          session_info: Google.Cloud.Dialogflow.Cx.V3.SessionInfo.t() | nil,
          messages: [Google.Cloud.Dialogflow.Cx.V3.ResponseMessage.t()],
          payload: Google.Protobuf.Struct.t() | nil,
          sentiment_analysis_result:
            Google.Cloud.Dialogflow.Cx.V3.WebhookRequest.SentimentAnalysisResult.t() | nil
        }

  defstruct [
    :query,
    :detect_intent_response_id,
    :language_code,
    :fulfillment_info,
    :intent_info,
    :page_info,
    :session_info,
    :messages,
    :payload,
    :sentiment_analysis_result
  ]

  oneof :query, 0

  field :detect_intent_response_id, 1, type: :string, json_name: "detectIntentResponseId"
  field :text, 10, type: :string, oneof: 0
  field :trigger_intent, 11, type: :string, json_name: "triggerIntent", oneof: 0
  field :transcript, 12, type: :string, oneof: 0
  field :trigger_event, 14, type: :string, json_name: "triggerEvent", oneof: 0
  field :language_code, 15, type: :string, json_name: "languageCode"

  field :fulfillment_info, 6,
    type: Google.Cloud.Dialogflow.Cx.V3.WebhookRequest.FulfillmentInfo,
    json_name: "fulfillmentInfo"

  field :intent_info, 3,
    type: Google.Cloud.Dialogflow.Cx.V3.WebhookRequest.IntentInfo,
    json_name: "intentInfo"

  field :page_info, 4, type: Google.Cloud.Dialogflow.Cx.V3.PageInfo, json_name: "pageInfo"

  field :session_info, 5,
    type: Google.Cloud.Dialogflow.Cx.V3.SessionInfo,
    json_name: "sessionInfo"

  field :messages, 7, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3.ResponseMessage
  field :payload, 8, type: Google.Protobuf.Struct

  field :sentiment_analysis_result, 9,
    type: Google.Cloud.Dialogflow.Cx.V3.WebhookRequest.SentimentAnalysisResult,
    json_name: "sentimentAnalysisResult"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3.WebhookResponse.FulfillmentResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          messages: [Google.Cloud.Dialogflow.Cx.V3.ResponseMessage.t()],
          merge_behavior:
            Google.Cloud.Dialogflow.Cx.V3.WebhookResponse.FulfillmentResponse.MergeBehavior.t()
        }

  defstruct [:messages, :merge_behavior]

  field :messages, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3.ResponseMessage

  field :merge_behavior, 2,
    type: Google.Cloud.Dialogflow.Cx.V3.WebhookResponse.FulfillmentResponse.MergeBehavior,
    enum: true,
    json_name: "mergeBehavior"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3.WebhookResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          transition: {:target_page, String.t()} | {:target_flow, String.t()},
          fulfillment_response:
            Google.Cloud.Dialogflow.Cx.V3.WebhookResponse.FulfillmentResponse.t() | nil,
          page_info: Google.Cloud.Dialogflow.Cx.V3.PageInfo.t() | nil,
          session_info: Google.Cloud.Dialogflow.Cx.V3.SessionInfo.t() | nil,
          payload: Google.Protobuf.Struct.t() | nil
        }

  defstruct [:transition, :fulfillment_response, :page_info, :session_info, :payload]

  oneof :transition, 0

  field :fulfillment_response, 1,
    type: Google.Cloud.Dialogflow.Cx.V3.WebhookResponse.FulfillmentResponse,
    json_name: "fulfillmentResponse"

  field :page_info, 2, type: Google.Cloud.Dialogflow.Cx.V3.PageInfo, json_name: "pageInfo"

  field :session_info, 3,
    type: Google.Cloud.Dialogflow.Cx.V3.SessionInfo,
    json_name: "sessionInfo"

  field :payload, 4, type: Google.Protobuf.Struct
  field :target_page, 5, type: :string, json_name: "targetPage", oneof: 0
  field :target_flow, 6, type: :string, json_name: "targetFlow", oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3.PageInfo.FormInfo.ParameterInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          display_name: String.t(),
          required: boolean,
          state: Google.Cloud.Dialogflow.Cx.V3.PageInfo.FormInfo.ParameterInfo.ParameterState.t(),
          value: Google.Protobuf.Value.t() | nil,
          just_collected: boolean
        }

  defstruct [:display_name, :required, :state, :value, :just_collected]

  field :display_name, 1, type: :string, json_name: "displayName"
  field :required, 2, type: :bool

  field :state, 3,
    type: Google.Cloud.Dialogflow.Cx.V3.PageInfo.FormInfo.ParameterInfo.ParameterState,
    enum: true

  field :value, 4, type: Google.Protobuf.Value
  field :just_collected, 5, type: :bool, json_name: "justCollected"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3.PageInfo.FormInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parameter_info: [Google.Cloud.Dialogflow.Cx.V3.PageInfo.FormInfo.ParameterInfo.t()]
        }

  defstruct [:parameter_info]

  field :parameter_info, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3.PageInfo.FormInfo.ParameterInfo,
    json_name: "parameterInfo"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3.PageInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          current_page: String.t(),
          form_info: Google.Cloud.Dialogflow.Cx.V3.PageInfo.FormInfo.t() | nil
        }

  defstruct [:current_page, :form_info]

  field :current_page, 1, type: :string, json_name: "currentPage"

  field :form_info, 3,
    type: Google.Cloud.Dialogflow.Cx.V3.PageInfo.FormInfo,
    json_name: "formInfo"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3.SessionInfo.ParametersEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Protobuf.Value.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Value

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3.SessionInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          session: String.t(),
          parameters: %{String.t() => Google.Protobuf.Value.t() | nil}
        }

  defstruct [:session, :parameters]

  field :session, 1, type: :string

  field :parameters, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3.SessionInfo.ParametersEntry,
    map: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Webhooks.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.dialogflow.cx.v3.Webhooks"

  rpc :ListWebhooks,
      Google.Cloud.Dialogflow.Cx.V3.ListWebhooksRequest,
      Google.Cloud.Dialogflow.Cx.V3.ListWebhooksResponse

  rpc :GetWebhook,
      Google.Cloud.Dialogflow.Cx.V3.GetWebhookRequest,
      Google.Cloud.Dialogflow.Cx.V3.Webhook

  rpc :CreateWebhook,
      Google.Cloud.Dialogflow.Cx.V3.CreateWebhookRequest,
      Google.Cloud.Dialogflow.Cx.V3.Webhook

  rpc :UpdateWebhook,
      Google.Cloud.Dialogflow.Cx.V3.UpdateWebhookRequest,
      Google.Cloud.Dialogflow.Cx.V3.Webhook

  rpc :DeleteWebhook, Google.Cloud.Dialogflow.Cx.V3.DeleteWebhookRequest, Google.Protobuf.Empty
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Webhooks.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Dialogflow.Cx.V3.Webhooks.Service
end
