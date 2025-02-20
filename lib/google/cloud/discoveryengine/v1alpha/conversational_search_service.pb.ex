defmodule Google.Cloud.Discoveryengine.V1alpha.AnswerQueryRequest.QueryUnderstandingSpec.QueryClassificationSpec.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :ADVERSARIAL_QUERY, 1
  field :NON_ANSWER_SEEKING_QUERY, 2
  field :JAIL_BREAKING_QUERY, 3
end

defmodule Google.Cloud.Discoveryengine.V1alpha.ConverseConversationRequest.UserLabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Discoveryengine.V1alpha.ConverseConversationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :query, 2, type: Google.Cloud.Discoveryengine.V1alpha.TextInput, deprecated: false
  field :serving_config, 3, type: :string, json_name: "servingConfig", deprecated: false
  field :conversation, 5, type: Google.Cloud.Discoveryengine.V1alpha.Conversation
  field :safe_search, 6, type: :bool, json_name: "safeSearch"

  field :user_labels, 7,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1alpha.ConverseConversationRequest.UserLabelsEntry,
    json_name: "userLabels",
    map: true

  field :summary_spec, 8,
    type: Google.Cloud.Discoveryengine.V1alpha.SearchRequest.ContentSearchSpec.SummarySpec,
    json_name: "summarySpec"

  field :filter, 9, type: :string

  field :boost_spec, 10,
    type: Google.Cloud.Discoveryengine.V1alpha.SearchRequest.BoostSpec,
    json_name: "boostSpec"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.ConverseConversationResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :reply, 1, type: Google.Cloud.Discoveryengine.V1alpha.Reply
  field :conversation, 2, type: Google.Cloud.Discoveryengine.V1alpha.Conversation
  field :related_questions, 6, repeated: true, type: :string, json_name: "relatedQuestions"

  field :search_results, 3,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1alpha.SearchResponse.SearchResult,
    json_name: "searchResults"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.CreateConversationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :conversation, 2,
    type: Google.Cloud.Discoveryengine.V1alpha.Conversation,
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.UpdateConversationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :conversation, 1,
    type: Google.Cloud.Discoveryengine.V1alpha.Conversation,
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.DeleteConversationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.GetConversationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.ListConversationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.ListConversationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :conversations, 1, repeated: true, type: Google.Cloud.Discoveryengine.V1alpha.Conversation
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.AnswerQueryRequest.SafetySpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :enable, 1, type: :bool
end

defmodule Google.Cloud.Discoveryengine.V1alpha.AnswerQueryRequest.RelatedQuestionsSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :enable, 1, type: :bool
end

defmodule Google.Cloud.Discoveryengine.V1alpha.AnswerQueryRequest.AnswerGenerationSpec.ModelSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :model_version, 1, type: :string, json_name: "modelVersion"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.AnswerQueryRequest.AnswerGenerationSpec.PromptSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :preamble, 1, type: :string
end

defmodule Google.Cloud.Discoveryengine.V1alpha.AnswerQueryRequest.AnswerGenerationSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :model_spec, 1,
    type: Google.Cloud.Discoveryengine.V1alpha.AnswerQueryRequest.AnswerGenerationSpec.ModelSpec,
    json_name: "modelSpec"

  field :prompt_spec, 2,
    type: Google.Cloud.Discoveryengine.V1alpha.AnswerQueryRequest.AnswerGenerationSpec.PromptSpec,
    json_name: "promptSpec"

  field :include_citations, 3, type: :bool, json_name: "includeCitations"
  field :answer_language_code, 4, type: :string, json_name: "answerLanguageCode"
  field :ignore_adversarial_query, 5, type: :bool, json_name: "ignoreAdversarialQuery"
  field :ignore_non_answer_seeking_query, 6, type: :bool, json_name: "ignoreNonAnswerSeekingQuery"

  field :ignore_low_relevant_content, 7,
    proto3_optional: true,
    type: :bool,
    json_name: "ignoreLowRelevantContent"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.AnswerQueryRequest.SearchSpec.SearchParams do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :max_return_results, 1, type: :int32, json_name: "maxReturnResults"
  field :filter, 2, type: :string

  field :boost_spec, 3,
    type: Google.Cloud.Discoveryengine.V1alpha.SearchRequest.BoostSpec,
    json_name: "boostSpec"

  field :order_by, 4, type: :string, json_name: "orderBy"

  field :search_result_mode, 5,
    type: Google.Cloud.Discoveryengine.V1alpha.SearchRequest.ContentSearchSpec.SearchResultMode,
    json_name: "searchResultMode",
    enum: true

  field :custom_fine_tuning_spec, 6,
    type: Google.Cloud.Discoveryengine.V1alpha.CustomFineTuningSpec,
    json_name: "customFineTuningSpec"

  field :data_store_specs, 7,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1alpha.SearchRequest.DataStoreSpec,
    json_name: "dataStoreSpecs"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.AnswerQueryRequest.SearchSpec.SearchResultList.SearchResult.UnstructuredDocumentInfo.DocumentContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :page_identifier, 1, type: :string, json_name: "pageIdentifier"
  field :content, 2, type: :string
