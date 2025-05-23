defmodule Google.Cloud.Dialogflow.V2.Conversation.LifecycleState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :LIFECYCLE_STATE_UNSPECIFIED, 0
  field :IN_PROGRESS, 1
  field :COMPLETED, 2
end

defmodule Google.Cloud.Dialogflow.V2.Conversation.ConversationStage do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :CONVERSATION_STAGE_UNSPECIFIED, 0
  field :VIRTUAL_AGENT_STAGE, 1
  field :HUMAN_ASSIST_STAGE, 2
end

defmodule Google.Cloud.Dialogflow.V2.Conversation.ContextReference.UpdateMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UPDATE_MODE_UNSPECIFIED, 0
  field :APPEND, 1
  field :OVERWRITE, 2
end

defmodule Google.Cloud.Dialogflow.V2.Conversation.ContextReference.ContextContent.ContentFormat do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :CONTENT_FORMAT_UNSPECIFIED, 0
  field :JSON, 1
  field :PLAIN_TEXT, 2
end

defmodule Google.Cloud.Dialogflow.V2.SearchKnowledgeRequest.QuerySource do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :QUERY_SOURCE_UNSPECIFIED, 0
  field :AGENT_QUERY, 1
  field :SUGGESTED_QUERY, 2
end

defmodule Google.Cloud.Dialogflow.V2.SearchKnowledgeRequest.SearchConfig.BoostSpecs.BoostSpec.ConditionBoostSpec.BoostControlSpec.AttributeType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ATTRIBUTE_TYPE_UNSPECIFIED, 0
  field :NUMERICAL, 1
  field :FRESHNESS, 2
end

defmodule Google.Cloud.Dialogflow.V2.SearchKnowledgeRequest.SearchConfig.BoostSpecs.BoostSpec.ConditionBoostSpec.BoostControlSpec.InterpolationType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :INTERPOLATION_TYPE_UNSPECIFIED, 0
  field :LINEAR, 1
end

defmodule Google.Cloud.Dialogflow.V2.SearchKnowledgeAnswer.AnswerType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ANSWER_TYPE_UNSPECIFIED, 0
  field :FAQ, 1
  field :GENERATIVE, 2
  field :INTENT, 3
end

defmodule Google.Cloud.Dialogflow.V2.Conversation.TelephonyConnectionInfo.SipHeader do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :value, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.Conversation.TelephonyConnectionInfo.MimeContent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :mime_type, 1, type: :string, json_name: "mimeType", deprecated: false
  field :content, 2, type: :bytes, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.Conversation.TelephonyConnectionInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :dialed_number, 2, type: :string, json_name: "dialedNumber", deprecated: false
  field :sdp, 5, type: :string, deprecated: false

  field :sip_headers, 12,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.Conversation.TelephonyConnectionInfo.SipHeader,
    json_name: "sipHeaders",
    deprecated: false

  field :extra_mime_contents, 13,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.Conversation.TelephonyConnectionInfo.MimeContent,
    json_name: "extraMimeContents",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.Conversation.ContextReference.ContextContent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :content, 1, type: :string, deprecated: false

  field :content_format, 2,
    type: Google.Cloud.Dialogflow.V2.Conversation.ContextReference.ContextContent.ContentFormat,
    json_name: "contentFormat",
    enum: true,
    deprecated: false

  field :ingestion_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "ingestionTime",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.Conversation.ContextReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :context_contents, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.Conversation.ContextReference.ContextContent,
    json_name: "contextContents",
    deprecated: false

  field :update_mode, 2,
    type: Google.Cloud.Dialogflow.V2.Conversation.ContextReference.UpdateMode,
    json_name: "updateMode",
    enum: true,
    deprecated: false

  field :language_code, 3, type: :string, json_name: "languageCode", deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.Conversation.IngestedContextReferencesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Dialogflow.V2.Conversation.ContextReference
end

