defmodule Google.Cloud.Dialogflow.Cx.V3.WebhookResponse.FulfillmentResponse.MergeBehavior do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :MERGE_BEHAVIOR_UNSPECIFIED, 0
  field :APPEND, 1
  field :REPLACE, 2
end

defmodule Google.Cloud.Dialogflow.Cx.V3.PageInfo.FormInfo.ParameterInfo.ParameterState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :PARAMETER_STATE_UNSPECIFIED, 0
  field :EMPTY, 1
  field :INVALID, 2
  field :FILLED, 3
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Webhook.GenericWebService.RequestHeadersEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Webhook.GenericWebService do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :uri, 1, type: :string, deprecated: false
  field :username, 2, type: :string, deprecated: true
  field :password, 3, type: :string, deprecated: true

  field :request_headers, 4,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3.Webhook.GenericWebService.RequestHeadersEntry,
    json_name: "requestHeaders",
    map: true

  field :allowed_ca_certs, 5,
    repeated: true,
    type: :bytes,
    json_name: "allowedCaCerts",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Webhook.ServiceDirectoryConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :service, 1, type: :string, deprecated: false

  field :generic_web_service, 2,
    type: Google.Cloud.Dialogflow.Cx.V3.Webhook.GenericWebService,
    json_name: "genericWebService"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Webhook do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :webhook, 0

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

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
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ListWebhooksRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ListWebhooksResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :webhooks, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3.Webhook
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.GetWebhookRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3.CreateWebhookRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :webhook, 2, type: Google.Cloud.Dialogflow.Cx.V3.Webhook, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3.UpdateWebhookRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :webhook, 1, type: Google.Cloud.Dialogflow.Cx.V3.Webhook, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.DeleteWebhookRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :force, 2, type: :bool
end

defmodule Google.Cloud.Dialogflow.Cx.V3.WebhookRequest.FulfillmentInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :tag, 1, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3.WebhookRequest.IntentInfo.IntentParameterValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :original_value, 1, type: :string, json_name: "originalValue"
  field :resolved_value, 2, type: Google.Protobuf.Value, json_name: "resolvedValue"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.WebhookRequest.IntentInfo.ParametersEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string

  field :value, 2,
    type: Google.Cloud.Dialogflow.Cx.V3.WebhookRequest.IntentInfo.IntentParameterValue
end

defmodule Google.Cloud.Dialogflow.Cx.V3.WebhookRequest.IntentInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :last_matched_intent, 1, type: :string, json_name: "lastMatchedIntent", deprecated: false
  field :display_name, 3, type: :string, json_name: "displayName"

  field :parameters, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3.WebhookRequest.IntentInfo.ParametersEntry,
    map: true

  field :confidence, 4, type: :float
end

defmodule Google.Cloud.Dialogflow.Cx.V3.WebhookRequest.SentimentAnalysisResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :score, 1, type: :float
  field :magnitude, 2, type: :float
end

defmodule Google.Cloud.Dialogflow.Cx.V3.WebhookRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :query, 0

  field :detect_intent_response_id, 1, type: :string, json_name: "detectIntentResponseId"
  field :text, 10, type: :string, oneof: 0

  field :trigger_intent, 11,
    type: :string,
    json_name: "triggerIntent",
    oneof: 0,
    deprecated: false

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
end

defmodule Google.Cloud.Dialogflow.Cx.V3.WebhookResponse.FulfillmentResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :messages, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3.ResponseMessage

  field :merge_behavior, 2,
    type: Google.Cloud.Dialogflow.Cx.V3.WebhookResponse.FulfillmentResponse.MergeBehavior,
    json_name: "mergeBehavior",
    enum: true
end

defmodule Google.Cloud.Dialogflow.Cx.V3.WebhookResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :transition, 0

  field :fulfillment_response, 1,
    type: Google.Cloud.Dialogflow.Cx.V3.WebhookResponse.FulfillmentResponse,
    json_name: "fulfillmentResponse"

  field :page_info, 2, type: Google.Cloud.Dialogflow.Cx.V3.PageInfo, json_name: "pageInfo"

  field :session_info, 3,
    type: Google.Cloud.Dialogflow.Cx.V3.SessionInfo,
    json_name: "sessionInfo"

  field :payload, 4, type: Google.Protobuf.Struct
  field :target_page, 5, type: :string, json_name: "targetPage", oneof: 0, deprecated: false
  field :target_flow, 6, type: :string, json_name: "targetFlow", oneof: 0, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3.PageInfo.FormInfo.ParameterInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName"
  field :required, 2, type: :bool

  field :state, 3,
    type: Google.Cloud.Dialogflow.Cx.V3.PageInfo.FormInfo.ParameterInfo.ParameterState,
    enum: true

  field :value, 4, type: Google.Protobuf.Value
  field :just_collected, 5, type: :bool, json_name: "justCollected"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.PageInfo.FormInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parameter_info, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3.PageInfo.FormInfo.ParameterInfo,
    json_name: "parameterInfo"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.PageInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :current_page, 1, type: :string, json_name: "currentPage", deprecated: false
  field :display_name, 4, type: :string, json_name: "displayName"

  field :form_info, 3,
    type: Google.Cloud.Dialogflow.Cx.V3.PageInfo.FormInfo,
    json_name: "formInfo"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.SessionInfo.ParametersEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Value
end

defmodule Google.Cloud.Dialogflow.Cx.V3.SessionInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :session, 1, type: :string, deprecated: false

  field :parameters, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3.SessionInfo.ParametersEntry,
    map: true
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Webhooks.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.dialogflow.cx.v3.Webhooks",
    protoc_gen_elixir_version: "0.12.0"

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