end

defmodule Google.Cloud.Discoveryengine.V1alpha.AnswerQueryRequest.SearchSpec.SearchResultList.SearchResult.UnstructuredDocumentInfo.ExtractiveSegment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :page_identifier, 1, type: :string, json_name: "pageIdentifier"
  field :content, 2, type: :string
end

defmodule Google.Cloud.Discoveryengine.V1alpha.AnswerQueryRequest.SearchSpec.SearchResultList.SearchResult.UnstructuredDocumentInfo.ExtractiveAnswer do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :page_identifier, 1, type: :string, json_name: "pageIdentifier"
  field :content, 2, type: :string
end

defmodule Google.Cloud.Discoveryengine.V1alpha.AnswerQueryRequest.SearchSpec.SearchResultList.SearchResult.UnstructuredDocumentInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :document, 1, type: :string, deprecated: false
  field :uri, 2, type: :string
  field :title, 3, type: :string

  field :document_contexts, 4,
    repeated: true,
    type:
      Google.Cloud.Discoveryengine.V1alpha.AnswerQueryRequest.SearchSpec.SearchResultList.SearchResult.UnstructuredDocumentInfo.DocumentContext,
    json_name: "documentContexts"

  field :extractive_segments, 5,
    repeated: true,
    type:
      Google.Cloud.Discoveryengine.V1alpha.AnswerQueryRequest.SearchSpec.SearchResultList.SearchResult.UnstructuredDocumentInfo.ExtractiveSegment,
    json_name: "extractiveSegments"

  field :extractive_answers, 6,
    repeated: true,
    type:
      Google.Cloud.Discoveryengine.V1alpha.AnswerQueryRequest.SearchSpec.SearchResultList.SearchResult.UnstructuredDocumentInfo.ExtractiveAnswer,
    json_name: "extractiveAnswers"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.AnswerQueryRequest.SearchSpec.SearchResultList.SearchResult.ChunkInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :chunk, 1, type: :string, deprecated: false
  field :content, 2, type: :string
end

defmodule Google.Cloud.Discoveryengine.V1alpha.AnswerQueryRequest.SearchSpec.SearchResultList.SearchResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :content, 0

  field :unstructured_document_info, 1,
    type:
      Google.Cloud.Discoveryengine.V1alpha.AnswerQueryRequest.SearchSpec.SearchResultList.SearchResult.UnstructuredDocumentInfo,
    json_name: "unstructuredDocumentInfo",
    oneof: 0

  field :chunk_info, 2,
    type:
      Google.Cloud.Discoveryengine.V1alpha.AnswerQueryRequest.SearchSpec.SearchResultList.SearchResult.ChunkInfo,
    json_name: "chunkInfo",
    oneof: 0
end

defmodule Google.Cloud.Discoveryengine.V1alpha.AnswerQueryRequest.SearchSpec.SearchResultList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :search_results, 1,
    repeated: true,
    type:
      Google.Cloud.Discoveryengine.V1alpha.AnswerQueryRequest.SearchSpec.SearchResultList.SearchResult,
    json_name: "searchResults"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.AnswerQueryRequest.SearchSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :input, 0

  field :search_params, 1,
    type: Google.Cloud.Discoveryengine.V1alpha.AnswerQueryRequest.SearchSpec.SearchParams,
    json_name: "searchParams",
    oneof: 0

  field :search_result_list, 2,
    type: Google.Cloud.Discoveryengine.V1alpha.AnswerQueryRequest.SearchSpec.SearchResultList,
    json_name: "searchResultList",
    oneof: 0
end

defmodule Google.Cloud.Discoveryengine.V1alpha.AnswerQueryRequest.QueryUnderstandingSpec.QueryClassificationSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :types, 1,
    repeated: true,
    type:
      Google.Cloud.Discoveryengine.V1alpha.AnswerQueryRequest.QueryUnderstandingSpec.QueryClassificationSpec.Type,
    enum: true
end

