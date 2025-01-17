defmodule Google.Ai.Generativelanguage.V1alpha.TaskType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :TASK_TYPE_UNSPECIFIED, 0
  field :RETRIEVAL_QUERY, 1
  field :RETRIEVAL_DOCUMENT, 2
  field :SEMANTIC_SIMILARITY, 3
  field :CLASSIFICATION, 4
  field :CLUSTERING, 5
  field :QUESTION_ANSWERING, 6
  field :FACT_VERIFICATION, 7
end

defmodule Google.Ai.Generativelanguage.V1alpha.GenerationConfig.Modality do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :MODALITY_UNSPECIFIED, 0
  field :TEXT, 1
  field :IMAGE, 2
  field :AUDIO, 3
end

defmodule Google.Ai.Generativelanguage.V1alpha.GenerateContentResponse.PromptFeedback.BlockReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :BLOCK_REASON_UNSPECIFIED, 0
  field :SAFETY, 1
  field :OTHER, 2
  field :BLOCKLIST, 3
  field :PROHIBITED_CONTENT, 4
  field :IMAGE_SAFETY, 5
end

defmodule Google.Ai.Generativelanguage.V1alpha.Candidate.FinishReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

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
end

defmodule Google.Ai.Generativelanguage.V1alpha.GenerateAnswerRequest.AnswerStyle do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :ANSWER_STYLE_UNSPECIFIED, 0
  field :ABSTRACTIVE, 1
  field :EXTRACTIVE, 2
  field :VERBOSE, 3
end

defmodule Google.Ai.Generativelanguage.V1alpha.GenerateAnswerResponse.InputFeedback.BlockReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :BLOCK_REASON_UNSPECIFIED, 0
  field :SAFETY, 1
  field :OTHER, 2
end

defmodule Google.Ai.Generativelanguage.V1alpha.GenerateContentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :model, 1, type: :string, deprecated: false

  field :system_instruction, 8,
    proto3_optional: true,
    type: Google.Ai.Generativelanguage.V1alpha.Content,
    json_name: "systemInstruction",
    deprecated: false

  field :contents, 2,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1alpha.Content,
    deprecated: false

  field :tools, 5,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1alpha.Tool,
    deprecated: false

  field :tool_config, 7,
    type: Google.Ai.Generativelanguage.V1alpha.ToolConfig,
    json_name: "toolConfig",
    deprecated: false

  field :safety_settings, 3,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1alpha.SafetySetting,
    json_name: "safetySettings",
    deprecated: false

  field :generation_config, 4,
    proto3_optional: true,
    type: Google.Ai.Generativelanguage.V1alpha.GenerationConfig,
    json_name: "generationConfig",
    deprecated: false

  field :cached_content, 9,
    proto3_optional: true,
    type: :string,
    json_name: "cachedContent",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.PrebuiltVoiceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :voice_name, 1, proto3_optional: true, type: :string, json_name: "voiceName"
end

defmodule Google.Ai.Generativelanguage.V1alpha.VoiceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :voice_config, 0

  field :prebuilt_voice_config, 1,
    type: Google.Ai.Generativelanguage.V1alpha.PrebuiltVoiceConfig,
    json_name: "prebuiltVoiceConfig",
    oneof: 0
end

defmodule Google.Ai.Generativelanguage.V1alpha.SpeechConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :voice_config, 1,
    type: Google.Ai.Generativelanguage.V1alpha.VoiceConfig,
    json_name: "voiceConfig"
end