defmodule Google.Cloud.Dialogflow.V2.Conversation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :lifecycle_state, 2,
    type: Google.Cloud.Dialogflow.V2.Conversation.LifecycleState,
    json_name: "lifecycleState",
    enum: true,
    deprecated: false

  field :conversation_profile, 3,
    type: :string,
    json_name: "conversationProfile",
    deprecated: false

  field :phone_number, 4,
    type: Google.Cloud.Dialogflow.V2.ConversationPhoneNumber,
    json_name: "phoneNumber",
    deprecated: false

  field :start_time, 5, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 6, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false

  field :conversation_stage, 7,
    type: Google.Cloud.Dialogflow.V2.Conversation.ConversationStage,
    json_name: "conversationStage",
    enum: true,
    deprecated: false

  field :telephony_connection_info, 10,
    type: Google.Cloud.Dialogflow.V2.Conversation.TelephonyConnectionInfo,
    json_name: "telephonyConnectionInfo",
    deprecated: false

  field :ingested_context_references, 17,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.Conversation.IngestedContextReferencesEntry,
    json_name: "ingestedContextReferences",
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.CreateConversationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :conversation, 2, type: Google.Cloud.Dialogflow.V2.Conversation, deprecated: false
  field :conversation_id, 3, type: :string, json_name: "conversationId", deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.ListConversationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.ListConversationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :conversations, 1, repeated: true, type: Google.Cloud.Dialogflow.V2.Conversation
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dialogflow.V2.GetConversationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.CompleteConversationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.ListMessagesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.ListMessagesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :messages, 1, repeated: true, type: Google.Cloud.Dialogflow.V2.Message
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dialogflow.V2.ConversationPhoneNumber do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :country_code, 2, type: :int32, json_name: "countryCode", deprecated: false
  field :phone_number, 3, type: :string, json_name: "phoneNumber", deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.IngestContextReferencesRequest.ContextReferencesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Dialogflow.V2.Conversation.ContextReference
end

defmodule Google.Cloud.Dialogflow.V2.IngestContextReferencesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :conversation, 1, type: :string, deprecated: false

  field :context_references, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.IngestContextReferencesRequest.ContextReferencesEntry,
    json_name: "contextReferences",
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.IngestContextReferencesResponse.IngestedContextReferencesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Dialogflow.V2.Conversation.ContextReference
end

defmodule Google.Cloud.Dialogflow.V2.IngestContextReferencesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ingested_context_references, 1,
    repeated: true,
    type:
      Google.Cloud.Dialogflow.V2.IngestContextReferencesResponse.IngestedContextReferencesEntry,
    json_name: "ingestedContextReferences",
    map: true
end

defmodule Google.Cloud.Dialogflow.V2.SuggestConversationSummaryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :conversation, 1, type: :string, deprecated: false
  field :latest_message, 3, type: :string, json_name: "latestMessage", deprecated: false
  field :context_size, 4, type: :int32, json_name: "contextSize", deprecated: false

  field :assist_query_params, 5,
    type: Google.Cloud.Dialogflow.V2.AssistQueryParameters,
    json_name: "assistQueryParams",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.SuggestConversationSummaryResponse.Summary.TextSectionsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.V2.SuggestConversationSummaryResponse.Summary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :text, 1, type: :string

  field :text_sections, 4,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.SuggestConversationSummaryResponse.Summary.TextSectionsEntry,
    json_name: "textSections",
    map: true

  field :answer_record, 3, type: :string, json_name: "answerRecord", deprecated: false
  field :baseline_model_version, 5, type: :string, json_name: "baselineModelVersion"
end

defmodule Google.Cloud.Dialogflow.V2.SuggestConversationSummaryResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :summary, 1, type: Google.Cloud.Dialogflow.V2.SuggestConversationSummaryResponse.Summary
  field :latest_message, 2, type: :string, json_name: "latestMessage", deprecated: false
  field :context_size, 3, type: :int32, json_name: "contextSize"
end

defmodule Google.Cloud.Dialogflow.V2.GenerateStatelessSummaryRequest.MinimalConversation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :messages, 1, repeated: true, type: Google.Cloud.Dialogflow.V2.Message, deprecated: false
  field :parent, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.GenerateStatelessSummaryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :stateless_conversation, 1,
    type: Google.Cloud.Dialogflow.V2.GenerateStatelessSummaryRequest.MinimalConversation,
    json_name: "statelessConversation",
    deprecated: false

  field :conversation_profile, 2,
    type: Google.Cloud.Dialogflow.V2.ConversationProfile,
    json_name: "conversationProfile",
    deprecated: false

  field :latest_message, 3, type: :string, json_name: "latestMessage", deprecated: false
  field :max_context_size, 4, type: :int32, json_name: "maxContextSize", deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.GenerateStatelessSummaryResponse.Summary.TextSectionsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.V2.GenerateStatelessSummaryResponse.Summary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :text, 1, type: :string

  field :text_sections, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.GenerateStatelessSummaryResponse.Summary.TextSectionsEntry,
    json_name: "textSections",
    map: true

  field :baseline_model_version, 4, type: :string, json_name: "baselineModelVersion"
end

defmodule Google.Cloud.Dialogflow.V2.GenerateStatelessSummaryResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :summary, 1, type: Google.Cloud.Dialogflow.V2.GenerateStatelessSummaryResponse.Summary
  field :latest_message, 2, type: :string, json_name: "latestMessage", deprecated: false
  field :context_size, 3, type: :int32, json_name: "contextSize"
