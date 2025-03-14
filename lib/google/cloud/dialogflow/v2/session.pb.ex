defmodule Google.Cloud.Dialogflow.V2.StreamingRecognitionResult.MessageType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :MESSAGE_TYPE_UNSPECIFIED, 0
  field :TRANSCRIPT, 1
  field :END_OF_SINGLE_UTTERANCE, 2
end

defmodule Google.Cloud.Dialogflow.V2.DetectIntentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :session, 1, type: :string, deprecated: false

  field :query_params, 2,
    type: Google.Cloud.Dialogflow.V2.QueryParameters,
    json_name: "queryParams"

  field :query_input, 3,
    type: Google.Cloud.Dialogflow.V2.QueryInput,
    json_name: "queryInput",
    deprecated: false

  field :output_audio_config, 4,
    type: Google.Cloud.Dialogflow.V2.OutputAudioConfig,
    json_name: "outputAudioConfig"

  field :output_audio_config_mask, 7,
    type: Google.Protobuf.FieldMask,
    json_name: "outputAudioConfigMask"

  field :input_audio, 5, type: :bytes, json_name: "inputAudio"
end

defmodule Google.Cloud.Dialogflow.V2.DetectIntentResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :response_id, 1, type: :string, json_name: "responseId"
  field :query_result, 2, type: Google.Cloud.Dialogflow.V2.QueryResult, json_name: "queryResult"
  field :webhook_status, 3, type: Google.Rpc.Status, json_name: "webhookStatus"
  field :output_audio, 4, type: :bytes, json_name: "outputAudio"

  field :output_audio_config, 6,
    type: Google.Cloud.Dialogflow.V2.OutputAudioConfig,
    json_name: "outputAudioConfig"
end

defmodule Google.Cloud.Dialogflow.V2.QueryParameters.WebhookHeadersEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.V2.QueryParameters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :time_zone, 1, type: :string, json_name: "timeZone"
  field :geo_location, 2, type: Google.Type.LatLng, json_name: "geoLocation"
  field :contexts, 3, repeated: true, type: Google.Cloud.Dialogflow.V2.Context
  field :reset_contexts, 4, type: :bool, json_name: "resetContexts"

  field :session_entity_types, 5,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.SessionEntityType,
    json_name: "sessionEntityTypes"

  field :payload, 6, type: Google.Protobuf.Struct

  field :sentiment_analysis_request_config, 10,
    type: Google.Cloud.Dialogflow.V2.SentimentAnalysisRequestConfig,
    json_name: "sentimentAnalysisRequestConfig"

  field :webhook_headers, 14,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.QueryParameters.WebhookHeadersEntry,
    json_name: "webhookHeaders",
    map: true

  field :platform, 18, type: :string
end

defmodule Google.Cloud.Dialogflow.V2.QueryInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :input, 0

  field :audio_config, 1,
    type: Google.Cloud.Dialogflow.V2.InputAudioConfig,
    json_name: "audioConfig",
    oneof: 0

  field :text, 2, type: Google.Cloud.Dialogflow.V2.TextInput, oneof: 0
  field :event, 3, type: Google.Cloud.Dialogflow.V2.EventInput, oneof: 0
end

defmodule Google.Cloud.Dialogflow.V2.QueryResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :query_text, 1, type: :string, json_name: "queryText"
  field :language_code, 15, type: :string, json_name: "languageCode"
  field :speech_recognition_confidence, 2, type: :float, json_name: "speechRecognitionConfidence"
  field :action, 3, type: :string
  field :parameters, 4, type: Google.Protobuf.Struct
  field :all_required_params_present, 5, type: :bool, json_name: "allRequiredParamsPresent"
  field :cancels_slot_filling, 21, type: :bool, json_name: "cancelsSlotFilling"
  field :fulfillment_text, 6, type: :string, json_name: "fulfillmentText"

  field :fulfillment_messages, 7,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.Intent.Message,
    json_name: "fulfillmentMessages"

  field :webhook_source, 8, type: :string, json_name: "webhookSource"
  field :webhook_payload, 9, type: Google.Protobuf.Struct, json_name: "webhookPayload"

  field :output_contexts, 10,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.Context,
    json_name: "outputContexts"

  field :intent, 11, type: Google.Cloud.Dialogflow.V2.Intent
  field :intent_detection_confidence, 12, type: :float, json_name: "intentDetectionConfidence"
  field :diagnostic_info, 14, type: Google.Protobuf.Struct, json_name: "diagnosticInfo"

  field :sentiment_analysis_result, 17,
    type: Google.Cloud.Dialogflow.V2.SentimentAnalysisResult,
    json_name: "sentimentAnalysisResult"
end

defmodule Google.Cloud.Dialogflow.V2.StreamingDetectIntentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :session, 1, type: :string, deprecated: false

  field :query_params, 2,
    type: Google.Cloud.Dialogflow.V2.QueryParameters,
    json_name: "queryParams"

  field :query_input, 3,
    type: Google.Cloud.Dialogflow.V2.QueryInput,
    json_name: "queryInput",
    deprecated: false

  field :single_utterance, 4, type: :bool, json_name: "singleUtterance", deprecated: true

  field :output_audio_config, 5,
    type: Google.Cloud.Dialogflow.V2.OutputAudioConfig,
    json_name: "outputAudioConfig"

  field :output_audio_config_mask, 7,
    type: Google.Protobuf.FieldMask,
    json_name: "outputAudioConfigMask"

  field :input_audio, 6, type: :bytes, json_name: "inputAudio"
  field :enable_debugging_info, 8, type: :bool, json_name: "enableDebuggingInfo"
