defmodule Google.Cloud.Dialogflow.V2beta1.Participant.Role do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :ROLE_UNSPECIFIED | :HUMAN_AGENT | :AUTOMATED_AGENT | :END_USER

  field :ROLE_UNSPECIFIED, 0
  field :HUMAN_AGENT, 1
  field :AUTOMATED_AGENT, 2
  field :END_USER, 3
end
defmodule Google.Cloud.Dialogflow.V2beta1.AutomatedAgentReply.AutomatedAgentReplyType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :AUTOMATED_AGENT_REPLY_TYPE_UNSPECIFIED | :PARTIAL | :FINAL

  field :AUTOMATED_AGENT_REPLY_TYPE_UNSPECIFIED, 0
  field :PARTIAL, 1
  field :FINAL, 2
end
defmodule Google.Cloud.Dialogflow.V2beta1.SuggestionFeature.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :TYPE_UNSPECIFIED | :ARTICLE_SUGGESTION | :FAQ | :SMART_REPLY

  field :TYPE_UNSPECIFIED, 0
  field :ARTICLE_SUGGESTION, 1
  field :FAQ, 2
  field :SMART_REPLY, 3
end
defmodule Google.Cloud.Dialogflow.V2beta1.Participant.DocumentsMetadataFiltersEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Dialogflow.V2beta1.Participant do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          role: Google.Cloud.Dialogflow.V2beta1.Participant.Role.t(),
          obfuscated_external_user_id: String.t(),
          documents_metadata_filters: %{String.t() => String.t()}
        }

  defstruct name: "",
            role: :ROLE_UNSPECIFIED,
            obfuscated_external_user_id: "",
            documents_metadata_filters: %{}

  field :name, 1, type: :string, deprecated: false

  field :role, 2,
    type: Google.Cloud.Dialogflow.V2beta1.Participant.Role,
    enum: true,
    deprecated: false

  field :obfuscated_external_user_id, 7,
    type: :string,
    json_name: "obfuscatedExternalUserId",
    deprecated: false

  field :documents_metadata_filters, 8,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Participant.DocumentsMetadataFiltersEntry,
    json_name: "documentsMetadataFilters",
    map: true,
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2beta1.Message do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          content: String.t(),
          language_code: String.t(),
          participant: String.t(),
          participant_role: Google.Cloud.Dialogflow.V2beta1.Participant.Role.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          send_time: Google.Protobuf.Timestamp.t() | nil,
          message_annotation: Google.Cloud.Dialogflow.V2beta1.MessageAnnotation.t() | nil,
          sentiment_analysis: Google.Cloud.Dialogflow.V2beta1.SentimentAnalysisResult.t() | nil
        }

  defstruct name: "",
            content: "",
            language_code: "",
            participant: "",
            participant_role: :ROLE_UNSPECIFIED,
            create_time: nil,
            send_time: nil,
            message_annotation: nil,
            sentiment_analysis: nil

  field :name, 1, type: :string, deprecated: false
  field :content, 2, type: :string, deprecated: false
  field :language_code, 3, type: :string, json_name: "languageCode", deprecated: false
  field :participant, 4, type: :string, deprecated: false

  field :participant_role, 5,
    type: Google.Cloud.Dialogflow.V2beta1.Participant.Role,
    json_name: "participantRole",
    enum: true,
    deprecated: false

  field :create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :send_time, 9, type: Google.Protobuf.Timestamp, json_name: "sendTime", deprecated: false

  field :message_annotation, 7,
    type: Google.Cloud.Dialogflow.V2beta1.MessageAnnotation,
    json_name: "messageAnnotation",
    deprecated: false

  field :sentiment_analysis, 8,
    type: Google.Cloud.Dialogflow.V2beta1.SentimentAnalysisResult,
    json_name: "sentimentAnalysis",
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2beta1.CreateParticipantRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          participant: Google.Cloud.Dialogflow.V2beta1.Participant.t() | nil
        }

  defstruct parent: "",
            participant: nil

  field :parent, 1, type: :string, deprecated: false
  field :participant, 2, type: Google.Cloud.Dialogflow.V2beta1.Participant, deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2beta1.GetParticipantRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2beta1.ListParticipantsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2beta1.ListParticipantsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          participants: [Google.Cloud.Dialogflow.V2beta1.Participant.t()],
          next_page_token: String.t()
        }

  defstruct participants: [],
            next_page_token: ""

  field :participants, 1, repeated: true, type: Google.Cloud.Dialogflow.V2beta1.Participant
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Dialogflow.V2beta1.UpdateParticipantRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          participant: Google.Cloud.Dialogflow.V2beta1.Participant.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct participant: nil,
            update_mask: nil

  field :participant, 1, type: Google.Cloud.Dialogflow.V2beta1.Participant, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2beta1.OutputAudio do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          config: Google.Cloud.Dialogflow.V2beta1.OutputAudioConfig.t() | nil,
          audio: binary
        }

  defstruct config: nil,
            audio: ""

  field :config, 1, type: Google.Cloud.Dialogflow.V2beta1.OutputAudioConfig
  field :audio, 2, type: :bytes