end

defmodule Google.Cloud.Dialogflow.V2.GenerateStatelessSuggestionRequest.ContextReferencesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Dialogflow.V2.Conversation.ContextReference
end

defmodule Google.Cloud.Dialogflow.V2.GenerateStatelessSuggestionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :generator_resource, 0

  field :parent, 1, type: :string, deprecated: false
  field :generator, 2, type: Google.Cloud.Dialogflow.V2.Generator, oneof: 0
  field :generator_name, 3, type: :string, json_name: "generatorName", oneof: 0

  field :context_references, 4,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.GenerateStatelessSuggestionRequest.ContextReferencesEntry,
    json_name: "contextReferences",
    map: true,
    deprecated: false

  field :conversation_context, 5,
    type: Google.Cloud.Dialogflow.V2.ConversationContext,
    json_name: "conversationContext",
    deprecated: false

  field :trigger_events, 6,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.TriggerEvent,
    json_name: "triggerEvents",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.GenerateStatelessSuggestionResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :generator_suggestion, 1,
    type: Google.Cloud.Dialogflow.V2.GeneratorSuggestion,
    json_name: "generatorSuggestion",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.SearchKnowledgeRequest.SearchConfig.BoostSpecs.BoostSpec.ConditionBoostSpec.BoostControlSpec.ControlPoint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :attribute_value, 1, type: :string, json_name: "attributeValue", deprecated: false
  field :boost_amount, 2, type: :float, json_name: "boostAmount", deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.SearchKnowledgeRequest.SearchConfig.BoostSpecs.BoostSpec.ConditionBoostSpec.BoostControlSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :field_name, 1, type: :string, json_name: "fieldName", deprecated: false

  field :attribute_type, 2,
    type:
      Google.Cloud.Dialogflow.V2.SearchKnowledgeRequest.SearchConfig.BoostSpecs.BoostSpec.ConditionBoostSpec.BoostControlSpec.AttributeType,
    json_name: "attributeType",
    enum: true,
    deprecated: false

  field :interpolation_type, 3,
    type:
      Google.Cloud.Dialogflow.V2.SearchKnowledgeRequest.SearchConfig.BoostSpecs.BoostSpec.ConditionBoostSpec.BoostControlSpec.InterpolationType,
    json_name: "interpolationType",
    enum: true,
    deprecated: false

  field :control_points, 4,
    repeated: true,
    type:
      Google.Cloud.Dialogflow.V2.SearchKnowledgeRequest.SearchConfig.BoostSpecs.BoostSpec.ConditionBoostSpec.BoostControlSpec.ControlPoint,
    json_name: "controlPoints",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.SearchKnowledgeRequest.SearchConfig.BoostSpecs.BoostSpec.ConditionBoostSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :condition, 1, type: :string, deprecated: false
  field :boost, 2, type: :float, deprecated: false

  field :boost_control_spec, 4,
    type:
      Google.Cloud.Dialogflow.V2.SearchKnowledgeRequest.SearchConfig.BoostSpecs.BoostSpec.ConditionBoostSpec.BoostControlSpec,
    json_name: "boostControlSpec",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.SearchKnowledgeRequest.SearchConfig.BoostSpecs.BoostSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :condition_boost_specs, 1,
    repeated: true,
    type:
      Google.Cloud.Dialogflow.V2.SearchKnowledgeRequest.SearchConfig.BoostSpecs.BoostSpec.ConditionBoostSpec,
    json_name: "conditionBoostSpecs",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.SearchKnowledgeRequest.SearchConfig.BoostSpecs do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :data_stores, 1, repeated: true, type: :string, json_name: "dataStores", deprecated: false

  field :spec, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.SearchKnowledgeRequest.SearchConfig.BoostSpecs.BoostSpec,
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.SearchKnowledgeRequest.SearchConfig.FilterSpecs do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :data_stores, 1, repeated: true, type: :string, json_name: "dataStores", deprecated: false
  field :filter, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.SearchKnowledgeRequest.SearchConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :boost_specs, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.SearchKnowledgeRequest.SearchConfig.BoostSpecs,
    json_name: "boostSpecs",
    deprecated: false

  field :filter_specs, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.SearchKnowledgeRequest.SearchConfig.FilterSpecs,
    json_name: "filterSpecs",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.SearchKnowledgeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 6, type: :string, deprecated: false
  field :query, 1, type: Google.Cloud.Dialogflow.V2.TextInput, deprecated: false

  field :conversation_profile, 2,
    type: :string,
    json_name: "conversationProfile",
    deprecated: false

  field :session_id, 3, type: :string, json_name: "sessionId", deprecated: false
  field :conversation, 4, type: :string, deprecated: false
  field :latest_message, 5, type: :string, json_name: "latestMessage", deprecated: false

  field :query_source, 7,
    type: Google.Cloud.Dialogflow.V2.SearchKnowledgeRequest.QuerySource,
    json_name: "querySource",
    enum: true,
    deprecated: false

  field :end_user_metadata, 9,
    type: Google.Protobuf.Struct,
    json_name: "endUserMetadata",
    deprecated: false

  field :search_config, 11,
    type: Google.Cloud.Dialogflow.V2.SearchKnowledgeRequest.SearchConfig,
    json_name: "searchConfig",
    deprecated: false

  field :exact_search, 14, type: :bool, json_name: "exactSearch", deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.SearchKnowledgeResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :answers, 2, repeated: true, type: Google.Cloud.Dialogflow.V2.SearchKnowledgeAnswer
  field :rewritten_query, 3, type: :string, json_name: "rewrittenQuery"
