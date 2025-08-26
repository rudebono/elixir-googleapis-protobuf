defmodule Google.Ai.Generativelanguage.V1.TaskType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TASK_TYPE_UNSPECIFIED, 0
  field :RETRIEVAL_QUERY, 1
  field :RETRIEVAL_DOCUMENT, 2
  field :SEMANTIC_SIMILARITY, 3
  field :CLASSIFICATION, 4
  field :CLUSTERING, 5
  field :QUESTION_ANSWERING, 6
  field :FACT_VERIFICATION, 7
  field :CODE_RETRIEVAL_QUERY, 8
end

defmodule Google.Ai.Generativelanguage.V1.GenerateContentResponse.PromptFeedback.BlockReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :BLOCK_REASON_UNSPECIFIED, 0
  field :SAFETY, 1
  field :OTHER, 2
  field :BLOCKLIST, 3
  field :PROHIBITED_CONTENT, 4
  field :IMAGE_SAFETY, 5
end

defmodule Google.Ai.Generativelanguage.V1.Candidate.FinishReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :FINISH_REASON_UNSPECIFIED, 0
  field :STOP, 1
  field :MAX_TOKENS, 2
  field :SAFETY, 3
  field :RECITATION, 4
  field :LANGUAGE, 6
  field :OTHER, 5
  field :BLOCKLIST, 7
  field :PROHIBITED_CONTENT, 8
  field :SPII, 9
  field :MALFORMED_FUNCTION_CALL, 10
  field :IMAGE_SAFETY, 11
  field :UNEXPECTED_TOOL_CALL, 12
end

defmodule Google.Ai.Generativelanguage.V1.UrlMetadata.UrlRetrievalStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :URL_RETRIEVAL_STATUS_UNSPECIFIED, 0
  field :URL_RETRIEVAL_STATUS_SUCCESS, 1
  field :URL_RETRIEVAL_STATUS_ERROR, 2
end

defmodule Google.Ai.Generativelanguage.V1.GenerateContentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :model, 1, type: :string, deprecated: false

  field :contents, 2,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1.Content,
    deprecated: false

  field :safety_settings, 3,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1.SafetySetting,
    json_name: "safetySettings",
    deprecated: false

  field :generation_config, 4,
    proto3_optional: true,
    type: Google.Ai.Generativelanguage.V1.GenerationConfig,
    json_name: "generationConfig",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1.GenerationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :candidate_count, 1,
    proto3_optional: true,
    type: :int32,
    json_name: "candidateCount",
    deprecated: false

  field :stop_sequences, 2,
    repeated: true,
    type: :string,
    json_name: "stopSequences",
    deprecated: false

  field :max_output_tokens, 4,
    proto3_optional: true,
    type: :int32,
    json_name: "maxOutputTokens",
    deprecated: false

  field :temperature, 5, proto3_optional: true, type: :float, deprecated: false
  field :top_p, 6, proto3_optional: true, type: :float, json_name: "topP", deprecated: false
  field :top_k, 7, proto3_optional: true, type: :int32, json_name: "topK", deprecated: false
  field :seed, 8, proto3_optional: true, type: :int32, deprecated: false

  field :presence_penalty, 15,
    proto3_optional: true,
    type: :float,
    json_name: "presencePenalty",
    deprecated: false

  field :frequency_penalty, 16,
    proto3_optional: true,
    type: :float,
    json_name: "frequencyPenalty",
    deprecated: false

  field :response_logprobs, 17,
    proto3_optional: true,
    type: :bool,
    json_name: "responseLogprobs",
    deprecated: false

  field :logprobs, 18, proto3_optional: true, type: :int32, deprecated: false

  field :enable_enhanced_civic_answers, 19,
    proto3_optional: true,
    type: :bool,
    json_name: "enableEnhancedCivicAnswers",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1.GenerateContentResponse.PromptFeedback do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :block_reason, 1,
    type: Google.Ai.Generativelanguage.V1.GenerateContentResponse.PromptFeedback.BlockReason,
    json_name: "blockReason",
    enum: true,
    deprecated: false

  field :safety_ratings, 2,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1.SafetyRating,
    json_name: "safetyRatings"
end