end
defmodule Google.Cloud.Dialogflow.V2beta1.AutomatedAgentReply do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response:
            {:detect_intent_response,
             Google.Cloud.Dialogflow.V2beta1.DetectIntentResponse.t() | nil},
          match: {:intent, String.t()} | {:event, String.t()},
          response_messages: [Google.Cloud.Dialogflow.V2beta1.ResponseMessage.t()],
          match_confidence: float | :infinity | :negative_infinity | :nan,
          parameters: Google.Protobuf.Struct.t() | nil,
          cx_session_parameters: Google.Protobuf.Struct.t() | nil,
          automated_agent_reply_type:
            Google.Cloud.Dialogflow.V2beta1.AutomatedAgentReply.AutomatedAgentReplyType.t(),
          allow_cancellation: boolean
        }

  defstruct response: nil,
            match: nil,
            response_messages: [],
            match_confidence: 0.0,
            parameters: nil,
            cx_session_parameters: nil,
            automated_agent_reply_type: :AUTOMATED_AGENT_REPLY_TYPE_UNSPECIFIED,
            allow_cancellation: false

  oneof :response, 0
  oneof :match, 1

  field :detect_intent_response, 1,
    type: Google.Cloud.Dialogflow.V2beta1.DetectIntentResponse,
    json_name: "detectIntentResponse",
    oneof: 0

  field :response_messages, 3,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.ResponseMessage,
    json_name: "responseMessages"

  field :intent, 4, type: :string, oneof: 1, deprecated: false
  field :event, 5, type: :string, oneof: 1
  field :match_confidence, 9, type: :float, json_name: "matchConfidence"
  field :parameters, 10, type: Google.Protobuf.Struct

  field :cx_session_parameters, 6,
    type: Google.Protobuf.Struct,
    json_name: "cxSessionParameters",
    deprecated: true

  field :automated_agent_reply_type, 7,
    type: Google.Cloud.Dialogflow.V2beta1.AutomatedAgentReply.AutomatedAgentReplyType,
    json_name: "automatedAgentReplyType",
    enum: true

  field :allow_cancellation, 8, type: :bool, json_name: "allowCancellation"
end
defmodule Google.Cloud.Dialogflow.V2beta1.SuggestionFeature do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Cloud.Dialogflow.V2beta1.SuggestionFeature.Type.t()
        }

  defstruct type: :TYPE_UNSPECIFIED

  field :type, 1, type: Google.Cloud.Dialogflow.V2beta1.SuggestionFeature.Type, enum: true
end
defmodule Google.Cloud.Dialogflow.V2beta1.AssistQueryParameters.DocumentsMetadataFiltersEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Dialogflow.V2beta1.AssistQueryParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          documents_metadata_filters: %{String.t() => String.t()}
        }

  defstruct documents_metadata_filters: %{}

  field :documents_metadata_filters, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.AssistQueryParameters.DocumentsMetadataFiltersEntry,
    json_name: "documentsMetadataFilters",
    map: true
