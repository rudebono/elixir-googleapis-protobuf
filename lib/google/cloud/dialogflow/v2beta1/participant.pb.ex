defmodule Google.Cloud.Dialogflow.V2beta1.Participant.Role do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ROLE_UNSPECIFIED, 0
  field :HUMAN_AGENT, 1
  field :AUTOMATED_AGENT, 2
  field :END_USER, 3
end

defmodule Google.Cloud.Dialogflow.V2beta1.AutomatedAgentReply.AutomatedAgentReplyType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :AUTOMATED_AGENT_REPLY_TYPE_UNSPECIFIED, 0
  field :PARTIAL, 1
  field :FINAL, 2
end

defmodule Google.Cloud.Dialogflow.V2beta1.SuggestionFeature.Type do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :ARTICLE_SUGGESTION, 1
  field :FAQ, 2
  field :SMART_REPLY, 3
  field :CONVERSATION_SUMMARIZATION, 8
end

defmodule Google.Cloud.Dialogflow.V2beta1.Participant.DocumentsMetadataFiltersEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.Participant do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :participant, 2, type: Google.Cloud.Dialogflow.V2beta1.Participant, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.GetParticipantRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.ListParticipantsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.ListParticipantsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :participants, 1, repeated: true, type: Google.Cloud.Dialogflow.V2beta1.Participant
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dialogflow.V2beta1.UpdateParticipantRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :participant, 1, type: Google.Cloud.Dialogflow.V2beta1.Participant, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.AudioInput do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :config, 1, type: Google.Cloud.Dialogflow.V2beta1.InputAudioConfig
  field :audio, 2, type: :bytes
end

defmodule Google.Cloud.Dialogflow.V2beta1.OutputAudio do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :config, 1, type: Google.Cloud.Dialogflow.V2beta1.OutputAudioConfig
  field :audio, 2, type: :bytes
end

defmodule Google.Cloud.Dialogflow.V2beta1.AutomatedAgentReply do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :type, 1, type: Google.Cloud.Dialogflow.V2beta1.SuggestionFeature.Type, enum: true
end

defmodule Google.Cloud.Dialogflow.V2beta1.AssistQueryParameters.DocumentsMetadataFiltersEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.AssistQueryParameters do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :documents_metadata_filters, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.AssistQueryParameters.DocumentsMetadataFiltersEntry,
    json_name: "documentsMetadataFilters",
    map: true
end

defmodule Google.Cloud.Dialogflow.V2beta1.AnalyzeContentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :input, 0

  field :participant, 1, type: :string, deprecated: false

  field :text_input, 6,
    type: Google.Cloud.Dialogflow.V2beta1.TextInput,
    json_name: "textInput",
    oneof: 0

  field :audio_input, 7,
    type: Google.Cloud.Dialogflow.V2beta1.AudioInput,
    json_name: "audioInput",
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
  field :cx_current_page, 20, type: :string, json_name: "cxCurrentPage"
  field :message_send_time, 10, type: Google.Protobuf.Timestamp, json_name: "messageSendTime"
  field :request_id, 11, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Dialogflow.V2beta1.DtmfParameters do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :accepts_dtmf_input, 1, type: :bool, json_name: "acceptsDtmfInput"
end

defmodule Google.Cloud.Dialogflow.V2beta1.AnalyzeContentResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :language_code, 1, type: :string, json_name: "languageCode"
end

defmodule Google.Cloud.Dialogflow.V2beta1.StreamingAnalyzeContentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  field :cx_current_page, 15, type: :string, json_name: "cxCurrentPage"

  field :enable_partial_automated_agent_reply, 12,
    type: :bool,
    json_name: "enablePartialAutomatedAgentReply"
end

defmodule Google.Cloud.Dialogflow.V2beta1.StreamingAnalyzeContentResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :text, 1, type: :string
  field :entity_type, 2, type: :string, json_name: "entityType"
  field :formatted_value, 3, type: Google.Protobuf.Value, json_name: "formattedValue"
end

