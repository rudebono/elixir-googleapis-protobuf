defmodule Google.Cloud.Dialogflow.Cx.V3.StreamingRecognitionResult.MessageType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :MESSAGE_TYPE_UNSPECIFIED | :TRANSCRIPT | :END_OF_SINGLE_UTTERANCE

  field :MESSAGE_TYPE_UNSPECIFIED, 0

  field :TRANSCRIPT, 1

  field :END_OF_SINGLE_UTTERANCE, 2
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Match.MatchType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :MATCH_TYPE_UNSPECIFIED
          | :INTENT
          | :DIRECT_INTENT
          | :PARAMETER_FILLING
          | :NO_MATCH
          | :NO_INPUT
          | :EVENT

  field :MATCH_TYPE_UNSPECIFIED, 0

  field :INTENT, 1

  field :DIRECT_INTENT, 2

  field :PARAMETER_FILLING, 3

  field :NO_MATCH, 4

  field :NO_INPUT, 5

  field :EVENT, 6
end

defmodule Google.Cloud.Dialogflow.Cx.V3.DetectIntentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          session: String.t(),
          query_params: Google.Cloud.Dialogflow.Cx.V3.QueryParameters.t() | nil,
          query_input: Google.Cloud.Dialogflow.Cx.V3.QueryInput.t() | nil,
          output_audio_config: Google.Cloud.Dialogflow.Cx.V3.OutputAudioConfig.t() | nil
        }

  defstruct [:session, :query_params, :query_input, :output_audio_config]

  field :session, 1, type: :string
  field :query_params, 2, type: Google.Cloud.Dialogflow.Cx.V3.QueryParameters
  field :query_input, 3, type: Google.Cloud.Dialogflow.Cx.V3.QueryInput
  field :output_audio_config, 4, type: Google.Cloud.Dialogflow.Cx.V3.OutputAudioConfig
end

defmodule Google.Cloud.Dialogflow.Cx.V3.DetectIntentResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response_id: String.t(),
          query_result: Google.Cloud.Dialogflow.Cx.V3.QueryResult.t() | nil,
          output_audio: binary,
          output_audio_config: Google.Cloud.Dialogflow.Cx.V3.OutputAudioConfig.t() | nil
        }

  defstruct [:response_id, :query_result, :output_audio, :output_audio_config]

  field :response_id, 1, type: :string
  field :query_result, 2, type: Google.Cloud.Dialogflow.Cx.V3.QueryResult
  field :output_audio, 4, type: :bytes
  field :output_audio_config, 5, type: Google.Cloud.Dialogflow.Cx.V3.OutputAudioConfig
end

defmodule Google.Cloud.Dialogflow.Cx.V3.StreamingDetectIntentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          session: String.t(),
          query_params: Google.Cloud.Dialogflow.Cx.V3.QueryParameters.t() | nil,
          query_input: Google.Cloud.Dialogflow.Cx.V3.QueryInput.t() | nil,
          output_audio_config: Google.Cloud.Dialogflow.Cx.V3.OutputAudioConfig.t() | nil
        }

  defstruct [:session, :query_params, :query_input, :output_audio_config]

  field :session, 1, type: :string
  field :query_params, 2, type: Google.Cloud.Dialogflow.Cx.V3.QueryParameters
  field :query_input, 3, type: Google.Cloud.Dialogflow.Cx.V3.QueryInput
  field :output_audio_config, 4, type: Google.Cloud.Dialogflow.Cx.V3.OutputAudioConfig
end

defmodule Google.Cloud.Dialogflow.Cx.V3.StreamingDetectIntentResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }

  defstruct [:response]

  oneof :response, 0

  field :recognition_result, 1,
    type: Google.Cloud.Dialogflow.Cx.V3.StreamingRecognitionResult,
    oneof: 0

  field :detect_intent_response, 2,
    type: Google.Cloud.Dialogflow.Cx.V3.DetectIntentResponse,
    oneof: 0
end

defmodule Google.Cloud.Dialogflow.Cx.V3.StreamingRecognitionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          message_type: Google.Cloud.Dialogflow.Cx.V3.StreamingRecognitionResult.MessageType.t(),
          transcript: String.t(),
          is_final: boolean,
          confidence: float | :infinity | :negative_infinity | :nan,
          stability: float | :infinity | :negative_infinity | :nan,
          speech_word_info: [Google.Cloud.Dialogflow.Cx.V3.SpeechWordInfo.t()],
          speech_end_offset: Google.Protobuf.Duration.t() | nil
        }

  defstruct [
    :message_type,
    :transcript,
    :is_final,
    :confidence,
    :stability,
    :speech_word_info,
    :speech_end_offset
  ]

  field :message_type, 1,
    type: Google.Cloud.Dialogflow.Cx.V3.StreamingRecognitionResult.MessageType,
    enum: true

  field :transcript, 2, type: :string
  field :is_final, 3, type: :bool
  field :confidence, 4, type: :float
  field :stability, 6, type: :float
  field :speech_word_info, 7, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3.SpeechWordInfo
  field :speech_end_offset, 8, type: Google.Protobuf.Duration
