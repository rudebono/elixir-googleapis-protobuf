defmodule Google.Cloud.Dialogflow.V2.Participant.Role do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ROLE_UNSPECIFIED, 0
  field :HUMAN_AGENT, 1
  field :AUTOMATED_AGENT, 2
  field :END_USER, 3
end

defmodule Google.Cloud.Dialogflow.V2.AutomatedAgentReply.AutomatedAgentReplyType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :AUTOMATED_AGENT_REPLY_TYPE_UNSPECIFIED, 0
  field :PARTIAL, 1
  field :FINAL, 2
end

defmodule Google.Cloud.Dialogflow.V2.Participant.DocumentsMetadataFiltersEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.V2.Participant do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :role, 2, type: Google.Cloud.Dialogflow.V2.Participant.Role, enum: true, deprecated: false

  field :sip_recording_media_label, 6,
    type: :string,
    json_name: "sipRecordingMediaLabel",
    deprecated: false

  field :obfuscated_external_user_id, 7,
    type: :string,
    json_name: "obfuscatedExternalUserId",
    deprecated: false

  field :documents_metadata_filters, 8,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.Participant.DocumentsMetadataFiltersEntry,
    json_name: "documentsMetadataFilters",
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.Message do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :content, 2, type: :string, deprecated: false
  field :language_code, 3, type: :string, json_name: "languageCode", deprecated: false
  field :participant, 4, type: :string, deprecated: false

  field :participant_role, 5,
    type: Google.Cloud.Dialogflow.V2.Participant.Role,
    json_name: "participantRole",
    enum: true,
    deprecated: false

  field :create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :send_time, 9, type: Google.Protobuf.Timestamp, json_name: "sendTime", deprecated: false

  field :message_annotation, 7,
    type: Google.Cloud.Dialogflow.V2.MessageAnnotation,
    json_name: "messageAnnotation",
    deprecated: false

  field :sentiment_analysis, 8,
    type: Google.Cloud.Dialogflow.V2.SentimentAnalysisResult,
    json_name: "sentimentAnalysis",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.CreateParticipantRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :participant, 2, type: Google.Cloud.Dialogflow.V2.Participant, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.GetParticipantRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.ListParticipantsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.ListParticipantsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :participants, 1, repeated: true, type: Google.Cloud.Dialogflow.V2.Participant
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dialogflow.V2.UpdateParticipantRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :participant, 1, type: Google.Cloud.Dialogflow.V2.Participant, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.AnalyzeContentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :input, 0

  field :participant, 1, type: :string, deprecated: false

  field :text_input, 6,
    type: Google.Cloud.Dialogflow.V2.TextInput,
    json_name: "textInput",
    oneof: 0

  field :event_input, 8,
    type: Google.Cloud.Dialogflow.V2.EventInput,
    json_name: "eventInput",
    oneof: 0

  field :suggestion_input, 12,
    type: Google.Cloud.Dialogflow.V2.SuggestionInput,
    json_name: "suggestionInput",
    oneof: 0

  field :reply_audio_config, 5,
    type: Google.Cloud.Dialogflow.V2.OutputAudioConfig,
    json_name: "replyAudioConfig"

  field :query_params, 9,
    type: Google.Cloud.Dialogflow.V2.QueryParameters,
    json_name: "queryParams"

  field :assist_query_params, 14,
    type: Google.Cloud.Dialogflow.V2.AssistQueryParameters,
    json_name: "assistQueryParams"

  field :cx_parameters, 18, type: Google.Protobuf.Struct, json_name: "cxParameters"
  field :request_id, 11, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Dialogflow.V2.DtmfParameters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :accepts_dtmf_input, 1, type: :bool, json_name: "acceptsDtmfInput"
end