defmodule Google.Cloud.Dialogflow.V2beta1.MessageAnnotation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parts, 1, repeated: true, type: Google.Cloud.Dialogflow.V2beta1.AnnotatedMessagePart
  field :contain_entities, 2, type: :bool, json_name: "containEntities"
end

defmodule Google.Cloud.Dialogflow.V2beta1.ArticleAnswer.MetadataEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.ArticleAnswer do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.FaqAnswer do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :reply, 1, type: :string
  field :confidence, 2, type: :float
  field :answer_record, 3, type: :string, json_name: "answerRecord", deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.SuggestionResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :article_answers, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.ArticleAnswer,
    json_name: "articleAnswers"

  field :latest_message, 2, type: :string, json_name: "latestMessage"
  field :context_size, 3, type: :int32, json_name: "contextSize"
end

defmodule Google.Cloud.Dialogflow.V2beta1.SuggestFaqAnswersRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :faq_answers, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.FaqAnswer,
    json_name: "faqAnswers"

  field :latest_message, 2, type: :string, json_name: "latestMessage"
  field :context_size, 3, type: :int32, json_name: "contextSize"
end

defmodule Google.Cloud.Dialogflow.V2beta1.SuggestSmartRepliesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :current_text_input, 4,
    type: Google.Cloud.Dialogflow.V2beta1.TextInput,
    json_name: "currentTextInput"

  field :latest_message, 2, type: :string, json_name: "latestMessage", deprecated: false
  field :context_size, 3, type: :int32, json_name: "contextSize"
end

defmodule Google.Cloud.Dialogflow.V2beta1.SuggestSmartRepliesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :smart_reply_answers, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.SmartReplyAnswer,
    json_name: "smartReplyAnswers"

  field :latest_message, 2, type: :string, json_name: "latestMessage", deprecated: false
  field :context_size, 3, type: :int32, json_name: "contextSize"
end

defmodule Google.Cloud.Dialogflow.V2beta1.Suggestion.Article.MetadataEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.Suggestion.Article do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.Suggestion.FaqAnswer do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.ListSuggestionsResponse do
  @moduledoc false
  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :suggestions, 1, repeated: true, type: Google.Cloud.Dialogflow.V2beta1.Suggestion
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dialogflow.V2beta1.CompileSuggestionRequest do
  @moduledoc false
  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string
  field :latest_message, 2, type: :string, json_name: "latestMessage"
  field :context_size, 3, type: :int32, json_name: "contextSize"
end

defmodule Google.Cloud.Dialogflow.V2beta1.CompileSuggestionResponse do
  @moduledoc false
  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :suggestion, 1, type: Google.Cloud.Dialogflow.V2beta1.Suggestion
  field :latest_message, 2, type: :string, json_name: "latestMessage"
  field :context_size, 3, type: :int32, json_name: "contextSize"
end

defmodule Google.Cloud.Dialogflow.V2beta1.ResponseMessage.Text do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :text, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.ResponseMessage.LiveAgentHandoff do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :metadata, 1, type: Google.Protobuf.Struct
end

defmodule Google.Cloud.Dialogflow.V2beta1.ResponseMessage.EndInteraction do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Google.Cloud.Dialogflow.V2beta1.ResponseMessage.MixedAudio.Segment do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :content, 0

  field :audio, 1, type: :bytes, oneof: 0
  field :uri, 2, type: :string, oneof: 0
  field :allow_playback_interruption, 3, type: :bool, json_name: "allowPlaybackInterruption"
end

defmodule Google.Cloud.Dialogflow.V2beta1.ResponseMessage.MixedAudio do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :segments, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.ResponseMessage.MixedAudio.Segment
end

defmodule Google.Cloud.Dialogflow.V2beta1.ResponseMessage.TelephonyTransferCall do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :endpoint, 0

  field :phone_number, 1, type: :string, json_name: "phoneNumber", oneof: 0
  field :sip_uri, 2, type: :string, json_name: "sipUri", oneof: 0
end

defmodule Google.Cloud.Dialogflow.V2beta1.ResponseMessage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use GRPC.Service,
    name: "google.cloud.dialogflow.v2beta1.Participants",
    protoc_gen_elixir_version: "0.11.0"

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