defmodule Google.Ai.Generativelanguage.V1alpha.GenerationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

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
  field :response_mime_type, 13, type: :string, json_name: "responseMimeType", deprecated: false

  field :response_schema, 14,
    type: Google.Ai.Generativelanguage.V1alpha.Schema,
    json_name: "responseSchema",
    deprecated: false

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

  field :response_modalities, 20,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1alpha.GenerationConfig.Modality,
    json_name: "responseModalities",
    enum: true,
    deprecated: false

  field :speech_config, 21,
    proto3_optional: true,
    type: Google.Ai.Generativelanguage.V1alpha.SpeechConfig,
    json_name: "speechConfig",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.SemanticRetrieverConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :source, 1, type: :string, deprecated: false
  field :query, 2, type: Google.Ai.Generativelanguage.V1alpha.Content, deprecated: false

  field :metadata_filters, 3,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1alpha.MetadataFilter,
    json_name: "metadataFilters",
    deprecated: false

  field :max_chunks_count, 4,
    proto3_optional: true,
    type: :int32,
    json_name: "maxChunksCount",
    deprecated: false

  field :minimum_relevance_score, 5,
    proto3_optional: true,
    type: :float,
    json_name: "minimumRelevanceScore",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.GenerateContentResponse.PromptFeedback do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :block_reason, 1,
    type: Google.Ai.Generativelanguage.V1alpha.GenerateContentResponse.PromptFeedback.BlockReason,
    json_name: "blockReason",
    enum: true,
    deprecated: false

  field :safety_ratings, 2,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1alpha.SafetyRating,
    json_name: "safetyRatings"
end

defmodule Google.Ai.Generativelanguage.V1alpha.GenerateContentResponse.UsageMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :prompt_token_count, 1, type: :int32, json_name: "promptTokenCount"
  field :cached_content_token_count, 4, type: :int32, json_name: "cachedContentTokenCount"
  field :candidates_token_count, 2, type: :int32, json_name: "candidatesTokenCount"
  field :total_token_count, 3, type: :int32, json_name: "totalTokenCount"
end

defmodule Google.Ai.Generativelanguage.V1alpha.GenerateContentResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :candidates, 1, repeated: true, type: Google.Ai.Generativelanguage.V1alpha.Candidate

  field :prompt_feedback, 2,
    type: Google.Ai.Generativelanguage.V1alpha.GenerateContentResponse.PromptFeedback,
    json_name: "promptFeedback"

  field :usage_metadata, 3,
    type: Google.Ai.Generativelanguage.V1alpha.GenerateContentResponse.UsageMetadata,
    json_name: "usageMetadata",
    deprecated: false

  field :model_version, 4, type: :string, json_name: "modelVersion", deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.Candidate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :index, 3, proto3_optional: true, type: :int32, deprecated: false
  field :content, 1, type: Google.Ai.Generativelanguage.V1alpha.Content, deprecated: false

  field :finish_reason, 2,
    type: Google.Ai.Generativelanguage.V1alpha.Candidate.FinishReason,
    json_name: "finishReason",
    enum: true,
    deprecated: false

  field :safety_ratings, 5,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1alpha.SafetyRating,
    json_name: "safetyRatings"

  field :citation_metadata, 6,
    type: Google.Ai.Generativelanguage.V1alpha.CitationMetadata,
    json_name: "citationMetadata",
    deprecated: false

  field :token_count, 7, type: :int32, json_name: "tokenCount", deprecated: false

  field :grounding_attributions, 8,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1alpha.GroundingAttribution,
    json_name: "groundingAttributions",
    deprecated: false

  field :grounding_metadata, 9,
    type: Google.Ai.Generativelanguage.V1alpha.GroundingMetadata,
    json_name: "groundingMetadata",
    deprecated: false

  field :avg_logprobs, 10, type: :double, json_name: "avgLogprobs", deprecated: false

  field :logprobs_result, 11,
    type: Google.Ai.Generativelanguage.V1alpha.LogprobsResult,
    json_name: "logprobsResult",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.LogprobsResult.Candidate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :token, 1, proto3_optional: true, type: :string
  field :token_id, 3, proto3_optional: true, type: :int32, json_name: "tokenId"
  field :log_probability, 2, proto3_optional: true, type: :float, json_name: "logProbability"
end

defmodule Google.Ai.Generativelanguage.V1alpha.LogprobsResult.TopCandidates do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :candidates, 1,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1alpha.LogprobsResult.Candidate
end

defmodule Google.Ai.Generativelanguage.V1alpha.LogprobsResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :top_candidates, 1,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1alpha.LogprobsResult.TopCandidates,
    json_name: "topCandidates"

  field :chosen_candidates, 2,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1alpha.LogprobsResult.Candidate,
    json_name: "chosenCandidates"