defmodule Google.Cloud.Dialogflow.V2.AnalyzeContentResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :reply_text, 1, type: :string, json_name: "replyText"
  field :reply_audio, 2, type: Google.Cloud.Dialogflow.V2.OutputAudio, json_name: "replyAudio"

  field :automated_agent_reply, 3,
    type: Google.Cloud.Dialogflow.V2.AutomatedAgentReply,
    json_name: "automatedAgentReply"

  field :message, 5, type: Google.Cloud.Dialogflow.V2.Message

  field :human_agent_suggestion_results, 6,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.SuggestionResult,
    json_name: "humanAgentSuggestionResults"

  field :end_user_suggestion_results, 7,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.SuggestionResult,
    json_name: "endUserSuggestionResults"

  field :dtmf_parameters, 9,
    type: Google.Cloud.Dialogflow.V2.DtmfParameters,
    json_name: "dtmfParameters"
end

defmodule Google.Cloud.Dialogflow.V2.StreamingAnalyzeContentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :config, 0

  oneof :input, 1

  field :participant, 1, type: :string, deprecated: false

  field :audio_config, 2,
    type: Google.Cloud.Dialogflow.V2.InputAudioConfig,
    json_name: "audioConfig",
    oneof: 0

  field :text_config, 3,
    type: Google.Cloud.Dialogflow.V2.InputTextConfig,
    json_name: "textConfig",
    oneof: 0

  field :reply_audio_config, 4,
    type: Google.Cloud.Dialogflow.V2.OutputAudioConfig,
    json_name: "replyAudioConfig"

  field :input_audio, 5, type: :bytes, json_name: "inputAudio", oneof: 1
  field :input_text, 6, type: :string, json_name: "inputText", oneof: 1

  field :input_dtmf, 9,
    type: Google.Cloud.Dialogflow.V2.TelephonyDtmfEvents,
    json_name: "inputDtmf",
    oneof: 1

  field :query_params, 7,
    type: Google.Cloud.Dialogflow.V2.QueryParameters,
    json_name: "queryParams"

  field :assist_query_params, 8,
    type: Google.Cloud.Dialogflow.V2.AssistQueryParameters,
    json_name: "assistQueryParams"

  field :cx_parameters, 13, type: Google.Protobuf.Struct, json_name: "cxParameters"

  field :enable_partial_automated_agent_reply, 12,
    type: :bool,
    json_name: "enablePartialAutomatedAgentReply"

  field :enable_debugging_info, 19, type: :bool, json_name: "enableDebuggingInfo"
end

defmodule Google.Cloud.Dialogflow.V2.StreamingAnalyzeContentResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :recognition_result, 1,
    type: Google.Cloud.Dialogflow.V2.StreamingRecognitionResult,
    json_name: "recognitionResult"

  field :reply_text, 2, type: :string, json_name: "replyText"
  field :reply_audio, 3, type: Google.Cloud.Dialogflow.V2.OutputAudio, json_name: "replyAudio"

  field :automated_agent_reply, 4,
    type: Google.Cloud.Dialogflow.V2.AutomatedAgentReply,
    json_name: "automatedAgentReply"

  field :message, 6, type: Google.Cloud.Dialogflow.V2.Message

  field :human_agent_suggestion_results, 7,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.SuggestionResult,
    json_name: "humanAgentSuggestionResults"

  field :end_user_suggestion_results, 8,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.SuggestionResult,
    json_name: "endUserSuggestionResults"

  field :dtmf_parameters, 10,
    type: Google.Cloud.Dialogflow.V2.DtmfParameters,
    json_name: "dtmfParameters"

  field :debugging_info, 11,
    type: Google.Cloud.Dialogflow.V2.CloudConversationDebuggingInfo,
    json_name: "debuggingInfo"
end

defmodule Google.Cloud.Dialogflow.V2.SuggestArticlesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :latest_message, 2, type: :string, json_name: "latestMessage", deprecated: false
  field :context_size, 3, type: :int32, json_name: "contextSize", deprecated: false

  field :assist_query_params, 4,
    type: Google.Cloud.Dialogflow.V2.AssistQueryParameters,
    json_name: "assistQueryParams"
end

defmodule Google.Cloud.Dialogflow.V2.SuggestArticlesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :article_answers, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.ArticleAnswer,
    json_name: "articleAnswers"

  field :latest_message, 2, type: :string, json_name: "latestMessage"
  field :context_size, 3, type: :int32, json_name: "contextSize"
