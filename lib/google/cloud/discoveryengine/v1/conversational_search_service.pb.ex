defmodule Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.SafetySpec.SafetySetting.HarmBlockThreshold do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :HARM_BLOCK_THRESHOLD_UNSPECIFIED, 0
  field :BLOCK_LOW_AND_ABOVE, 1
  field :BLOCK_MEDIUM_AND_ABOVE, 2
  field :BLOCK_ONLY_HIGH, 3
  field :BLOCK_NONE, 4
  field :OFF, 5
end

defmodule Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.GroundingSpec.FilteringLevel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :FILTERING_LEVEL_UNSPECIFIED, 0
  field :FILTERING_LEVEL_LOW, 1
  field :FILTERING_LEVEL_HIGH, 2
end

defmodule Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.QueryUnderstandingSpec.QueryClassificationSpec.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :ADVERSARIAL_QUERY, 1
  field :NON_ANSWER_SEEKING_QUERY, 2
  field :JAIL_BREAKING_QUERY, 3
  field :NON_ANSWER_SEEKING_QUERY_V2, 4
  field :USER_DEFINED_CLASSIFICATION_QUERY, 5
end

defmodule Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.QueryUnderstandingSpec.QueryRephraserSpec.ModelSpec.ModelType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :MODEL_TYPE_UNSPECIFIED, 0
  field :SMALL, 1
  field :LARGE, 2
end

defmodule Google.Cloud.Discoveryengine.V1.ConverseConversationRequest.UserLabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Discoveryengine.V1.ConverseConversationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :query, 2, type: Google.Cloud.Discoveryengine.V1.TextInput, deprecated: false
  field :serving_config, 3, type: :string, json_name: "servingConfig", deprecated: false
  field :conversation, 5, type: Google.Cloud.Discoveryengine.V1.Conversation
  field :safe_search, 6, type: :bool, json_name: "safeSearch"

  field :user_labels, 7,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.ConverseConversationRequest.UserLabelsEntry,
    json_name: "userLabels",
    map: true

  field :summary_spec, 8,
    type: Google.Cloud.Discoveryengine.V1.SearchRequest.ContentSearchSpec.SummarySpec,
    json_name: "summarySpec"

  field :filter, 9, type: :string

  field :boost_spec, 10,
    type: Google.Cloud.Discoveryengine.V1.SearchRequest.BoostSpec,
    json_name: "boostSpec"
end

defmodule Google.Cloud.Discoveryengine.V1.ConverseConversationResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :reply, 1, type: Google.Cloud.Discoveryengine.V1.Reply
  field :conversation, 2, type: Google.Cloud.Discoveryengine.V1.Conversation

  field :search_results, 3,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.SearchResponse.SearchResult,
    json_name: "searchResults"
end

defmodule Google.Cloud.Discoveryengine.V1.CreateConversationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :conversation, 2, type: Google.Cloud.Discoveryengine.V1.Conversation, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.UpdateConversationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :conversation, 1, type: Google.Cloud.Discoveryengine.V1.Conversation, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Discoveryengine.V1.DeleteConversationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.GetConversationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.ListConversationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Discoveryengine.V1.ListConversationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :conversations, 1, repeated: true, type: Google.Cloud.Discoveryengine.V1.Conversation
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.SafetySpec.SafetySetting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :category, 1,
    type: Google.Cloud.Discoveryengine.V1.HarmCategory,
    enum: true,
    deprecated: false

  field :threshold, 2,
    type:
      Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.SafetySpec.SafetySetting.HarmBlockThreshold,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.SafetySpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :enable, 1, type: :bool

  field :safety_settings, 2,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.SafetySpec.SafetySetting,
    json_name: "safetySettings",
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.RelatedQuestionsSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :enable, 1, type: :bool
end

defmodule Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.GroundingSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :include_grounding_supports, 2,
    type: :bool,
    json_name: "includeGroundingSupports",
    deprecated: false

  field :filtering_level, 3,
    type: Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.GroundingSpec.FilteringLevel,
    json_name: "filteringLevel",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.AnswerGenerationSpec.ModelSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :model_version, 1, type: :string, json_name: "modelVersion"