end

defmodule Google.Cloud.Dialogflow.V2.SearchKnowledgeAnswer.AnswerSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :title, 1, type: :string
  field :uri, 2, type: :string
  field :snippet, 3, type: :string
  field :metadata, 5, type: Google.Protobuf.Struct
end

defmodule Google.Cloud.Dialogflow.V2.SearchKnowledgeAnswer do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :answer, 1, type: :string

  field :answer_type, 2,
    type: Google.Cloud.Dialogflow.V2.SearchKnowledgeAnswer.AnswerType,
    json_name: "answerType",
    enum: true

  field :answer_sources, 3,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.SearchKnowledgeAnswer.AnswerSource,
    json_name: "answerSources"

  field :answer_record, 5, type: :string, json_name: "answerRecord", deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.GenerateSuggestionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :conversation, 1, type: :string, deprecated: false
  field :latest_message, 2, type: :string, json_name: "latestMessage", deprecated: false

  field :trigger_events, 3,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.TriggerEvent,
    json_name: "triggerEvents",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.Conversations.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.dialogflow.v2.Conversations",
    protoc_gen_elixir_version: "0.14.1"

  rpc :CreateConversation,
      Google.Cloud.Dialogflow.V2.CreateConversationRequest,
      Google.Cloud.Dialogflow.V2.Conversation

  rpc :ListConversations,
      Google.Cloud.Dialogflow.V2.ListConversationsRequest,
      Google.Cloud.Dialogflow.V2.ListConversationsResponse

  rpc :GetConversation,
      Google.Cloud.Dialogflow.V2.GetConversationRequest,
      Google.Cloud.Dialogflow.V2.Conversation

  rpc :CompleteConversation,
      Google.Cloud.Dialogflow.V2.CompleteConversationRequest,
      Google.Cloud.Dialogflow.V2.Conversation

  rpc :IngestContextReferences,
      Google.Cloud.Dialogflow.V2.IngestContextReferencesRequest,
      Google.Cloud.Dialogflow.V2.IngestContextReferencesResponse

  rpc :ListMessages,
      Google.Cloud.Dialogflow.V2.ListMessagesRequest,
      Google.Cloud.Dialogflow.V2.ListMessagesResponse

  rpc :SuggestConversationSummary,
      Google.Cloud.Dialogflow.V2.SuggestConversationSummaryRequest,
      Google.Cloud.Dialogflow.V2.SuggestConversationSummaryResponse

  rpc :GenerateStatelessSummary,
      Google.Cloud.Dialogflow.V2.GenerateStatelessSummaryRequest,
      Google.Cloud.Dialogflow.V2.GenerateStatelessSummaryResponse

  rpc :GenerateStatelessSuggestion,
      Google.Cloud.Dialogflow.V2.GenerateStatelessSuggestionRequest,
      Google.Cloud.Dialogflow.V2.GenerateStatelessSuggestionResponse

  rpc :SearchKnowledge,
      Google.Cloud.Dialogflow.V2.SearchKnowledgeRequest,
      Google.Cloud.Dialogflow.V2.SearchKnowledgeResponse

  rpc :GenerateSuggestions,
      Google.Cloud.Dialogflow.V2.GenerateSuggestionsRequest,
      Google.Cloud.Dialogflow.V2.GenerateSuggestionsResponse
end

defmodule Google.Cloud.Dialogflow.V2.Conversations.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Dialogflow.V2.Conversations.Service
end