end

defmodule Google.Cloud.Dialogflow.V2.SuggestFaqAnswersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :latest_message, 2, type: :string, json_name: "latestMessage", deprecated: false
  field :context_size, 3, type: :int32, json_name: "contextSize", deprecated: false

  field :assist_query_params, 4,
    type: Google.Cloud.Dialogflow.V2.AssistQueryParameters,
    json_name: "assistQueryParams"
end

defmodule Google.Cloud.Dialogflow.V2.SuggestFaqAnswersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :faq_answers, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.FaqAnswer,
    json_name: "faqAnswers"

  field :latest_message, 2, type: :string, json_name: "latestMessage"
  field :context_size, 3, type: :int32, json_name: "contextSize"
end

defmodule Google.Cloud.Dialogflow.V2.SuggestSmartRepliesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :current_text_input, 4,
    type: Google.Cloud.Dialogflow.V2.TextInput,
    json_name: "currentTextInput"

  field :latest_message, 2, type: :string, json_name: "latestMessage", deprecated: false
  field :context_size, 3, type: :int32, json_name: "contextSize"
end

defmodule Google.Cloud.Dialogflow.V2.SuggestSmartRepliesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :smart_reply_answers, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.SmartReplyAnswer,
    json_name: "smartReplyAnswers",
    deprecated: false

  field :latest_message, 2, type: :string, json_name: "latestMessage", deprecated: false
  field :context_size, 3, type: :int32, json_name: "contextSize"
end

defmodule Google.Cloud.Dialogflow.V2.OutputAudio do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :config, 1, type: Google.Cloud.Dialogflow.V2.OutputAudioConfig
  field :audio, 2, type: :bytes
end

defmodule Google.Cloud.Dialogflow.V2.AutomatedAgentReply do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :detect_intent_response, 1,
    type: Google.Cloud.Dialogflow.V2.DetectIntentResponse,
    json_name: "detectIntentResponse"

  field :automated_agent_reply_type, 7,
    type: Google.Cloud.Dialogflow.V2.AutomatedAgentReply.AutomatedAgentReplyType,
    json_name: "automatedAgentReplyType",
    enum: true

  field :allow_cancellation, 8, type: :bool, json_name: "allowCancellation"
  field :cx_current_page, 11, type: :string, json_name: "cxCurrentPage"
end

defmodule Google.Cloud.Dialogflow.V2.ArticleAnswer.MetadataEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.V2.ArticleAnswer do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :title, 1, type: :string
  field :uri, 2, type: :string
  field :snippets, 3, repeated: true, type: :string
  field :confidence, 4, type: :float

  field :metadata, 5,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.ArticleAnswer.MetadataEntry,
    map: true

  field :answer_record, 6, type: :string, json_name: "answerRecord"
end

defmodule Google.Cloud.Dialogflow.V2.FaqAnswer.MetadataEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.V2.FaqAnswer do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :answer, 1, type: :string
  field :confidence, 2, type: :float
  field :question, 3, type: :string
  field :source, 4, type: :string

  field :metadata, 5,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.FaqAnswer.MetadataEntry,
    map: true

  field :answer_record, 6, type: :string, json_name: "answerRecord"
end

defmodule Google.Cloud.Dialogflow.V2.SmartReplyAnswer do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :reply, 1, type: :string
  field :confidence, 2, type: :float
  field :answer_record, 3, type: :string, json_name: "answerRecord", deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.IntentSuggestion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :intent, 0

  field :display_name, 1, type: :string, json_name: "displayName"
  field :intent_v2, 2, type: :string, json_name: "intentV2", oneof: 0
  field :description, 5, type: :string
end

defmodule Google.Cloud.Dialogflow.V2.DialogflowAssistAnswer do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :result, 0

  field :query_result, 1,
    type: Google.Cloud.Dialogflow.V2.QueryResult,
    json_name: "queryResult",
    oneof: 0

  field :intent_suggestion, 5,
    type: Google.Cloud.Dialogflow.V2.IntentSuggestion,
    json_name: "intentSuggestion",
    oneof: 0

  field :answer_record, 2, type: :string, json_name: "answerRecord"