end

defmodule Google.Cloud.Dialogflow.V2.CloudConversationDebuggingInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :audio_data_chunks, 1, type: :int32, json_name: "audioDataChunks"

  field :result_end_time_offset, 2,
    type: Google.Protobuf.Duration,
    json_name: "resultEndTimeOffset"

  field :first_audio_duration, 3, type: Google.Protobuf.Duration, json_name: "firstAudioDuration"
  field :single_utterance, 5, type: :bool, json_name: "singleUtterance"

  field :speech_partial_results_end_times, 6,
    repeated: true,
    type: Google.Protobuf.Duration,
    json_name: "speechPartialResultsEndTimes"

  field :speech_final_results_end_times, 7,
    repeated: true,
    type: Google.Protobuf.Duration,
    json_name: "speechFinalResultsEndTimes"

  field :partial_responses, 8, type: :int32, json_name: "partialResponses"

  field :speaker_id_passive_latency_ms_offset, 9,
    type: :int32,
    json_name: "speakerIdPassiveLatencyMsOffset"

  field :bargein_event_triggered, 10, type: :bool, json_name: "bargeinEventTriggered"
  field :speech_single_utterance, 11, type: :bool, json_name: "speechSingleUtterance"

  field :dtmf_partial_results_times, 12,
    repeated: true,
    type: Google.Protobuf.Duration,
    json_name: "dtmfPartialResultsTimes"

  field :dtmf_final_results_times, 13,
    repeated: true,
    type: Google.Protobuf.Duration,
    json_name: "dtmfFinalResultsTimes"

  field :single_utterance_end_time_offset, 14,
    type: Google.Protobuf.Duration,
    json_name: "singleUtteranceEndTimeOffset"

  field :no_speech_timeout, 15, type: Google.Protobuf.Duration, json_name: "noSpeechTimeout"
  field :endpointing_timeout, 19, type: Google.Protobuf.Duration, json_name: "endpointingTimeout"
  field :is_input_text, 16, type: :bool, json_name: "isInputText"

  field :client_half_close_time_offset, 17,
    type: Google.Protobuf.Duration,
    json_name: "clientHalfCloseTimeOffset"

  field :client_half_close_streaming_time_offset, 18,
    type: Google.Protobuf.Duration,
    json_name: "clientHalfCloseStreamingTimeOffset"
end

defmodule Google.Cloud.Dialogflow.V2.StreamingDetectIntentResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :response_id, 1, type: :string, json_name: "responseId"

  field :recognition_result, 2,
    type: Google.Cloud.Dialogflow.V2.StreamingRecognitionResult,
    json_name: "recognitionResult"

  field :query_result, 3, type: Google.Cloud.Dialogflow.V2.QueryResult, json_name: "queryResult"
  field :webhook_status, 4, type: Google.Rpc.Status, json_name: "webhookStatus"
  field :output_audio, 5, type: :bytes, json_name: "outputAudio"

  field :output_audio_config, 6,
    type: Google.Cloud.Dialogflow.V2.OutputAudioConfig,
    json_name: "outputAudioConfig"

  field :debugging_info, 8,
    type: Google.Cloud.Dialogflow.V2.CloudConversationDebuggingInfo,
    json_name: "debuggingInfo"
end

defmodule Google.Cloud.Dialogflow.V2.StreamingRecognitionResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :message_type, 1,
    type: Google.Cloud.Dialogflow.V2.StreamingRecognitionResult.MessageType,
    json_name: "messageType",
    enum: true

  field :transcript, 2, type: :string
  field :is_final, 3, type: :bool, json_name: "isFinal"
  field :confidence, 4, type: :float

  field :speech_word_info, 7,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.SpeechWordInfo,
    json_name: "speechWordInfo"

  field :speech_end_offset, 8, type: Google.Protobuf.Duration, json_name: "speechEndOffset"
  field :language_code, 10, type: :string, json_name: "languageCode"
end

defmodule Google.Cloud.Dialogflow.V2.TextInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :text, 1, type: :string, deprecated: false
  field :language_code, 2, type: :string, json_name: "languageCode", deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.EventInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :parameters, 2, type: Google.Protobuf.Struct
  field :language_code, 3, type: :string, json_name: "languageCode", deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.SentimentAnalysisRequestConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :analyze_query_text_sentiment, 1, type: :bool, json_name: "analyzeQueryTextSentiment"
end

defmodule Google.Cloud.Dialogflow.V2.SentimentAnalysisResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :query_text_sentiment, 1,
    type: Google.Cloud.Dialogflow.V2.Sentiment,
    json_name: "queryTextSentiment"
end

defmodule Google.Cloud.Dialogflow.V2.Sentiment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :score, 1, type: :float
  field :magnitude, 2, type: :float
end

defmodule Google.Cloud.Dialogflow.V2.Sessions.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.dialogflow.v2.Sessions",
    protoc_gen_elixir_version: "0.14.1"

  rpc :DetectIntent,
      Google.Cloud.Dialogflow.V2.DetectIntentRequest,
      Google.Cloud.Dialogflow.V2.DetectIntentResponse

  rpc :StreamingDetectIntent,
      stream(Google.Cloud.Dialogflow.V2.StreamingDetectIntentRequest),
      stream(Google.Cloud.Dialogflow.V2.StreamingDetectIntentResponse)
end

defmodule Google.Cloud.Dialogflow.V2.Sessions.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Dialogflow.V2.Sessions.Service
end