end

defmodule Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.AnswerGenerationSpec.PromptSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :preamble, 1, type: :string
end

defmodule Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.AnswerGenerationSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :model_spec, 1,
    type: Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.AnswerGenerationSpec.ModelSpec,
    json_name: "modelSpec"

  field :prompt_spec, 2,
    type: Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.AnswerGenerationSpec.PromptSpec,
    json_name: "promptSpec"

  field :include_citations, 3, type: :bool, json_name: "includeCitations"
  field :answer_language_code, 4, type: :string, json_name: "answerLanguageCode"
  field :ignore_adversarial_query, 5, type: :bool, json_name: "ignoreAdversarialQuery"
  field :ignore_non_answer_seeking_query, 6, type: :bool, json_name: "ignoreNonAnswerSeekingQuery"

  field :ignore_low_relevant_content, 7,
    proto3_optional: true,
    type: :bool,
    json_name: "ignoreLowRelevantContent"

  field :ignore_jail_breaking_query, 8,
    type: :bool,
    json_name: "ignoreJailBreakingQuery",
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.SearchSpec.SearchParams do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :max_return_results, 1, type: :int32, json_name: "maxReturnResults"
  field :filter, 2, type: :string

  field :boost_spec, 3,
    type: Google.Cloud.Discoveryengine.V1.SearchRequest.BoostSpec,
    json_name: "boostSpec"

  field :order_by, 4, type: :string, json_name: "orderBy"

  field :search_result_mode, 5,
    type: Google.Cloud.Discoveryengine.V1.SearchRequest.ContentSearchSpec.SearchResultMode,
    json_name: "searchResultMode",
    enum: true

  field :data_store_specs, 7,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.SearchRequest.DataStoreSpec,
    json_name: "dataStoreSpecs"
end

defmodule Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.SearchSpec.SearchResultList.SearchResult.UnstructuredDocumentInfo.DocumentContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :page_identifier, 1, type: :string, json_name: "pageIdentifier"
  field :content, 2, type: :string
end

defmodule Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.SearchSpec.SearchResultList.SearchResult.UnstructuredDocumentInfo.ExtractiveSegment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :page_identifier, 1, type: :string, json_name: "pageIdentifier"
  field :content, 2, type: :string
end

defmodule Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.SearchSpec.SearchResultList.SearchResult.UnstructuredDocumentInfo.ExtractiveAnswer do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :page_identifier, 1, type: :string, json_name: "pageIdentifier"
  field :content, 2, type: :string
end

defmodule Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.SearchSpec.SearchResultList.SearchResult.UnstructuredDocumentInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :document, 1, type: :string, deprecated: false
  field :uri, 2, type: :string
  field :title, 3, type: :string

  field :document_contexts, 4,
    repeated: true,
    type:
      Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.SearchSpec.SearchResultList.SearchResult.UnstructuredDocumentInfo.DocumentContext,
    json_name: "documentContexts"

  field :extractive_segments, 5,
    repeated: true,
    type:
      Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.SearchSpec.SearchResultList.SearchResult.UnstructuredDocumentInfo.ExtractiveSegment,
    json_name: "extractiveSegments"

  field :extractive_answers, 6,
    repeated: true,
    type:
      Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.SearchSpec.SearchResultList.SearchResult.UnstructuredDocumentInfo.ExtractiveAnswer,
    json_name: "extractiveAnswers",
    deprecated: true
end

defmodule Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.SearchSpec.SearchResultList.SearchResult.ChunkInfo.DocumentMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :uri, 1, type: :string
  field :title, 2, type: :string
end

defmodule Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.SearchSpec.SearchResultList.SearchResult.ChunkInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :chunk, 1, type: :string, deprecated: false
  field :content, 2, type: :string

  field :document_metadata, 4,
    type:
      Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.SearchSpec.SearchResultList.SearchResult.ChunkInfo.DocumentMetadata,
    json_name: "documentMetadata"
end