end
defmodule Google.Cloud.Dialogflow.V2beta1.AnalyzeContentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input:
            {:text_input, Google.Cloud.Dialogflow.V2beta1.TextInput.t() | nil}
            | {:event_input, Google.Cloud.Dialogflow.V2beta1.EventInput.t() | nil},
          participant: String.t(),
          reply_audio_config: Google.Cloud.Dialogflow.V2beta1.OutputAudioConfig.t() | nil,
          query_params: Google.Cloud.Dialogflow.V2beta1.QueryParameters.t() | nil,
          assist_query_params: Google.Cloud.Dialogflow.V2beta1.AssistQueryParameters.t() | nil,
          cx_parameters: Google.Protobuf.Struct.t() | nil,
          message_send_time: Google.Protobuf.Timestamp.t() | nil,
          request_id: String.t()
        }

  defstruct input: nil,
            participant: "",
            reply_audio_config: nil,
            query_params: nil,
            assist_query_params: nil,
            cx_parameters: nil,
            message_send_time: nil,
            request_id: ""

  oneof :input, 0

  field :participant, 1, type: :string, deprecated: false

  field :text_input, 6,
    type: Google.Cloud.Dialogflow.V2beta1.TextInput,
    json_name: "textInput",
    oneof: 0

  field :event_input, 8,
    type: Google.Cloud.Dialogflow.V2beta1.EventInput,
    json_name: "eventInput",
    oneof: 0

  field :reply_audio_config, 5,
    type: Google.Cloud.Dialogflow.V2beta1.OutputAudioConfig,
    json_name: "replyAudioConfig"

  field :query_params, 9,
    type: Google.Cloud.Dialogflow.V2beta1.QueryParameters,
    json_name: "queryParams"

  field :assist_query_params, 14,
    type: Google.Cloud.Dialogflow.V2beta1.AssistQueryParameters,
    json_name: "assistQueryParams"

  field :cx_parameters, 18, type: Google.Protobuf.Struct, json_name: "cxParameters"
  field :message_send_time, 10, type: Google.Protobuf.Timestamp, json_name: "messageSendTime"
  field :request_id, 11, type: :string, json_name: "requestId"
end
defmodule Google.Cloud.Dialogflow.V2beta1.DtmfParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          accepts_dtmf_input: boolean
        }

  defstruct accepts_dtmf_input: false

  field :accepts_dtmf_input, 1, type: :bool, json_name: "acceptsDtmfInput"
end
defmodule Google.Cloud.Dialogflow.V2beta1.AnalyzeContentResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reply_text: String.t(),
          reply_audio: Google.Cloud.Dialogflow.V2beta1.OutputAudio.t() | nil,
          automated_agent_reply: Google.Cloud.Dialogflow.V2beta1.AutomatedAgentReply.t() | nil,
          message: Google.Cloud.Dialogflow.V2beta1.Message.t() | nil,
          human_agent_suggestion_results: [Google.Cloud.Dialogflow.V2beta1.SuggestionResult.t()],
          end_user_suggestion_results: [Google.Cloud.Dialogflow.V2beta1.SuggestionResult.t()],
          dtmf_parameters: Google.Cloud.Dialogflow.V2beta1.DtmfParameters.t() | nil
        }

  defstruct reply_text: "",
            reply_audio: nil,
            automated_agent_reply: nil,
            message: nil,
            human_agent_suggestion_results: [],
            end_user_suggestion_results: [],
            dtmf_parameters: nil

  field :reply_text, 1, type: :string, json_name: "replyText"

  field :reply_audio, 2,
    type: Google.Cloud.Dialogflow.V2beta1.OutputAudio,
    json_name: "replyAudio"

  field :automated_agent_reply, 3,
    type: Google.Cloud.Dialogflow.V2beta1.AutomatedAgentReply,
    json_name: "automatedAgentReply"

  field :message, 5, type: Google.Cloud.Dialogflow.V2beta1.Message

  field :human_agent_suggestion_results, 6,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.SuggestionResult,
    json_name: "humanAgentSuggestionResults"

  field :end_user_suggestion_results, 7,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.SuggestionResult,
    json_name: "endUserSuggestionResults"

  field :dtmf_parameters, 9,
    type: Google.Cloud.Dialogflow.V2beta1.DtmfParameters,
    json_name: "dtmfParameters"
end
defmodule Google.Cloud.Dialogflow.V2beta1.InputTextConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          language_code: String.t()
        }

  defstruct language_code: ""

  field :language_code, 1, type: :string, json_name: "languageCode"