end

defmodule Google.Cloud.Dialogflow.Cx.V3.QueryParameters.WebhookHeadersEntry do
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

defmodule Google.Cloud.Dialogflow.Cx.V3.QueryParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          time_zone: String.t(),
          geo_location: Google.Type.LatLng.t() | nil,
          session_entity_types: [Google.Cloud.Dialogflow.Cx.V3.SessionEntityType.t()],
          payload: Google.Protobuf.Struct.t() | nil,
          parameters: Google.Protobuf.Struct.t() | nil,
          current_page: String.t(),
          disable_webhook: boolean,
          analyze_query_text_sentiment: boolean,
          webhook_headers: %{String.t() => String.t()}
        }

  defstruct [
    :time_zone,
    :geo_location,
    :session_entity_types,
    :payload,
    :parameters,
    :current_page,
    :disable_webhook,
    :analyze_query_text_sentiment,
    :webhook_headers
  ]

  field :time_zone, 1, type: :string
  field :geo_location, 2, type: Google.Type.LatLng

  field :session_entity_types, 3,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3.SessionEntityType

  field :payload, 4, type: Google.Protobuf.Struct
  field :parameters, 5, type: Google.Protobuf.Struct
  field :current_page, 6, type: :string
  field :disable_webhook, 7, type: :bool
  field :analyze_query_text_sentiment, 8, type: :bool

  field :webhook_headers, 10,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3.QueryParameters.WebhookHeadersEntry,
    map: true
end

defmodule Google.Cloud.Dialogflow.Cx.V3.QueryInput do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input: {atom, any},
          language_code: String.t()
        }

  defstruct [:input, :language_code]

  oneof :input, 0
  field :text, 2, type: Google.Cloud.Dialogflow.Cx.V3.TextInput, oneof: 0
  field :intent, 3, type: Google.Cloud.Dialogflow.Cx.V3.IntentInput, oneof: 0
  field :audio, 5, type: Google.Cloud.Dialogflow.Cx.V3.AudioInput, oneof: 0
  field :event, 6, type: Google.Cloud.Dialogflow.Cx.V3.EventInput, oneof: 0
  field :dtmf, 7, type: Google.Cloud.Dialogflow.Cx.V3.DtmfInput, oneof: 0
  field :language_code, 4, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3.QueryResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          query: {atom, any},
          language_code: String.t(),
          parameters: Google.Protobuf.Struct.t() | nil,
          response_messages: [Google.Cloud.Dialogflow.Cx.V3.ResponseMessage.t()],
          webhook_statuses: [Google.Rpc.Status.t()],
          webhook_payloads: [Google.Protobuf.Struct.t()],
          current_page: Google.Cloud.Dialogflow.Cx.V3.Page.t() | nil,
          intent: Google.Cloud.Dialogflow.Cx.V3.Intent.t() | nil,
          intent_detection_confidence: float | :infinity | :negative_infinity | :nan,
          match: Google.Cloud.Dialogflow.Cx.V3.Match.t() | nil,
          diagnostic_info: Google.Protobuf.Struct.t() | nil,
          sentiment_analysis_result:
            Google.Cloud.Dialogflow.Cx.V3.SentimentAnalysisResult.t() | nil
        }

  defstruct [
    :query,
    :language_code,
    :parameters,
    :response_messages,
    :webhook_statuses,
    :webhook_payloads,
    :current_page,
    :intent,
    :intent_detection_confidence,
    :match,
    :diagnostic_info,
    :sentiment_analysis_result
  ]

  oneof :query, 0
  field :text, 1, type: :string, oneof: 0
  field :trigger_intent, 11, type: :string, oneof: 0
  field :transcript, 12, type: :string, oneof: 0
  field :trigger_event, 14, type: :string, oneof: 0
  field :language_code, 2, type: :string
  field :parameters, 3, type: Google.Protobuf.Struct
  field :response_messages, 4, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3.ResponseMessage
  field :webhook_statuses, 13, repeated: true, type: Google.Rpc.Status
  field :webhook_payloads, 6, repeated: true, type: Google.Protobuf.Struct
  field :current_page, 7, type: Google.Cloud.Dialogflow.Cx.V3.Page
  field :intent, 8, type: Google.Cloud.Dialogflow.Cx.V3.Intent, deprecated: true
  field :intent_detection_confidence, 9, type: :float, deprecated: true
  field :match, 15, type: Google.Cloud.Dialogflow.Cx.V3.Match
  field :diagnostic_info, 10, type: Google.Protobuf.Struct

  field :sentiment_analysis_result, 17,
    type: Google.Cloud.Dialogflow.Cx.V3.SentimentAnalysisResult