defmodule Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.SearchSpec.SearchResultList.SearchResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :content, 0

  field :unstructured_document_info, 1,
    type:
      Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.SearchSpec.SearchResultList.SearchResult.UnstructuredDocumentInfo,
    json_name: "unstructuredDocumentInfo",
    oneof: 0

  field :chunk_info, 2,
    type:
      Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.SearchSpec.SearchResultList.SearchResult.ChunkInfo,
    json_name: "chunkInfo",
    oneof: 0
end

defmodule Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.SearchSpec.SearchResultList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :search_results, 1,
    repeated: true,
    type:
      Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.SearchSpec.SearchResultList.SearchResult,
    json_name: "searchResults"
end

defmodule Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.SearchSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :input, 0

  field :search_params, 1,
    type: Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.SearchSpec.SearchParams,
    json_name: "searchParams",
    oneof: 0

  field :search_result_list, 2,
    type: Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.SearchSpec.SearchResultList,
    json_name: "searchResultList",
    oneof: 0
end

defmodule Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.QueryUnderstandingSpec.QueryClassificationSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :types, 1,
    repeated: true,
    type:
      Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.QueryUnderstandingSpec.QueryClassificationSpec.Type,
    enum: true
end

defmodule Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.QueryUnderstandingSpec.QueryRephraserSpec.ModelSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :model_type, 1,
    type:
      Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.QueryUnderstandingSpec.QueryRephraserSpec.ModelSpec.ModelType,
    json_name: "modelType",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.QueryUnderstandingSpec.QueryRephraserSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :disable, 1, type: :bool
  field :max_rephrase_steps, 2, type: :int32, json_name: "maxRephraseSteps"

  field :model_spec, 3,
    type:
      Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.QueryUnderstandingSpec.QueryRephraserSpec.ModelSpec,
    json_name: "modelSpec",
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.QueryUnderstandingSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :query_classification_spec, 1,
    type:
      Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.QueryUnderstandingSpec.QueryClassificationSpec,
    json_name: "queryClassificationSpec"

  field :query_rephraser_spec, 2,
    type:
      Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.QueryUnderstandingSpec.QueryRephraserSpec,
    json_name: "queryRephraserSpec"

  field :disable_spell_correction, 3,
    type: :bool,
    json_name: "disableSpellCorrection",
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.EndUserSpec.EndUserMetaData.ChunkInfo.DocumentMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :title, 1, type: :string
end

defmodule Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.EndUserSpec.EndUserMetaData.ChunkInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :content, 1, type: :string

  field :document_metadata, 2,
    type:
      Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.EndUserSpec.EndUserMetaData.ChunkInfo.DocumentMetadata,
    json_name: "documentMetadata"
end

defmodule Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.EndUserSpec.EndUserMetaData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :content, 0

  field :chunk_info, 1,
    type:
      Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.EndUserSpec.EndUserMetaData.ChunkInfo,
    json_name: "chunkInfo",
    oneof: 0
end

defmodule Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.EndUserSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :end_user_metadata, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.EndUserSpec.EndUserMetaData,
    json_name: "endUserMetadata",
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.UserLabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Discoveryengine.V1.AnswerQueryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :serving_config, 1, type: :string, json_name: "servingConfig", deprecated: false
  field :query, 2, type: Google.Cloud.Discoveryengine.V1.Query, deprecated: false
  field :session, 3, type: :string, deprecated: false

  field :safety_spec, 4,
    type: Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.SafetySpec,
    json_name: "safetySpec"

  field :related_questions_spec, 5,
    type: Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.RelatedQuestionsSpec,
    json_name: "relatedQuestionsSpec"

  field :grounding_spec, 6,
    type: Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.GroundingSpec,
    json_name: "groundingSpec",
    deprecated: false

  field :answer_generation_spec, 7,
    type: Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.AnswerGenerationSpec,
    json_name: "answerGenerationSpec"

  field :search_spec, 8,
    type: Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.SearchSpec,
    json_name: "searchSpec"

  field :query_understanding_spec, 9,
    type: Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.QueryUnderstandingSpec,
    json_name: "queryUnderstandingSpec"

  field :asynchronous_mode, 10, type: :bool, json_name: "asynchronousMode", deprecated: true
  field :user_pseudo_id, 12, type: :string, json_name: "userPseudoId"

  field :user_labels, 13,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.UserLabelsEntry,
    json_name: "userLabels",
    map: true

  field :end_user_spec, 14,
    type: Google.Cloud.Discoveryengine.V1.AnswerQueryRequest.EndUserSpec,
    json_name: "endUserSpec",
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.AnswerQueryResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :answer, 1, type: Google.Cloud.Discoveryengine.V1.Answer
  field :session, 2, type: Google.Cloud.Discoveryengine.V1.Session
  field :answer_query_token, 3, type: :string, json_name: "answerQueryToken"