end

defmodule Google.Cloud.Dialogflow.V2.SuggestionResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :suggestion_response, 0

  field :error, 1, type: Google.Rpc.Status, oneof: 0

  field :suggest_articles_response, 2,
    type: Google.Cloud.Dialogflow.V2.SuggestArticlesResponse,
    json_name: "suggestArticlesResponse",
    oneof: 0

  field :suggest_faq_answers_response, 3,
    type: Google.Cloud.Dialogflow.V2.SuggestFaqAnswersResponse,
    json_name: "suggestFaqAnswersResponse",
    oneof: 0

  field :suggest_smart_replies_response, 4,
    type: Google.Cloud.Dialogflow.V2.SuggestSmartRepliesResponse,
    json_name: "suggestSmartRepliesResponse",
    oneof: 0
end

defmodule Google.Cloud.Dialogflow.V2.InputTextConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :language_code, 1, type: :string, json_name: "languageCode", deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.AnnotatedMessagePart do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :text, 1, type: :string
  field :entity_type, 2, type: :string, json_name: "entityType"
  field :formatted_value, 3, type: Google.Protobuf.Value, json_name: "formattedValue"
end

defmodule Google.Cloud.Dialogflow.V2.MessageAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parts, 1, repeated: true, type: Google.Cloud.Dialogflow.V2.AnnotatedMessagePart
  field :contain_entities, 2, type: :bool, json_name: "containEntities"
end

defmodule Google.Cloud.Dialogflow.V2.SuggestionInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :answer_record, 1, type: :string, json_name: "answerRecord", deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.AssistQueryParameters.DocumentsMetadataFiltersEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.V2.AssistQueryParameters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :documents_metadata_filters, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.AssistQueryParameters.DocumentsMetadataFiltersEntry,
    json_name: "documentsMetadataFilters",
    map: true
end

defmodule Google.Cloud.Dialogflow.V2.Participants.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.dialogflow.v2.Participants",
    protoc_gen_elixir_version: "0.12.0"

  rpc :CreateParticipant,
      Google.Cloud.Dialogflow.V2.CreateParticipantRequest,
      Google.Cloud.Dialogflow.V2.Participant

  rpc :GetParticipant,
      Google.Cloud.Dialogflow.V2.GetParticipantRequest,
      Google.Cloud.Dialogflow.V2.Participant

  rpc :ListParticipants,
      Google.Cloud.Dialogflow.V2.ListParticipantsRequest,
      Google.Cloud.Dialogflow.V2.ListParticipantsResponse

  rpc :UpdateParticipant,
      Google.Cloud.Dialogflow.V2.UpdateParticipantRequest,
      Google.Cloud.Dialogflow.V2.Participant

  rpc :AnalyzeContent,
      Google.Cloud.Dialogflow.V2.AnalyzeContentRequest,
      Google.Cloud.Dialogflow.V2.AnalyzeContentResponse

  rpc :StreamingAnalyzeContent,
      stream(Google.Cloud.Dialogflow.V2.StreamingAnalyzeContentRequest),
      stream(Google.Cloud.Dialogflow.V2.StreamingAnalyzeContentResponse)

  rpc :SuggestArticles,
      Google.Cloud.Dialogflow.V2.SuggestArticlesRequest,
      Google.Cloud.Dialogflow.V2.SuggestArticlesResponse

  rpc :SuggestFaqAnswers,
      Google.Cloud.Dialogflow.V2.SuggestFaqAnswersRequest,
      Google.Cloud.Dialogflow.V2.SuggestFaqAnswersResponse

  rpc :SuggestSmartReplies,
      Google.Cloud.Dialogflow.V2.SuggestSmartRepliesRequest,
      Google.Cloud.Dialogflow.V2.SuggestSmartRepliesResponse
end

defmodule Google.Cloud.Dialogflow.V2.Participants.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Dialogflow.V2.Participants.Service
end