end
defmodule Google.Cloud.Dialogflow.V2beta1.StreamingAnalyzeContentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          config:
            {:audio_config, Google.Cloud.Dialogflow.V2beta1.InputAudioConfig.t() | nil}
            | {:text_config, Google.Cloud.Dialogflow.V2beta1.InputTextConfig.t() | nil},
          input:
            {:input_audio, binary}
            | {:input_text, String.t()}
            | {:input_dtmf, Google.Cloud.Dialogflow.V2beta1.TelephonyDtmfEvents.t() | nil},
          participant: String.t(),
          reply_audio_config: Google.Cloud.Dialogflow.V2beta1.OutputAudioConfig.t() | nil,
          query_params: Google.Cloud.Dialogflow.V2beta1.QueryParameters.t() | nil,
          assist_query_params: Google.Cloud.Dialogflow.V2beta1.AssistQueryParameters.t() | nil,
          cx_parameters: Google.Protobuf.Struct.t() | nil,
          enable_partial_automated_agent_reply: boolean
        }

  defstruct config: nil,
            input: nil,
            participant: "",
            reply_audio_config: nil,
            query_params: nil,
            assist_query_params: nil,
            cx_parameters: nil,
            enable_partial_automated_agent_reply: false

  oneof :config, 0
  oneof :input, 1

  field :participant, 1, type: :string, deprecated: false

  field :audio_config, 2,
    type: Google.Cloud.Dialogflow.V2beta1.InputAudioConfig,
    json_name: "audioConfig",
    oneof: 0

  field :text_config, 3,
    type: Google.Cloud.Dialogflow.V2beta1.InputTextConfig,
    json_name: "textConfig",
    oneof: 0

  field :reply_audio_config, 4,
    type: Google.Cloud.Dialogflow.V2beta1.OutputAudioConfig,
    json_name: "replyAudioConfig"

  field :input_audio, 5, type: :bytes, json_name: "inputAudio", oneof: 1
  field :input_text, 6, type: :string, json_name: "inputText", oneof: 1

  field :input_dtmf, 9,
    type: Google.Cloud.Dialogflow.V2beta1.TelephonyDtmfEvents,
    json_name: "inputDtmf",
    oneof: 1

  field :query_params, 7,
    type: Google.Cloud.Dialogflow.V2beta1.QueryParameters,
    json_name: "queryParams"

  field :assist_query_params, 8,
    type: Google.Cloud.Dialogflow.V2beta1.AssistQueryParameters,
    json_name: "assistQueryParams"

  field :cx_parameters, 13, type: Google.Protobuf.Struct, json_name: "cxParameters"

  field :enable_partial_automated_agent_reply, 12,
    type: :bool,
    json_name: "enablePartialAutomatedAgentReply"
end
defmodule Google.Cloud.Dialogflow.V2beta1.StreamingAnalyzeContentResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          recognition_result:
            Google.Cloud.Dialogflow.V2beta1.StreamingRecognitionResult.t() | nil,
          reply_text: String.t(),
          reply_audio: Google.Cloud.Dialogflow.V2beta1.OutputAudio.t() | nil,
          automated_agent_reply: Google.Cloud.Dialogflow.V2beta1.AutomatedAgentReply.t() | nil,
          message: Google.Cloud.Dialogflow.V2beta1.Message.t() | nil,
          human_agent_suggestion_results: [Google.Cloud.Dialogflow.V2beta1.SuggestionResult.t()],
          end_user_suggestion_results: [Google.Cloud.Dialogflow.V2beta1.SuggestionResult.t()],
          dtmf_parameters: Google.Cloud.Dialogflow.V2beta1.DtmfParameters.t() | nil
        }

  defstruct recognition_result: nil,
            reply_text: "",
            reply_audio: nil,
            automated_agent_reply: nil,
            message: nil,
            human_agent_suggestion_results: [],
            end_user_suggestion_results: [],
            dtmf_parameters: nil

  field :recognition_result, 1,
    type: Google.Cloud.Dialogflow.V2beta1.StreamingRecognitionResult,
    json_name: "recognitionResult"

  field :reply_text, 2, type: :string, json_name: "replyText"

  field :reply_audio, 3,
    type: Google.Cloud.Dialogflow.V2beta1.OutputAudio,
    json_name: "replyAudio"

  field :automated_agent_reply, 4,
    type: Google.Cloud.Dialogflow.V2beta1.AutomatedAgentReply,
    json_name: "automatedAgentReply"

  field :message, 6, type: Google.Cloud.Dialogflow.V2beta1.Message

  field :human_agent_suggestion_results, 7,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.SuggestionResult,
    json_name: "humanAgentSuggestionResults"

  field :end_user_suggestion_results, 8,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.SuggestionResult,
    json_name: "endUserSuggestionResults"

  field :dtmf_parameters, 10,
    type: Google.Cloud.Dialogflow.V2beta1.DtmfParameters,
    json_name: "dtmfParameters"
end
defmodule Google.Cloud.Dialogflow.V2beta1.AnnotatedMessagePart do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: String.t(),
          entity_type: String.t(),
          formatted_value: Google.Protobuf.Value.t() | nil
        }

  defstruct text: "",
            entity_type: "",
            formatted_value: nil

  field :text, 1, type: :string
  field :entity_type, 2, type: :string, json_name: "entityType"
  field :formatted_value, 3, type: Google.Protobuf.Value, json_name: "formattedValue"