defmodule Google.Cloud.Discoveryengine.V1alpha.AnswerQueryRequest.QueryUnderstandingSpec.QueryRephraserSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :disable, 1, type: :bool
  field :max_rephrase_steps, 2, type: :int32, json_name: "maxRephraseSteps"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.AnswerQueryRequest.QueryUnderstandingSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :query_classification_spec, 1,
    type:
      Google.Cloud.Discoveryengine.V1alpha.AnswerQueryRequest.QueryUnderstandingSpec.QueryClassificationSpec,
    json_name: "queryClassificationSpec"

  field :query_rephraser_spec, 2,
    type:
      Google.Cloud.Discoveryengine.V1alpha.AnswerQueryRequest.QueryUnderstandingSpec.QueryRephraserSpec,
    json_name: "queryRephraserSpec"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.AnswerQueryRequest.UserLabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Discoveryengine.V1alpha.AnswerQueryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :serving_config, 1, type: :string, json_name: "servingConfig", deprecated: false
  field :query, 2, type: Google.Cloud.Discoveryengine.V1alpha.Query, deprecated: false
  field :session, 3, type: :string, deprecated: false

  field :safety_spec, 4,
    type: Google.Cloud.Discoveryengine.V1alpha.AnswerQueryRequest.SafetySpec,
    json_name: "safetySpec"

  field :related_questions_spec, 5,
    type: Google.Cloud.Discoveryengine.V1alpha.AnswerQueryRequest.RelatedQuestionsSpec,
    json_name: "relatedQuestionsSpec"

  field :answer_generation_spec, 7,
    type: Google.Cloud.Discoveryengine.V1alpha.AnswerQueryRequest.AnswerGenerationSpec,
    json_name: "answerGenerationSpec"

  field :search_spec, 8,
    type: Google.Cloud.Discoveryengine.V1alpha.AnswerQueryRequest.SearchSpec,
    json_name: "searchSpec"

  field :query_understanding_spec, 9,
    type: Google.Cloud.Discoveryengine.V1alpha.AnswerQueryRequest.QueryUnderstandingSpec,
    json_name: "queryUnderstandingSpec"

  field :asynchronous_mode, 10, type: :bool, json_name: "asynchronousMode"
  field :user_pseudo_id, 12, type: :string, json_name: "userPseudoId"

  field :user_labels, 13,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1alpha.AnswerQueryRequest.UserLabelsEntry,
    json_name: "userLabels",
    map: true
end

defmodule Google.Cloud.Discoveryengine.V1alpha.AnswerQueryResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :answer, 1, type: Google.Cloud.Discoveryengine.V1alpha.Answer
  field :session, 2, type: Google.Cloud.Discoveryengine.V1alpha.Session
  field :answer_query_token, 3, type: :string, json_name: "answerQueryToken"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.GetAnswerRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.CreateSessionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :session, 2, type: Google.Cloud.Discoveryengine.V1alpha.Session, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.UpdateSessionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :session, 1, type: Google.Cloud.Discoveryengine.V1alpha.Session, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.DeleteSessionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.GetSessionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.ListSessionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.ListSessionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :sessions, 1, repeated: true, type: Google.Cloud.Discoveryengine.V1alpha.Session
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.ConversationalSearchService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.discoveryengine.v1alpha.ConversationalSearchService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :ConverseConversation,
      Google.Cloud.Discoveryengine.V1alpha.ConverseConversationRequest,
      Google.Cloud.Discoveryengine.V1alpha.ConverseConversationResponse

  rpc :CreateConversation,
      Google.Cloud.Discoveryengine.V1alpha.CreateConversationRequest,
      Google.Cloud.Discoveryengine.V1alpha.Conversation

  rpc :DeleteConversation,
      Google.Cloud.Discoveryengine.V1alpha.DeleteConversationRequest,
      Google.Protobuf.Empty

  rpc :UpdateConversation,
      Google.Cloud.Discoveryengine.V1alpha.UpdateConversationRequest,
      Google.Cloud.Discoveryengine.V1alpha.Conversation

  rpc :GetConversation,
      Google.Cloud.Discoveryengine.V1alpha.GetConversationRequest,
      Google.Cloud.Discoveryengine.V1alpha.Conversation

  rpc :ListConversations,
      Google.Cloud.Discoveryengine.V1alpha.ListConversationsRequest,
      Google.Cloud.Discoveryengine.V1alpha.ListConversationsResponse

  rpc :AnswerQuery,
      Google.Cloud.Discoveryengine.V1alpha.AnswerQueryRequest,
      Google.Cloud.Discoveryengine.V1alpha.AnswerQueryResponse

  rpc :GetAnswer,
      Google.Cloud.Discoveryengine.V1alpha.GetAnswerRequest,
      Google.Cloud.Discoveryengine.V1alpha.Answer

  rpc :CreateSession,
      Google.Cloud.Discoveryengine.V1alpha.CreateSessionRequest,
      Google.Cloud.Discoveryengine.V1alpha.Session

  rpc :DeleteSession,
      Google.Cloud.Discoveryengine.V1alpha.DeleteSessionRequest,
      Google.Protobuf.Empty

  rpc :UpdateSession,
      Google.Cloud.Discoveryengine.V1alpha.UpdateSessionRequest,
      Google.Cloud.Discoveryengine.V1alpha.Session

  rpc :GetSession,
      Google.Cloud.Discoveryengine.V1alpha.GetSessionRequest,
      Google.Cloud.Discoveryengine.V1alpha.Session

  rpc :ListSessions,
      Google.Cloud.Discoveryengine.V1alpha.ListSessionsRequest,
      Google.Cloud.Discoveryengine.V1alpha.ListSessionsResponse
end

defmodule Google.Cloud.Discoveryengine.V1alpha.ConversationalSearchService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Discoveryengine.V1alpha.ConversationalSearchService.Service
end