end

defmodule Google.Cloud.Discoveryengine.V1.GetAnswerRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.CreateSessionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :session, 2, type: Google.Cloud.Discoveryengine.V1.Session, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.UpdateSessionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :session, 1, type: Google.Cloud.Discoveryengine.V1.Session, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Discoveryengine.V1.DeleteSessionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.GetSessionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :include_answer_details, 2,
    type: :bool,
    json_name: "includeAnswerDetails",
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.ListSessionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Discoveryengine.V1.ListSessionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :sessions, 1, repeated: true, type: Google.Cloud.Discoveryengine.V1.Session
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Discoveryengine.V1.ConversationalSearchService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.discoveryengine.v1.ConversationalSearchService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :ConverseConversation,
      Google.Cloud.Discoveryengine.V1.ConverseConversationRequest,
      Google.Cloud.Discoveryengine.V1.ConverseConversationResponse

  rpc :CreateConversation,
      Google.Cloud.Discoveryengine.V1.CreateConversationRequest,
      Google.Cloud.Discoveryengine.V1.Conversation

  rpc :DeleteConversation,
      Google.Cloud.Discoveryengine.V1.DeleteConversationRequest,
      Google.Protobuf.Empty

  rpc :UpdateConversation,
      Google.Cloud.Discoveryengine.V1.UpdateConversationRequest,
      Google.Cloud.Discoveryengine.V1.Conversation

  rpc :GetConversation,
      Google.Cloud.Discoveryengine.V1.GetConversationRequest,
      Google.Cloud.Discoveryengine.V1.Conversation

  rpc :ListConversations,
      Google.Cloud.Discoveryengine.V1.ListConversationsRequest,
      Google.Cloud.Discoveryengine.V1.ListConversationsResponse

  rpc :AnswerQuery,
      Google.Cloud.Discoveryengine.V1.AnswerQueryRequest,
      Google.Cloud.Discoveryengine.V1.AnswerQueryResponse

  rpc :StreamAnswerQuery,
      Google.Cloud.Discoveryengine.V1.AnswerQueryRequest,
      stream(Google.Cloud.Discoveryengine.V1.AnswerQueryResponse)

  rpc :GetAnswer,
      Google.Cloud.Discoveryengine.V1.GetAnswerRequest,
      Google.Cloud.Discoveryengine.V1.Answer

  rpc :CreateSession,
      Google.Cloud.Discoveryengine.V1.CreateSessionRequest,
      Google.Cloud.Discoveryengine.V1.Session

  rpc :DeleteSession, Google.Cloud.Discoveryengine.V1.DeleteSessionRequest, Google.Protobuf.Empty

  rpc :UpdateSession,
      Google.Cloud.Discoveryengine.V1.UpdateSessionRequest,
      Google.Cloud.Discoveryengine.V1.Session

  rpc :GetSession,
      Google.Cloud.Discoveryengine.V1.GetSessionRequest,
      Google.Cloud.Discoveryengine.V1.Session

  rpc :ListSessions,
      Google.Cloud.Discoveryengine.V1.ListSessionsRequest,
      Google.Cloud.Discoveryengine.V1.ListSessionsResponse
end

defmodule Google.Cloud.Discoveryengine.V1.ConversationalSearchService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Discoveryengine.V1.ConversationalSearchService.Service
end