end
defmodule Google.Cloud.Dialogflow.V2beta1.MessageAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parts: [Google.Cloud.Dialogflow.V2beta1.AnnotatedMessagePart.t()],
          contain_entities: boolean
        }

  defstruct parts: [],
            contain_entities: false

  field :parts, 1, repeated: true, type: Google.Cloud.Dialogflow.V2beta1.AnnotatedMessagePart
  field :contain_entities, 2, type: :bool, json_name: "containEntities"
end
defmodule Google.Cloud.Dialogflow.V2beta1.ArticleAnswer.MetadataEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Dialogflow.V2beta1.ArticleAnswer do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          title: String.t(),
          uri: String.t(),
          snippets: [String.t()],
          metadata: %{String.t() => String.t()},
          answer_record: String.t()
        }

  defstruct title: "",
            uri: "",
            snippets: [],
            metadata: %{},
            answer_record: ""

  field :title, 1, type: :string
  field :uri, 2, type: :string
  field :snippets, 3, repeated: true, type: :string

  field :metadata, 5,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.ArticleAnswer.MetadataEntry,
    map: true

  field :answer_record, 6, type: :string, json_name: "answerRecord"
end
defmodule Google.Cloud.Dialogflow.V2beta1.FaqAnswer.MetadataEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Dialogflow.V2beta1.FaqAnswer do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          answer: String.t(),
          confidence: float | :infinity | :negative_infinity | :nan,
          question: String.t(),
          source: String.t(),
          metadata: %{String.t() => String.t()},
          answer_record: String.t()
        }

  defstruct answer: "",
            confidence: 0.0,
            question: "",
            source: "",
            metadata: %{},
            answer_record: ""

  field :answer, 1, type: :string
  field :confidence, 2, type: :float
  field :question, 3, type: :string
  field :source, 4, type: :string

  field :metadata, 5,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.FaqAnswer.MetadataEntry,
    map: true

  field :answer_record, 6, type: :string, json_name: "answerRecord"
end
defmodule Google.Cloud.Dialogflow.V2beta1.SmartReplyAnswer do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reply: String.t(),
          confidence: float | :infinity | :negative_infinity | :nan,
          answer_record: String.t()
        }

  defstruct reply: "",
            confidence: 0.0,
            answer_record: ""

  field :reply, 1, type: :string
  field :confidence, 2, type: :float
  field :answer_record, 3, type: :string, json_name: "answerRecord", deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2beta1.SuggestionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          suggestion_response:
            {:error, Google.Rpc.Status.t() | nil}
            | {:suggest_articles_response,
               Google.Cloud.Dialogflow.V2beta1.SuggestArticlesResponse.t() | nil}
            | {:suggest_faq_answers_response,
               Google.Cloud.Dialogflow.V2beta1.SuggestFaqAnswersResponse.t() | nil}
            | {:suggest_smart_replies_response,
               Google.Cloud.Dialogflow.V2beta1.SuggestSmartRepliesResponse.t() | nil}
        }

  defstruct suggestion_response: nil

  oneof :suggestion_response, 0

  field :error, 1, type: Google.Rpc.Status, oneof: 0

  field :suggest_articles_response, 2,
    type: Google.Cloud.Dialogflow.V2beta1.SuggestArticlesResponse,
    json_name: "suggestArticlesResponse",
    oneof: 0

  field :suggest_faq_answers_response, 3,
    type: Google.Cloud.Dialogflow.V2beta1.SuggestFaqAnswersResponse,
    json_name: "suggestFaqAnswersResponse",
    oneof: 0

  field :suggest_smart_replies_response, 4,
    type: Google.Cloud.Dialogflow.V2beta1.SuggestSmartRepliesResponse,
    json_name: "suggestSmartRepliesResponse",
    oneof: 0
end
defmodule Google.Cloud.Dialogflow.V2beta1.SuggestArticlesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          latest_message: String.t(),
          context_size: integer,
          assist_query_params: Google.Cloud.Dialogflow.V2beta1.AssistQueryParameters.t() | nil
        }

  defstruct parent: "",
            latest_message: "",
            context_size: 0,
            assist_query_params: nil

  field :parent, 1, type: :string, deprecated: false
  field :latest_message, 2, type: :string, json_name: "latestMessage", deprecated: false
  field :context_size, 3, type: :int32, json_name: "contextSize", deprecated: false

  field :assist_query_params, 4,
    type: Google.Cloud.Dialogflow.V2beta1.AssistQueryParameters,
    json_name: "assistQueryParams",
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2beta1.SuggestArticlesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          article_answers: [Google.Cloud.Dialogflow.V2beta1.ArticleAnswer.t()],
          latest_message: String.t(),
          context_size: integer
        }

  defstruct article_answers: [],
            latest_message: "",
            context_size: 0

  field :article_answers, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.ArticleAnswer,
    json_name: "articleAnswers"

  field :latest_message, 2, type: :string, json_name: "latestMessage"
  field :context_size, 3, type: :int32, json_name: "contextSize"
