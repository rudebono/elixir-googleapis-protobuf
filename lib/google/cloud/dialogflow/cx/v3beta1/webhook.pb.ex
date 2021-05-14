defmodule Google.Cloud.Dialogflow.Cx.V3beta1.WebhookResponse.FulfillmentResponse.MergeBehavior do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :MERGE_BEHAVIOR_UNSPECIFIED | :APPEND | :REPLACE

  field :MERGE_BEHAVIOR_UNSPECIFIED, 0

  field :APPEND, 1

  field :REPLACE, 2
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.PageInfo.FormInfo.ParameterInfo.ParameterState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :PARAMETER_STATE_UNSPECIFIED | :EMPTY | :INVALID | :FILLED

  field :PARAMETER_STATE_UNSPECIFIED, 0

  field :EMPTY, 1

  field :INVALID, 2

  field :FILLED, 3
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Webhook.GenericWebService.RequestHeadersEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Webhook.GenericWebService do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uri: String.t(),
          username: String.t(),
          password: String.t(),
          request_headers: %{String.t() => String.t()}
        }

  defstruct [:uri, :username, :password, :request_headers]

  field :uri, 1, type: :string
  field :username, 2, type: :string, deprecated: true
  field :password, 3, type: :string, deprecated: true

  field :request_headers, 4,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Webhook.GenericWebService.RequestHeadersEntry,
    map: true
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Webhook.ServiceDirectoryConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service: String.t(),
          generic_web_service:
            Google.Cloud.Dialogflow.Cx.V3beta1.Webhook.GenericWebService.t() | nil
        }

  defstruct [:service, :generic_web_service]

  field :service, 1, type: :string

  field :generic_web_service, 2,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Webhook.GenericWebService
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Webhook do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          webhook: {atom, any},
          name: String.t(),
          display_name: String.t(),
          timeout: Google.Protobuf.Duration.t() | nil,
          disabled: boolean
        }

  defstruct [:webhook, :name, :display_name, :timeout, :disabled]

  oneof :webhook, 0
  field :name, 1, type: :string
  field :display_name, 2, type: :string

  field :generic_web_service, 4,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Webhook.GenericWebService,
    oneof: 0

  field :service_directory, 7,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Webhook.ServiceDirectoryConfig,
    oneof: 0

  field :timeout, 6, type: Google.Protobuf.Duration
  field :disabled, 5, type: :bool
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListWebhooksRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListWebhooksResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          webhooks: [Google.Cloud.Dialogflow.Cx.V3beta1.Webhook.t()],
          next_page_token: String.t()
        }

  defstruct [:webhooks, :next_page_token]

  field :webhooks, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3beta1.Webhook
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.GetWebhookRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.CreateWebhookRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          webhook: Google.Cloud.Dialogflow.Cx.V3beta1.Webhook.t() | nil
        }

  defstruct [:parent, :webhook]

  field :parent, 1, type: :string
  field :webhook, 2, type: Google.Cloud.Dialogflow.Cx.V3beta1.Webhook
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.UpdateWebhookRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          webhook: Google.Cloud.Dialogflow.Cx.V3beta1.Webhook.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:webhook, :update_mask]

  field :webhook, 1, type: Google.Cloud.Dialogflow.Cx.V3beta1.Webhook
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.DeleteWebhookRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          force: boolean
        }

  defstruct [:name, :force]

  field :name, 1, type: :string
  field :force, 2, type: :bool
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.WebhookRequest.FulfillmentInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tag: String.t()
        }

  defstruct [:tag]

  field :tag, 1, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.WebhookRequest.IntentInfo.IntentParameterValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          original_value: String.t(),
          resolved_value: Google.Protobuf.Value.t() | nil
        }

  defstruct [:original_value, :resolved_value]

  field :original_value, 1, type: :string
  field :resolved_value, 2, type: Google.Protobuf.Value
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.WebhookRequest.IntentInfo.ParametersEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value:
            Google.Cloud.Dialogflow.Cx.V3beta1.WebhookRequest.IntentInfo.IntentParameterValue.t()
            | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string

  field :value, 2,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.WebhookRequest.IntentInfo.IntentParameterValue
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.WebhookRequest.IntentInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          last_matched_intent: String.t(),
          display_name: String.t(),
          parameters: %{
            String.t() =>
              Google.Cloud.Dialogflow.Cx.V3beta1.WebhookRequest.IntentInfo.IntentParameterValue.t()
              | nil
          },
          confidence: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:last_matched_intent, :display_name, :parameters, :confidence]

  field :last_matched_intent, 1, type: :string
  field :display_name, 3, type: :string

  field :parameters, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.WebhookRequest.IntentInfo.ParametersEntry,
    map: true

  field :confidence, 4, type: :float
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.WebhookRequest.SentimentAnalysisResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          score: float | :infinity | :negative_infinity | :nan,
          magnitude: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:score, :magnitude]

  field :score, 1, type: :float
  field :magnitude, 2, type: :float
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.WebhookRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          query: {atom, any},
          detect_intent_response_id: String.t(),
          language_code: String.t(),
          fulfillment_info:
            Google.Cloud.Dialogflow.Cx.V3beta1.WebhookRequest.FulfillmentInfo.t() | nil,
          intent_info: Google.Cloud.Dialogflow.Cx.V3beta1.WebhookRequest.IntentInfo.t() | nil,
          page_info: Google.Cloud.Dialogflow.Cx.V3beta1.PageInfo.t() | nil,
          session_info: Google.Cloud.Dialogflow.Cx.V3beta1.SessionInfo.t() | nil,
          messages: [Google.Cloud.Dialogflow.Cx.V3beta1.ResponseMessage.t()],
          payload: Google.Protobuf.Struct.t() | nil,
          sentiment_analysis_result:
            Google.Cloud.Dialogflow.Cx.V3beta1.WebhookRequest.SentimentAnalysisResult.t() | nil
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
  field :detect_intent_response_id, 1, type: :string
  field :text, 10, type: :string, oneof: 0
  field :trigger_intent, 11, type: :string, oneof: 0
  field :transcript, 12, type: :string, oneof: 0
  field :trigger_event, 14, type: :string, oneof: 0
  field :language_code, 15, type: :string

  field :fulfillment_info, 6,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.WebhookRequest.FulfillmentInfo

  field :intent_info, 3, type: Google.Cloud.Dialogflow.Cx.V3beta1.WebhookRequest.IntentInfo
  field :page_info, 4, type: Google.Cloud.Dialogflow.Cx.V3beta1.PageInfo
  field :session_info, 5, type: Google.Cloud.Dialogflow.Cx.V3beta1.SessionInfo
  field :messages, 7, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3beta1.ResponseMessage
  field :payload, 8, type: Google.Protobuf.Struct

  field :sentiment_analysis_result, 9,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.WebhookRequest.SentimentAnalysisResult
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.WebhookResponse.FulfillmentResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          messages: [Google.Cloud.Dialogflow.Cx.V3beta1.ResponseMessage.t()],
          merge_behavior:
            Google.Cloud.Dialogflow.Cx.V3beta1.WebhookResponse.FulfillmentResponse.MergeBehavior.t()
        }

  defstruct [:messages, :merge_behavior]

  field :messages, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3beta1.ResponseMessage

  field :merge_behavior, 2,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.WebhookResponse.FulfillmentResponse.MergeBehavior,
    enum: true
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.WebhookResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          transition: {atom, any},
          fulfillment_response:
            Google.Cloud.Dialogflow.Cx.V3beta1.WebhookResponse.FulfillmentResponse.t() | nil,
          page_info: Google.Cloud.Dialogflow.Cx.V3beta1.PageInfo.t() | nil,
          session_info: Google.Cloud.Dialogflow.Cx.V3beta1.SessionInfo.t() | nil,
          payload: Google.Protobuf.Struct.t() | nil
        }

  defstruct [:transition, :fulfillment_response, :page_info, :session_info, :payload]

  oneof :transition, 0

  field :fulfillment_response, 1,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.WebhookResponse.FulfillmentResponse

  field :page_info, 2, type: Google.Cloud.Dialogflow.Cx.V3beta1.PageInfo
  field :session_info, 3, type: Google.Cloud.Dialogflow.Cx.V3beta1.SessionInfo
  field :payload, 4, type: Google.Protobuf.Struct
  field :target_page, 5, type: :string, oneof: 0
  field :target_flow, 6, type: :string, oneof: 0
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.PageInfo.FormInfo.ParameterInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          display_name: String.t(),
          required: boolean,
          state:
            Google.Cloud.Dialogflow.Cx.V3beta1.PageInfo.FormInfo.ParameterInfo.ParameterState.t(),
          value: Google.Protobuf.Value.t() | nil,
          just_collected: boolean
        }

  defstruct [:display_name, :required, :state, :value, :just_collected]

  field :display_name, 1, type: :string
  field :required, 2, type: :bool

  field :state, 3,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.PageInfo.FormInfo.ParameterInfo.ParameterState,
    enum: true

  field :value, 4, type: Google.Protobuf.Value
  field :just_collected, 5, type: :bool
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.PageInfo.FormInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parameter_info: [Google.Cloud.Dialogflow.Cx.V3beta1.PageInfo.FormInfo.ParameterInfo.t()]
        }

  defstruct [:parameter_info]

  field :parameter_info, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.PageInfo.FormInfo.ParameterInfo
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.PageInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          current_page: String.t(),
          form_info: Google.Cloud.Dialogflow.Cx.V3beta1.PageInfo.FormInfo.t() | nil
        }

  defstruct [:current_page, :form_info]

  field :current_page, 1, type: :string
  field :form_info, 3, type: Google.Cloud.Dialogflow.Cx.V3beta1.PageInfo.FormInfo
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.SessionInfo.ParametersEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Protobuf.Value.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Value
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.SessionInfo do
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
    type: Google.Cloud.Dialogflow.Cx.V3beta1.SessionInfo.ParametersEntry,
    map: true
end