end

defmodule Google.Ai.Generativelanguage.V1alpha.AttributionSourceId.GroundingPassageId do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :passage_id, 1, type: :string, json_name: "passageId", deprecated: false
  field :part_index, 2, type: :int32, json_name: "partIndex", deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.AttributionSourceId.SemanticRetrieverChunk do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :source, 1, type: :string, deprecated: false
  field :chunk, 2, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.AttributionSourceId do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :source, 0

  field :grounding_passage, 1,
    type: Google.Ai.Generativelanguage.V1alpha.AttributionSourceId.GroundingPassageId,
    json_name: "groundingPassage",
    oneof: 0

  field :semantic_retriever_chunk, 2,
    type: Google.Ai.Generativelanguage.V1alpha.AttributionSourceId.SemanticRetrieverChunk,
    json_name: "semanticRetrieverChunk",
    oneof: 0
end

defmodule Google.Ai.Generativelanguage.V1alpha.GroundingAttribution do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :source_id, 3,
    type: Google.Ai.Generativelanguage.V1alpha.AttributionSourceId,
    json_name: "sourceId",
    deprecated: false

  field :content, 2, type: Google.Ai.Generativelanguage.V1alpha.Content
end

defmodule Google.Ai.Generativelanguage.V1alpha.RetrievalMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :google_search_dynamic_retrieval_score, 2,
    type: :float,
    json_name: "googleSearchDynamicRetrievalScore",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.GroundingMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :search_entry_point, 1,
    proto3_optional: true,
    type: Google.Ai.Generativelanguage.V1alpha.SearchEntryPoint,
    json_name: "searchEntryPoint",
    deprecated: false

  field :grounding_chunks, 2,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1alpha.GroundingChunk,
    json_name: "groundingChunks"

  field :grounding_supports, 3,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1alpha.GroundingSupport,
    json_name: "groundingSupports"

  field :retrieval_metadata, 4,
    proto3_optional: true,
    type: Google.Ai.Generativelanguage.V1alpha.RetrievalMetadata,
    json_name: "retrievalMetadata"

  field :web_search_queries, 5, repeated: true, type: :string, json_name: "webSearchQueries"
end

defmodule Google.Ai.Generativelanguage.V1alpha.SearchEntryPoint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :rendered_content, 1, type: :string, json_name: "renderedContent", deprecated: false
  field :sdk_blob, 2, type: :bytes, json_name: "sdkBlob", deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.GroundingChunk.Web do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :uri, 1, proto3_optional: true, type: :string
  field :title, 2, proto3_optional: true, type: :string
end

defmodule Google.Ai.Generativelanguage.V1alpha.GroundingChunk do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :chunk_type, 0

  field :web, 1, type: Google.Ai.Generativelanguage.V1alpha.GroundingChunk.Web, oneof: 0
end

defmodule Google.Ai.Generativelanguage.V1alpha.Segment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :part_index, 1, type: :int32, json_name: "partIndex", deprecated: false
  field :start_index, 2, type: :int32, json_name: "startIndex", deprecated: false
  field :end_index, 3, type: :int32, json_name: "endIndex", deprecated: false
  field :text, 4, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.GroundingSupport do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :segment, 1, proto3_optional: true, type: Google.Ai.Generativelanguage.V1alpha.Segment

  field :grounding_chunk_indices, 2,
    repeated: true,
    type: :int32,
    json_name: "groundingChunkIndices"

  field :confidence_scores, 3, repeated: true, type: :float, json_name: "confidenceScores"
end