end
defmodule Google.Cloud.Dialogflow.V2beta1.SuggestFaqAnswersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          latest_message: String.t(),
          context_size: integer,
          assist_query_params: Google.Cloud.Dialogflow.V2beta1.AssistQueryParameters.t() | nil
        }

  defstruct parent: "",
            latest_message: "",
            context_size: 0,
            assist_query_params: nil

  field :parent, 1, type: :string, deprecated: false
  field :latest_message, 2, type: :string, json_name: "latestMessage", deprecated: false
  field :context_size, 3, type: :int32, json_name: "contextSize", deprecated: false

  field :assist_query_params, 4,
    type: Google.Cloud.Dialogflow.V2beta1.AssistQueryParameters,
    json_name: "assistQueryParams",
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2beta1.SuggestFaqAnswersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          faq_answers: [Google.Cloud.Dialogflow.V2beta1.FaqAnswer.t()],
          latest_message: String.t(),
          context_size: integer
        }

  defstruct faq_answers: [],
            latest_message: "",
            context_size: 0

  field :faq_answers, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.FaqAnswer,
    json_name: "faqAnswers"

  field :latest_message, 2, type: :string, json_name: "latestMessage"
  field :context_size, 3, type: :int32, json_name: "contextSize"
end
defmodule Google.Cloud.Dialogflow.V2beta1.SuggestSmartRepliesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          current_text_input: Google.Cloud.Dialogflow.V2beta1.TextInput.t() | nil,
          latest_message: String.t(),
          context_size: integer
        }

  defstruct parent: "",
            current_text_input: nil,
            latest_message: "",
            context_size: 0

  field :parent, 1, type: :string, deprecated: false

  field :current_text_input, 4,
    type: Google.Cloud.Dialogflow.V2beta1.TextInput,
    json_name: "currentTextInput"

  field :latest_message, 2, type: :string, json_name: "latestMessage", deprecated: false
  field :context_size, 3, type: :int32, json_name: "contextSize"
end
defmodule Google.Cloud.Dialogflow.V2beta1.SuggestSmartRepliesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          smart_reply_answers: [Google.Cloud.Dialogflow.V2beta1.SmartReplyAnswer.t()],
          latest_message: String.t(),
          context_size: integer
        }

  defstruct smart_reply_answers: [],
            latest_message: "",
            context_size: 0

  field :smart_reply_answers, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.SmartReplyAnswer,
    json_name: "smartReplyAnswers"

  field :latest_message, 2, type: :string, json_name: "latestMessage", deprecated: false
  field :context_size, 3, type: :int32, json_name: "contextSize"
end
defmodule Google.Cloud.Dialogflow.V2beta1.Suggestion.Article.MetadataEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Dialogflow.V2beta1.Suggestion.Article do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          title: String.t(),
          uri: String.t(),
          snippets: [String.t()],
          metadata: %{String.t() => String.t()},
          answer_record: String.t()
        }

  defstruct title: "",
            uri: "",
            snippets: [],
            metadata: %{},
            answer_record: ""

  field :title, 1, type: :string
  field :uri, 2, type: :string
  field :snippets, 3, repeated: true, type: :string

  field :metadata, 5,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Suggestion.Article.MetadataEntry,
    map: true

  field :answer_record, 6, type: :string, json_name: "answerRecord"
end
defmodule Google.Cloud.Dialogflow.V2beta1.Suggestion.FaqAnswer.MetadataEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Dialogflow.V2beta1.Suggestion.FaqAnswer do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          answer: String.t(),
          confidence: float | :infinity | :negative_infinity | :nan,
          question: String.t(),
          source: String.t(),
          metadata: %{String.t() => String.t()},
          answer_record: String.t()
        }

  defstruct answer: "",
            confidence: 0.0,
            question: "",
            source: "",
            metadata: %{},
            answer_record: ""

  field :answer, 1, type: :string
  field :confidence, 2, type: :float
  field :question, 3, type: :string
  field :source, 4, type: :string

  field :metadata, 5,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Suggestion.FaqAnswer.MetadataEntry,
    map: true

  field :answer_record, 6, type: :string, json_name: "answerRecord"