defmodule Google.Ai.Generativelanguage.V1.GenerateContentResponse.UsageMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :prompt_token_count, 1, type: :int32, json_name: "promptTokenCount"
  field :candidates_token_count, 2, type: :int32, json_name: "candidatesTokenCount"

  field :tool_use_prompt_token_count, 8,
    type: :int32,
    json_name: "toolUsePromptTokenCount",
    deprecated: false

  field :thoughts_token_count, 10,
    type: :int32,
    json_name: "thoughtsTokenCount",
    deprecated: false

  field :total_token_count, 3, type: :int32, json_name: "totalTokenCount"

  field :prompt_tokens_details, 5,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1.ModalityTokenCount,
    json_name: "promptTokensDetails",
    deprecated: false

  field :cache_tokens_details, 6,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1.ModalityTokenCount,
    json_name: "cacheTokensDetails",
    deprecated: false

  field :candidates_tokens_details, 7,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1.ModalityTokenCount,
    json_name: "candidatesTokensDetails",
    deprecated: false

  field :tool_use_prompt_tokens_details, 9,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1.ModalityTokenCount,
    json_name: "toolUsePromptTokensDetails",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1.GenerateContentResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :candidates, 1, repeated: true, type: Google.Ai.Generativelanguage.V1.Candidate

  field :prompt_feedback, 2,
    type: Google.Ai.Generativelanguage.V1.GenerateContentResponse.PromptFeedback,
    json_name: "promptFeedback"

  field :usage_metadata, 3,
    type: Google.Ai.Generativelanguage.V1.GenerateContentResponse.UsageMetadata,
    json_name: "usageMetadata",
    deprecated: false

  field :model_version, 4, type: :string, json_name: "modelVersion", deprecated: false
  field :response_id, 5, type: :string, json_name: "responseId", deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1.Candidate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :index, 3, proto3_optional: true, type: :int32, deprecated: false
  field :content, 1, type: Google.Ai.Generativelanguage.V1.Content, deprecated: false

  field :finish_reason, 2,
    type: Google.Ai.Generativelanguage.V1.Candidate.FinishReason,
    json_name: "finishReason",
    enum: true,
    deprecated: false

  field :safety_ratings, 5,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1.SafetyRating,
    json_name: "safetyRatings"

  field :citation_metadata, 6,
    type: Google.Ai.Generativelanguage.V1.CitationMetadata,
    json_name: "citationMetadata",
    deprecated: false

  field :token_count, 7, type: :int32, json_name: "tokenCount", deprecated: false

  field :grounding_metadata, 9,
    type: Google.Ai.Generativelanguage.V1.GroundingMetadata,
    json_name: "groundingMetadata",
    deprecated: false

  field :avg_logprobs, 10, type: :double, json_name: "avgLogprobs", deprecated: false

  field :logprobs_result, 11,
    type: Google.Ai.Generativelanguage.V1.LogprobsResult,
    json_name: "logprobsResult",
    deprecated: false

  field :url_context_metadata, 13,
    type: Google.Ai.Generativelanguage.V1.UrlContextMetadata,
    json_name: "urlContextMetadata",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1.UrlContextMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :url_metadata, 1,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1.UrlMetadata,
    json_name: "urlMetadata"
end

defmodule Google.Ai.Generativelanguage.V1.UrlMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :retrieved_url, 1, type: :string, json_name: "retrievedUrl"

  field :url_retrieval_status, 2,
    type: Google.Ai.Generativelanguage.V1.UrlMetadata.UrlRetrievalStatus,
    json_name: "urlRetrievalStatus",
    enum: true
end

defmodule Google.Ai.Generativelanguage.V1.LogprobsResult.Candidate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :token, 1, proto3_optional: true, type: :string
  field :token_id, 3, proto3_optional: true, type: :int32, json_name: "tokenId"
  field :log_probability, 2, proto3_optional: true, type: :float, json_name: "logProbability"
end

defmodule Google.Ai.Generativelanguage.V1.LogprobsResult.TopCandidates do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :candidates, 1,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1.LogprobsResult.Candidate
end

defmodule Google.Ai.Generativelanguage.V1.LogprobsResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :top_candidates, 1,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1.LogprobsResult.TopCandidates,
    json_name: "topCandidates"

  field :chosen_candidates, 2,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1.LogprobsResult.Candidate,
    json_name: "chosenCandidates"
end

defmodule Google.Ai.Generativelanguage.V1.RetrievalMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :google_search_dynamic_retrieval_score, 2,
    type: :float,
    json_name: "googleSearchDynamicRetrievalScore",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1.GroundingMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :search_entry_point, 1,
    proto3_optional: true,
    type: Google.Ai.Generativelanguage.V1.SearchEntryPoint,
    json_name: "searchEntryPoint",
    deprecated: false

  field :grounding_chunks, 2,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1.GroundingChunk,
    json_name: "groundingChunks"

  field :grounding_supports, 3,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1.GroundingSupport,
    json_name: "groundingSupports"

  field :retrieval_metadata, 4,
    proto3_optional: true,
    type: Google.Ai.Generativelanguage.V1.RetrievalMetadata,
    json_name: "retrievalMetadata"

  field :web_search_queries, 5, repeated: true, type: :string, json_name: "webSearchQueries"