defmodule Google.Ai.Generativelanguage.V1alpha.GenerateAnswerRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :grounding_source, 0

  field :inline_passages, 6,
    type: Google.Ai.Generativelanguage.V1alpha.GroundingPassages,
    json_name: "inlinePassages",
    oneof: 0

  field :semantic_retriever, 7,
    type: Google.Ai.Generativelanguage.V1alpha.SemanticRetrieverConfig,
    json_name: "semanticRetriever",
    oneof: 0

  field :model, 1, type: :string, deprecated: false

  field :contents, 2,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1alpha.Content,
    deprecated: false

  field :answer_style, 5,
    type: Google.Ai.Generativelanguage.V1alpha.GenerateAnswerRequest.AnswerStyle,
    json_name: "answerStyle",
    enum: true,
    deprecated: false

  field :safety_settings, 3,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1alpha.SafetySetting,
    json_name: "safetySettings",
    deprecated: false

  field :temperature, 4, proto3_optional: true, type: :float, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.GenerateAnswerResponse.InputFeedback do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :block_reason, 1,
    proto3_optional: true,
    type: Google.Ai.Generativelanguage.V1alpha.GenerateAnswerResponse.InputFeedback.BlockReason,
    json_name: "blockReason",
    enum: true,
    deprecated: false

  field :safety_ratings, 2,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1alpha.SafetyRating,
    json_name: "safetyRatings"
end

defmodule Google.Ai.Generativelanguage.V1alpha.GenerateAnswerResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :answer, 1, type: Google.Ai.Generativelanguage.V1alpha.Candidate

  field :answerable_probability, 2,
    proto3_optional: true,
    type: :float,
    json_name: "answerableProbability",
    deprecated: false

  field :input_feedback, 3,
    proto3_optional: true,
    type: Google.Ai.Generativelanguage.V1alpha.GenerateAnswerResponse.InputFeedback,
    json_name: "inputFeedback",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.EmbedContentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :model, 1, type: :string, deprecated: false
  field :content, 2, type: Google.Ai.Generativelanguage.V1alpha.Content, deprecated: false

  field :task_type, 3,
    proto3_optional: true,
    type: Google.Ai.Generativelanguage.V1alpha.TaskType,
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

defmodule Google.Ai.Generativelanguage.V1alpha.ContentEmbedding do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :values, 1, repeated: true, type: :float
end

defmodule Google.Ai.Generativelanguage.V1alpha.EmbedContentResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :embedding, 1,
    type: Google.Ai.Generativelanguage.V1alpha.ContentEmbedding,
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.BatchEmbedContentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :model, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1alpha.EmbedContentRequest,
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.BatchEmbedContentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :embeddings, 1,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1alpha.ContentEmbedding,
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.CountTokensRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :model, 1, type: :string, deprecated: false

  field :contents, 2,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1alpha.Content,
    deprecated: false

  field :generate_content_request, 3,
    type: Google.Ai.Generativelanguage.V1alpha.GenerateContentRequest,
    json_name: "generateContentRequest",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.CountTokensResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :total_tokens, 1, type: :int32, json_name: "totalTokens"
  field :cached_content_token_count, 5, type: :int32, json_name: "cachedContentTokenCount"
end