end
defmodule Google.Cloud.Dialogflow.V2beta1.Suggestion do
  @moduledoc false
  use Protobuf, deprecated: true, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          articles: [Google.Cloud.Dialogflow.V2beta1.Suggestion.Article.t()],
          faq_answers: [Google.Cloud.Dialogflow.V2beta1.Suggestion.FaqAnswer.t()],
          create_time: Google.Protobuf.Timestamp.t() | nil,
          latest_message: String.t()
        }

  defstruct name: "",
            articles: [],
            faq_answers: [],
            create_time: nil,
            latest_message: ""

  field :name, 1, type: :string
  field :articles, 2, repeated: true, type: Google.Cloud.Dialogflow.V2beta1.Suggestion.Article

  field :faq_answers, 4,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Suggestion.FaqAnswer,
    json_name: "faqAnswers"

  field :create_time, 5, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :latest_message, 7, type: :string, json_name: "latestMessage"
end
defmodule Google.Cloud.Dialogflow.V2beta1.ListSuggestionsRequest do
  @moduledoc false
  use Protobuf, deprecated: true, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            filter: ""

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end
defmodule Google.Cloud.Dialogflow.V2beta1.ListSuggestionsResponse do
  @moduledoc false
  use Protobuf, deprecated: true, syntax: :proto3

  @type t :: %__MODULE__{
          suggestions: [Google.Cloud.Dialogflow.V2beta1.Suggestion.t()],
          next_page_token: String.t()
        }

  defstruct suggestions: [],
            next_page_token: ""

  field :suggestions, 1, repeated: true, type: Google.Cloud.Dialogflow.V2beta1.Suggestion
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Dialogflow.V2beta1.CompileSuggestionRequest do
  @moduledoc false
  use Protobuf, deprecated: true, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          latest_message: String.t(),
          context_size: integer
        }

  defstruct parent: "",
            latest_message: "",
            context_size: 0

  field :parent, 1, type: :string
  field :latest_message, 2, type: :string, json_name: "latestMessage"
  field :context_size, 3, type: :int32, json_name: "contextSize"
end
defmodule Google.Cloud.Dialogflow.V2beta1.CompileSuggestionResponse do
  @moduledoc false
  use Protobuf, deprecated: true, syntax: :proto3

  @type t :: %__MODULE__{
          suggestion: Google.Cloud.Dialogflow.V2beta1.Suggestion.t() | nil,
          latest_message: String.t(),
          context_size: integer
        }

  defstruct suggestion: nil,
            latest_message: "",
            context_size: 0

  field :suggestion, 1, type: Google.Cloud.Dialogflow.V2beta1.Suggestion
  field :latest_message, 2, type: :string, json_name: "latestMessage"
  field :context_size, 3, type: :int32, json_name: "contextSize"
end
defmodule Google.Cloud.Dialogflow.V2beta1.ResponseMessage.Text do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: [String.t()]
        }

  defstruct text: []

  field :text, 1, repeated: true, type: :string
end
defmodule Google.Cloud.Dialogflow.V2beta1.ResponseMessage.LiveAgentHandoff do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metadata: Google.Protobuf.Struct.t() | nil
        }

  defstruct metadata: nil

  field :metadata, 1, type: Google.Protobuf.Struct
end
defmodule Google.Cloud.Dialogflow.V2beta1.ResponseMessage.EndInteraction do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Dialogflow.V2beta1.ResponseMessage.MixedAudio.Segment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          content: {:audio, binary} | {:uri, String.t()},
          allow_playback_interruption: boolean
        }

  defstruct content: nil,
            allow_playback_interruption: false

  oneof :content, 0

  field :audio, 1, type: :bytes, oneof: 0
  field :uri, 2, type: :string, oneof: 0
  field :allow_playback_interruption, 3, type: :bool, json_name: "allowPlaybackInterruption"
end
defmodule Google.Cloud.Dialogflow.V2beta1.ResponseMessage.MixedAudio do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          segments: [Google.Cloud.Dialogflow.V2beta1.ResponseMessage.MixedAudio.Segment.t()]
        }

  defstruct segments: []

  field :segments, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.ResponseMessage.MixedAudio.Segment
end
defmodule Google.Cloud.Dialogflow.V2beta1.ResponseMessage.TelephonyTransferCall do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          endpoint: {:phone_number, String.t()} | {:sip_uri, String.t()}
        }

  defstruct endpoint: nil

  oneof :endpoint, 0

  field :phone_number, 1, type: :string, json_name: "phoneNumber", oneof: 0
  field :sip_uri, 2, type: :string, json_name: "sipUri", oneof: 0