end

defmodule Google.Ai.Generativelanguage.V1.SearchEntryPoint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :rendered_content, 1, type: :string, json_name: "renderedContent", deprecated: false
  field :sdk_blob, 2, type: :bytes, json_name: "sdkBlob", deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1.GroundingChunk.Web do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :uri, 1, proto3_optional: true, type: :string
  field :title, 2, proto3_optional: true, type: :string
end

defmodule Google.Ai.Generativelanguage.V1.GroundingChunk do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :chunk_type, 0

  field :web, 1, type: Google.Ai.Generativelanguage.V1.GroundingChunk.Web, oneof: 0
end

defmodule Google.Ai.Generativelanguage.V1.Segment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :part_index, 1, type: :int32, json_name: "partIndex", deprecated: false
  field :start_index, 2, type: :int32, json_name: "startIndex", deprecated: false
  field :end_index, 3, type: :int32, json_name: "endIndex", deprecated: false
  field :text, 4, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1.GroundingSupport do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :segment, 1, proto3_optional: true, type: Google.Ai.Generativelanguage.V1.Segment

  field :grounding_chunk_indices, 2,
    repeated: true,
    type: :int32,
    json_name: "groundingChunkIndices"

  field :confidence_scores, 3, repeated: true, type: :float, json_name: "confidenceScores"
end

defmodule Google.Ai.Generativelanguage.V1.EmbedContentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :model, 1, type: :string, deprecated: false
  field :content, 2, type: Google.Ai.Generativelanguage.V1.Content, deprecated: false

  field :task_type, 3,
    proto3_optional: true,
    type: Google.Ai.Generativelanguage.V1.TaskType,
    json_name: "taskType",
    enum: true,
    deprecated: false

  field :title, 4, proto3_optional: true, type: :string, deprecated: false

  field :output_dimensionality, 5,
    proto3_optional: true,
    type: :int32,
    json_name: "outputDimensionality",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1.ContentEmbedding do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :values, 1, repeated: true, type: :float
end

defmodule Google.Ai.Generativelanguage.V1.EmbedContentResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :embedding, 1, type: Google.Ai.Generativelanguage.V1.ContentEmbedding, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1.BatchEmbedContentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :model, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1.EmbedContentRequest,
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1.BatchEmbedContentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :embeddings, 1,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1.ContentEmbedding,
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1.CountTokensRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :model, 1, type: :string, deprecated: false

  field :contents, 2,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1.Content,
    deprecated: false

  field :generate_content_request, 3,
    type: Google.Ai.Generativelanguage.V1.GenerateContentRequest,
    json_name: "generateContentRequest",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1.CountTokensResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :total_tokens, 1, type: :int32, json_name: "totalTokens"

  field :prompt_tokens_details, 6,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1.ModalityTokenCount,
    json_name: "promptTokensDetails",
    deprecated: false

  field :cache_tokens_details, 7,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1.ModalityTokenCount,
    json_name: "cacheTokensDetails",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1.GenerativeService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ai.generativelanguage.v1.GenerativeService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GenerateContent,
      Google.Ai.Generativelanguage.V1.GenerateContentRequest,
      Google.Ai.Generativelanguage.V1.GenerateContentResponse

  rpc :StreamGenerateContent,
      Google.Ai.Generativelanguage.V1.GenerateContentRequest,
      stream(Google.Ai.Generativelanguage.V1.GenerateContentResponse)

  rpc :EmbedContent,
      Google.Ai.Generativelanguage.V1.EmbedContentRequest,
      Google.Ai.Generativelanguage.V1.EmbedContentResponse

  rpc :BatchEmbedContents,
      Google.Ai.Generativelanguage.V1.BatchEmbedContentsRequest,
      Google.Ai.Generativelanguage.V1.BatchEmbedContentsResponse

  rpc :CountTokens,
      Google.Ai.Generativelanguage.V1.CountTokensRequest,
      Google.Ai.Generativelanguage.V1.CountTokensResponse
end

defmodule Google.Ai.Generativelanguage.V1.GenerativeService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ai.Generativelanguage.V1.GenerativeService.Service
end