defmodule Google.Ai.Generativelanguage.V1alpha.BidiGenerateContentSetup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :model, 1, type: :string, deprecated: false

  field :generation_config, 2,
    type: Google.Ai.Generativelanguage.V1alpha.GenerationConfig,
    json_name: "generationConfig",
    deprecated: false

  field :system_instruction, 3,
    type: Google.Ai.Generativelanguage.V1alpha.Content,
    json_name: "systemInstruction",
    deprecated: false

  field :tools, 4,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1alpha.Tool,
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.BidiGenerateContentClientContent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :turns, 1,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1alpha.Content,
    deprecated: false

  field :turn_complete, 2, type: :bool, json_name: "turnComplete", deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.BidiGenerateContentRealtimeInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :media_chunks, 1,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1alpha.Blob,
    json_name: "mediaChunks",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.BidiGenerateContentToolResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :function_responses, 1,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1alpha.FunctionResponse,
    json_name: "functionResponses",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.BidiGenerateContentClientMessage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :message_type, 0

  field :setup, 1,
    type: Google.Ai.Generativelanguage.V1alpha.BidiGenerateContentSetup,
    oneof: 0,
    deprecated: false

  field :client_content, 2,
    type: Google.Ai.Generativelanguage.V1alpha.BidiGenerateContentClientContent,
    json_name: "clientContent",
    oneof: 0,
    deprecated: false

  field :realtime_input, 3,
    type: Google.Ai.Generativelanguage.V1alpha.BidiGenerateContentRealtimeInput,
    json_name: "realtimeInput",
    oneof: 0,
    deprecated: false

  field :tool_response, 4,
    type: Google.Ai.Generativelanguage.V1alpha.BidiGenerateContentToolResponse,
    json_name: "toolResponse",
    oneof: 0,
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.BidiGenerateContentSetupComplete do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Ai.Generativelanguage.V1alpha.BidiGenerateContentServerContent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :model_turn, 1,
    proto3_optional: true,
    type: Google.Ai.Generativelanguage.V1alpha.Content,
    json_name: "modelTurn",
    deprecated: false

  field :turn_complete, 2, type: :bool, json_name: "turnComplete", deprecated: false
  field :interrupted, 3, type: :bool, deprecated: false

  field :grounding_metadata, 4,
    type: Google.Ai.Generativelanguage.V1alpha.GroundingMetadata,
    json_name: "groundingMetadata",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.BidiGenerateContentToolCall do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :function_calls, 2,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1alpha.FunctionCall,
    json_name: "functionCalls",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.BidiGenerateContentToolCallCancellation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :ids, 1, repeated: true, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.BidiGenerateContentServerMessage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :message_type, 0

  field :setup_complete, 2,
    type: Google.Ai.Generativelanguage.V1alpha.BidiGenerateContentSetupComplete,
    json_name: "setupComplete",
    oneof: 0,
    deprecated: false

  field :server_content, 3,
    type: Google.Ai.Generativelanguage.V1alpha.BidiGenerateContentServerContent,
    json_name: "serverContent",
    oneof: 0,
    deprecated: false

  field :tool_call, 4,
    type: Google.Ai.Generativelanguage.V1alpha.BidiGenerateContentToolCall,
    json_name: "toolCall",
    oneof: 0,
    deprecated: false

  field :tool_call_cancellation, 5,
    type: Google.Ai.Generativelanguage.V1alpha.BidiGenerateContentToolCallCancellation,
    json_name: "toolCallCancellation",
    oneof: 0,
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.GenerativeService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ai.generativelanguage.v1alpha.GenerativeService",
    protoc_gen_elixir_version: "0.14.0"

  rpc :GenerateContent,
      Google.Ai.Generativelanguage.V1alpha.GenerateContentRequest,
      Google.Ai.Generativelanguage.V1alpha.GenerateContentResponse

  rpc :GenerateAnswer,
      Google.Ai.Generativelanguage.V1alpha.GenerateAnswerRequest,
      Google.Ai.Generativelanguage.V1alpha.GenerateAnswerResponse

  rpc :StreamGenerateContent,
      Google.Ai.Generativelanguage.V1alpha.GenerateContentRequest,
      stream(Google.Ai.Generativelanguage.V1alpha.GenerateContentResponse)

  rpc :EmbedContent,
      Google.Ai.Generativelanguage.V1alpha.EmbedContentRequest,
      Google.Ai.Generativelanguage.V1alpha.EmbedContentResponse

  rpc :BatchEmbedContents,
      Google.Ai.Generativelanguage.V1alpha.BatchEmbedContentsRequest,
      Google.Ai.Generativelanguage.V1alpha.BatchEmbedContentsResponse

  rpc :CountTokens,
      Google.Ai.Generativelanguage.V1alpha.CountTokensRequest,
      Google.Ai.Generativelanguage.V1alpha.CountTokensResponse

  rpc :BidiGenerateContent,
      stream(Google.Ai.Generativelanguage.V1alpha.BidiGenerateContentClientMessage),
      stream(Google.Ai.Generativelanguage.V1alpha.BidiGenerateContentServerMessage)
end

defmodule Google.Ai.Generativelanguage.V1alpha.GenerativeService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ai.Generativelanguage.V1alpha.GenerativeService.Service
end