end
defmodule Google.Cloud.Dialogflow.V2beta1.ResponseMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          message:
            {:text, Google.Cloud.Dialogflow.V2beta1.ResponseMessage.Text.t() | nil}
            | {:payload, Google.Protobuf.Struct.t() | nil}
            | {:live_agent_handoff,
               Google.Cloud.Dialogflow.V2beta1.ResponseMessage.LiveAgentHandoff.t() | nil}
            | {:end_interaction,
               Google.Cloud.Dialogflow.V2beta1.ResponseMessage.EndInteraction.t() | nil}
            | {:mixed_audio, Google.Cloud.Dialogflow.V2beta1.ResponseMessage.MixedAudio.t() | nil}
            | {:telephony_transfer_call,
               Google.Cloud.Dialogflow.V2beta1.ResponseMessage.TelephonyTransferCall.t() | nil}
        }

  defstruct message: nil

  oneof :message, 0

  field :text, 1, type: Google.Cloud.Dialogflow.V2beta1.ResponseMessage.Text, oneof: 0
  field :payload, 2, type: Google.Protobuf.Struct, oneof: 0

  field :live_agent_handoff, 3,
    type: Google.Cloud.Dialogflow.V2beta1.ResponseMessage.LiveAgentHandoff,
    json_name: "liveAgentHandoff",
    oneof: 0

  field :end_interaction, 4,
    type: Google.Cloud.Dialogflow.V2beta1.ResponseMessage.EndInteraction,
    json_name: "endInteraction",
    oneof: 0

  field :mixed_audio, 5,
    type: Google.Cloud.Dialogflow.V2beta1.ResponseMessage.MixedAudio,
    json_name: "mixedAudio",
    oneof: 0

  field :telephony_transfer_call, 6,
    type: Google.Cloud.Dialogflow.V2beta1.ResponseMessage.TelephonyTransferCall,
    json_name: "telephonyTransferCall",
    oneof: 0
end
defmodule Google.Cloud.Dialogflow.V2beta1.Participants.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.dialogflow.v2beta1.Participants"

  rpc :CreateParticipant,
      Google.Cloud.Dialogflow.V2beta1.CreateParticipantRequest,
      Google.Cloud.Dialogflow.V2beta1.Participant

  rpc :GetParticipant,
      Google.Cloud.Dialogflow.V2beta1.GetParticipantRequest,
      Google.Cloud.Dialogflow.V2beta1.Participant

  rpc :ListParticipants,
      Google.Cloud.Dialogflow.V2beta1.ListParticipantsRequest,
      Google.Cloud.Dialogflow.V2beta1.ListParticipantsResponse

  rpc :UpdateParticipant,
      Google.Cloud.Dialogflow.V2beta1.UpdateParticipantRequest,
      Google.Cloud.Dialogflow.V2beta1.Participant

  rpc :AnalyzeContent,
      Google.Cloud.Dialogflow.V2beta1.AnalyzeContentRequest,
      Google.Cloud.Dialogflow.V2beta1.AnalyzeContentResponse

  rpc :StreamingAnalyzeContent,
      stream(Google.Cloud.Dialogflow.V2beta1.StreamingAnalyzeContentRequest),
      stream(Google.Cloud.Dialogflow.V2beta1.StreamingAnalyzeContentResponse)

  rpc :SuggestArticles,
      Google.Cloud.Dialogflow.V2beta1.SuggestArticlesRequest,
      Google.Cloud.Dialogflow.V2beta1.SuggestArticlesResponse

  rpc :SuggestFaqAnswers,
      Google.Cloud.Dialogflow.V2beta1.SuggestFaqAnswersRequest,
      Google.Cloud.Dialogflow.V2beta1.SuggestFaqAnswersResponse

  rpc :SuggestSmartReplies,
      Google.Cloud.Dialogflow.V2beta1.SuggestSmartRepliesRequest,
      Google.Cloud.Dialogflow.V2beta1.SuggestSmartRepliesResponse

  rpc :ListSuggestions,
      Google.Cloud.Dialogflow.V2beta1.ListSuggestionsRequest,
      Google.Cloud.Dialogflow.V2beta1.ListSuggestionsResponse

  rpc :CompileSuggestion,
      Google.Cloud.Dialogflow.V2beta1.CompileSuggestionRequest,
      Google.Cloud.Dialogflow.V2beta1.CompileSuggestionResponse
end

defmodule Google.Cloud.Dialogflow.V2beta1.Participants.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Dialogflow.V2beta1.Participants.Service
end