end

defmodule Google.Cloud.Dialogflow.Cx.V3.TextInput do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: String.t()
        }

  defstruct [:text]

  field :text, 1, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3.IntentInput do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          intent: String.t()
        }

  defstruct [:intent]

  field :intent, 1, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3.AudioInput do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          config: Google.Cloud.Dialogflow.Cx.V3.InputAudioConfig.t() | nil,
          audio: binary
        }

  defstruct [:config, :audio]

  field :config, 1, type: Google.Cloud.Dialogflow.Cx.V3.InputAudioConfig
  field :audio, 2, type: :bytes
end

defmodule Google.Cloud.Dialogflow.Cx.V3.EventInput do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          event: String.t()
        }

  defstruct [:event]

  field :event, 1, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3.DtmfInput do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          digits: String.t(),
          finish_digit: String.t()
        }

  defstruct [:digits, :finish_digit]

  field :digits, 1, type: :string
  field :finish_digit, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Match do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          intent: Google.Cloud.Dialogflow.Cx.V3.Intent.t() | nil,
          event: String.t(),
          parameters: Google.Protobuf.Struct.t() | nil,
          resolved_input: String.t(),
          match_type: Google.Cloud.Dialogflow.Cx.V3.Match.MatchType.t(),
          confidence: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:intent, :event, :parameters, :resolved_input, :match_type, :confidence]

  field :intent, 1, type: Google.Cloud.Dialogflow.Cx.V3.Intent
  field :event, 6, type: :string
  field :parameters, 2, type: Google.Protobuf.Struct
  field :resolved_input, 3, type: :string
  field :match_type, 4, type: Google.Cloud.Dialogflow.Cx.V3.Match.MatchType, enum: true
  field :confidence, 5, type: :float
end

defmodule Google.Cloud.Dialogflow.Cx.V3.MatchIntentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          session: String.t(),
          query_params: Google.Cloud.Dialogflow.Cx.V3.QueryParameters.t() | nil,
          query_input: Google.Cloud.Dialogflow.Cx.V3.QueryInput.t() | nil
        }

  defstruct [:session, :query_params, :query_input]

  field :session, 1, type: :string
  field :query_params, 2, type: Google.Cloud.Dialogflow.Cx.V3.QueryParameters
  field :query_input, 3, type: Google.Cloud.Dialogflow.Cx.V3.QueryInput
end

defmodule Google.Cloud.Dialogflow.Cx.V3.MatchIntentResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          query: {atom, any},
          matches: [Google.Cloud.Dialogflow.Cx.V3.Match.t()],
          current_page: Google.Cloud.Dialogflow.Cx.V3.Page.t() | nil
        }

  defstruct [:query, :matches, :current_page]

  oneof :query, 0
  field :text, 1, type: :string, oneof: 0
  field :trigger_intent, 2, type: :string, oneof: 0
  field :transcript, 3, type: :string, oneof: 0
  field :trigger_event, 6, type: :string, oneof: 0
  field :matches, 4, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3.Match
  field :current_page, 5, type: Google.Cloud.Dialogflow.Cx.V3.Page
end

defmodule Google.Cloud.Dialogflow.Cx.V3.FulfillIntentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          match_intent_request: Google.Cloud.Dialogflow.Cx.V3.MatchIntentRequest.t() | nil,
          match: Google.Cloud.Dialogflow.Cx.V3.Match.t() | nil,
          output_audio_config: Google.Cloud.Dialogflow.Cx.V3.OutputAudioConfig.t() | nil
        }

  defstruct [:match_intent_request, :match, :output_audio_config]

  field :match_intent_request, 1, type: Google.Cloud.Dialogflow.Cx.V3.MatchIntentRequest
  field :match, 2, type: Google.Cloud.Dialogflow.Cx.V3.Match
  field :output_audio_config, 3, type: Google.Cloud.Dialogflow.Cx.V3.OutputAudioConfig
end

defmodule Google.Cloud.Dialogflow.Cx.V3.FulfillIntentResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response_id: String.t(),
          query_result: Google.Cloud.Dialogflow.Cx.V3.QueryResult.t() | nil,
          output_audio: binary,
          output_audio_config: Google.Cloud.Dialogflow.Cx.V3.OutputAudioConfig.t() | nil
        }

  defstruct [:response_id, :query_result, :output_audio, :output_audio_config]

  field :response_id, 1, type: :string
  field :query_result, 2, type: Google.Cloud.Dialogflow.Cx.V3.QueryResult
  field :output_audio, 3, type: :bytes
  field :output_audio_config, 4, type: Google.Cloud.Dialogflow.Cx.V3.OutputAudioConfig
end

defmodule Google.Cloud.Dialogflow.Cx.V3.SentimentAnalysisResult do
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
