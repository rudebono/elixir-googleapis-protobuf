defmodule Google.Cloud.Dialogflow.Cx.V3beta1.DetectIntentResponse.ResponseType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :RESPONSE_TYPE_UNSPECIFIED, 0
  field :PARTIAL, 1
  field :FINAL, 2
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.StreamingRecognitionResult.MessageType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :MESSAGE_TYPE_UNSPECIFIED, 0
  field :TRANSCRIPT, 1
  field :END_OF_SINGLE_UTTERANCE, 2
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Match.MatchType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :MATCH_TYPE_UNSPECIFIED, 0
  field :INTENT, 1
  field :DIRECT_INTENT, 2
  field :PARAMETER_FILLING, 3
  field :NO_MATCH, 4
  field :NO_INPUT, 5
  field :EVENT, 6
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.DetectIntentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :session, 1, type: :string, deprecated: false

  field :query_params, 2,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.QueryParameters,
    json_name: "queryParams"

  field :query_input, 3,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.QueryInput,
    json_name: "queryInput",
    deprecated: false

  field :output_audio_config, 4,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.OutputAudioConfig,
    json_name: "outputAudioConfig"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.DetectIntentResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :response_id, 1, type: :string, json_name: "responseId"

  field :query_result, 2,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.QueryResult,
    json_name: "queryResult"

  field :output_audio, 4, type: :bytes, json_name: "outputAudio"

  field :output_audio_config, 5,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.OutputAudioConfig,
    json_name: "outputAudioConfig"

  field :response_type, 6,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.DetectIntentResponse.ResponseType,
    json_name: "responseType",
    enum: true

  field :allow_cancellation, 7, type: :bool, json_name: "allowCancellation"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.StreamingDetectIntentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :session, 1, type: :string, deprecated: false

  field :query_params, 2,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.QueryParameters,
    json_name: "queryParams"

  field :query_input, 3,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.QueryInput,
    json_name: "queryInput",
    deprecated: false

  field :output_audio_config, 4,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.OutputAudioConfig,
    json_name: "outputAudioConfig"

  field :enable_partial_response, 5, type: :bool, json_name: "enablePartialResponse"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.StreamingDetectIntentResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :response, 0

  field :recognition_result, 1,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.StreamingRecognitionResult,
    json_name: "recognitionResult",
    oneof: 0

  field :detect_intent_response, 2,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.DetectIntentResponse,
    json_name: "detectIntentResponse",
    oneof: 0
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.StreamingRecognitionResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :message_type, 1,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.StreamingRecognitionResult.MessageType,
    json_name: "messageType",
    enum: true

  field :transcript, 2, type: :string
  field :is_final, 3, type: :bool, json_name: "isFinal"
  field :confidence, 4, type: :float
  field :stability, 6, type: :float

  field :speech_word_info, 7,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.SpeechWordInfo,
    json_name: "speechWordInfo"

  field :speech_end_offset, 8, type: Google.Protobuf.Duration, json_name: "speechEndOffset"
  field :language_code, 10, type: :string, json_name: "languageCode"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.QueryParameters.WebhookHeadersEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.QueryParameters do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :time_zone, 1, type: :string, json_name: "timeZone"
  field :geo_location, 2, type: Google.Type.LatLng, json_name: "geoLocation"

  field :session_entity_types, 3,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.SessionEntityType,
    json_name: "sessionEntityTypes"

  field :payload, 4, type: Google.Protobuf.Struct
  field :parameters, 5, type: Google.Protobuf.Struct
  field :current_page, 6, type: :string, json_name: "currentPage", deprecated: false
  field :disable_webhook, 7, type: :bool, json_name: "disableWebhook"
  field :analyze_query_text_sentiment, 8, type: :bool, json_name: "analyzeQueryTextSentiment"

  field :webhook_headers, 10,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.QueryParameters.WebhookHeadersEntry,
    json_name: "webhookHeaders",
    map: true

  field :flow_versions, 14,
    repeated: true,
    type: :string,
    json_name: "flowVersions",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.QueryInput do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :input, 0

  field :text, 2, type: Google.Cloud.Dialogflow.Cx.V3beta1.TextInput, oneof: 0
  field :intent, 3, type: Google.Cloud.Dialogflow.Cx.V3beta1.IntentInput, oneof: 0
  field :audio, 5, type: Google.Cloud.Dialogflow.Cx.V3beta1.AudioInput, oneof: 0
  field :event, 6, type: Google.Cloud.Dialogflow.Cx.V3beta1.EventInput, oneof: 0
  field :dtmf, 7, type: Google.Cloud.Dialogflow.Cx.V3beta1.DtmfInput, oneof: 0
  field :language_code, 4, type: :string, json_name: "languageCode", deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.QueryResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :query, 0

  field :text, 1, type: :string, oneof: 0

  field :trigger_intent, 11,
    type: :string,
    json_name: "triggerIntent",
    oneof: 0,
    deprecated: false

  field :transcript, 12, type: :string, oneof: 0
  field :trigger_event, 14, type: :string, json_name: "triggerEvent", oneof: 0
  field :dtmf, 23, type: Google.Cloud.Dialogflow.Cx.V3beta1.DtmfInput, oneof: 0
  field :language_code, 2, type: :string, json_name: "languageCode"
  field :parameters, 3, type: Google.Protobuf.Struct

  field :response_messages, 4,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.ResponseMessage,
    json_name: "responseMessages"

  field :webhook_statuses, 13,
    repeated: true,
    type: Google.Rpc.Status,
    json_name: "webhookStatuses"

  field :webhook_payloads, 6,
    repeated: true,
    type: Google.Protobuf.Struct,
    json_name: "webhookPayloads"

  field :current_page, 7, type: Google.Cloud.Dialogflow.Cx.V3beta1.Page, json_name: "currentPage"
  field :intent, 8, type: Google.Cloud.Dialogflow.Cx.V3beta1.Intent, deprecated: true

  field :intent_detection_confidence, 9,
    type: :float,
    json_name: "intentDetectionConfidence",
    deprecated: true

  field :match, 15, type: Google.Cloud.Dialogflow.Cx.V3beta1.Match
  field :diagnostic_info, 10, type: Google.Protobuf.Struct, json_name: "diagnosticInfo"

  field :sentiment_analysis_result, 17,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.SentimentAnalysisResult,
    json_name: "sentimentAnalysisResult"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.TextInput do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :text, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.IntentInput do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :intent, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.AudioInput do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :config, 1, type: Google.Cloud.Dialogflow.Cx.V3beta1.InputAudioConfig, deprecated: false
  field :audio, 2, type: :bytes
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.EventInput do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :event, 1, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.DtmfInput do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :digits, 1, type: :string
  field :finish_digit, 2, type: :string, json_name: "finishDigit"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Match do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :intent, 1, type: Google.Cloud.Dialogflow.Cx.V3beta1.Intent
  field :event, 6, type: :string
  field :parameters, 2, type: Google.Protobuf.Struct
  field :resolved_input, 3, type: :string, json_name: "resolvedInput"

  field :match_type, 4,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Match.MatchType,
    json_name: "matchType",
    enum: true

  field :confidence, 5, type: :float
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.MatchIntentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :session, 1, type: :string, deprecated: false

  field :query_params, 2,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.QueryParameters,
    json_name: "queryParams"

  field :query_input, 3,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.QueryInput,
    json_name: "queryInput",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.MatchIntentResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :query, 0

  field :text, 1, type: :string, oneof: 0
  field :trigger_intent, 2, type: :string, json_name: "triggerIntent", oneof: 0, deprecated: false
  field :transcript, 3, type: :string, oneof: 0
  field :trigger_event, 6, type: :string, json_name: "triggerEvent", oneof: 0
  field :matches, 4, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3beta1.Match
  field :current_page, 5, type: Google.Cloud.Dialogflow.Cx.V3beta1.Page, json_name: "currentPage"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.FulfillIntentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :match_intent_request, 1,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.MatchIntentRequest,
    json_name: "matchIntentRequest"

  field :match, 2, type: Google.Cloud.Dialogflow.Cx.V3beta1.Match

  field :output_audio_config, 3,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.OutputAudioConfig,
    json_name: "outputAudioConfig"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.FulfillIntentResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :response_id, 1, type: :string, json_name: "responseId"

  field :query_result, 2,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.QueryResult,
    json_name: "queryResult"

  field :output_audio, 3, type: :bytes, json_name: "outputAudio"

  field :output_audio_config, 4,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.OutputAudioConfig,
    json_name: "outputAudioConfig"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.SentimentAnalysisResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :score, 1, type: :float
  field :magnitude, 2, type: :float
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Sessions.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.dialogflow.cx.v3beta1.Sessions",
    protoc_gen_elixir_version: "0.11.0"

  rpc :DetectIntent,
      Google.Cloud.Dialogflow.Cx.V3beta1.DetectIntentRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.DetectIntentResponse

  rpc :StreamingDetectIntent,
      stream(Google.Cloud.Dialogflow.Cx.V3beta1.StreamingDetectIntentRequest),
      stream(Google.Cloud.Dialogflow.Cx.V3beta1.StreamingDetectIntentResponse)

  rpc :MatchIntent,
      Google.Cloud.Dialogflow.Cx.V3beta1.MatchIntentRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.MatchIntentResponse

  rpc :FulfillIntent,
      Google.Cloud.Dialogflow.Cx.V3beta1.FulfillIntentRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.FulfillIntentResponse
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Sessions.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Dialogflow.Cx.V3beta1.Sessions.Service
end