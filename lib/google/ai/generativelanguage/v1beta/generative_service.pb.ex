defmodule Google.Ai.Generativelanguage.V1beta.TaskType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

defmodule Google.Ai.Generativelanguage.V1beta.GenerationConfig.Modality do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :MODALITY_UNSPECIFIED, 0
  field :TEXT, 1
  field :IMAGE, 2
  field :AUDIO, 3
end

defmodule Google.Ai.Generativelanguage.V1beta.GenerationConfig.MediaResolution do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :MEDIA_RESOLUTION_UNSPECIFIED, 0
  field :MEDIA_RESOLUTION_LOW, 1
  field :MEDIA_RESOLUTION_MEDIUM, 2
  field :MEDIA_RESOLUTION_HIGH, 3
end

defmodule Google.Ai.Generativelanguage.V1beta.GenerateContentResponse.PromptFeedback.BlockReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :BLOCK_REASON_UNSPECIFIED, 0
  field :SAFETY, 1
  field :OTHER, 2
  field :BLOCKLIST, 3
  field :PROHIBITED_CONTENT, 4
  field :IMAGE_SAFETY, 5
end

defmodule Google.Ai.Generativelanguage.V1beta.Candidate.FinishReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

defmodule Google.Ai.Generativelanguage.V1beta.GenerateAnswerRequest.AnswerStyle do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ANSWER_STYLE_UNSPECIFIED, 0
  field :ABSTRACTIVE, 1
  field :EXTRACTIVE, 2
  field :VERBOSE, 3
end

defmodule Google.Ai.Generativelanguage.V1beta.GenerateAnswerResponse.InputFeedback.BlockReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :BLOCK_REASON_UNSPECIFIED, 0
  field :SAFETY, 1
  field :OTHER, 2
end

defmodule Google.Ai.Generativelanguage.V1beta.RealtimeInputConfig.ActivityHandling do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ACTIVITY_HANDLING_UNSPECIFIED, 0
  field :START_OF_ACTIVITY_INTERRUPTS, 1
  field :NO_INTERRUPTION, 2
end

defmodule Google.Ai.Generativelanguage.V1beta.RealtimeInputConfig.TurnCoverage do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :TURN_COVERAGE_UNSPECIFIED, 0
  field :TURN_INCLUDES_ONLY_ACTIVITY, 1
  field :TURN_INCLUDES_ALL_INPUT, 2
end

defmodule Google.Ai.Generativelanguage.V1beta.RealtimeInputConfig.AutomaticActivityDetection.StartSensitivity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :START_SENSITIVITY_UNSPECIFIED, 0
  field :START_SENSITIVITY_HIGH, 1
  field :START_SENSITIVITY_LOW, 2
end

defmodule Google.Ai.Generativelanguage.V1beta.RealtimeInputConfig.AutomaticActivityDetection.EndSensitivity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :END_SENSITIVITY_UNSPECIFIED, 0
  field :END_SENSITIVITY_HIGH, 1
  field :END_SENSITIVITY_LOW, 2
end

defmodule Google.Ai.Generativelanguage.V1beta.GenerateContentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :model, 1, type: :string, deprecated: false

  field :system_instruction, 8,
    proto3_optional: true,
    type: Google.Ai.Generativelanguage.V1beta.Content,
    json_name: "systemInstruction",
    deprecated: false

  field :contents, 2,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.Content,
    deprecated: false

  field :tools, 5,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.Tool,
    deprecated: false

  field :tool_config, 7,
    type: Google.Ai.Generativelanguage.V1beta.ToolConfig,
    json_name: "toolConfig",
    deprecated: false

  field :safety_settings, 3,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.SafetySetting,
    json_name: "safetySettings",
    deprecated: false

  field :generation_config, 4,
    proto3_optional: true,
    type: Google.Ai.Generativelanguage.V1beta.GenerationConfig,
    json_name: "generationConfig",
    deprecated: false

  field :cached_content, 9,
    proto3_optional: true,
    type: :string,
    json_name: "cachedContent",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.PrebuiltVoiceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :voice_name, 1, proto3_optional: true, type: :string, json_name: "voiceName"
end

defmodule Google.Ai.Generativelanguage.V1beta.VoiceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :voice_config, 0

  field :prebuilt_voice_config, 1,
    type: Google.Ai.Generativelanguage.V1beta.PrebuiltVoiceConfig,
    json_name: "prebuiltVoiceConfig",
    oneof: 0
end

defmodule Google.Ai.Generativelanguage.V1beta.SpeechConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :voice_config, 1,
    type: Google.Ai.Generativelanguage.V1beta.VoiceConfig,
    json_name: "voiceConfig"

  field :language_code, 2, type: :string, json_name: "languageCode", deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.ThinkingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :include_thoughts, 1, proto3_optional: true, type: :bool, json_name: "includeThoughts"
  field :thinking_budget, 2, proto3_optional: true, type: :int32, json_name: "thinkingBudget"
end

defmodule Google.Ai.Generativelanguage.V1beta.GenerationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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
  field :response_mime_type, 13, type: :string, json_name: "responseMimeType", deprecated: false

  field :response_schema, 14,
    type: Google.Ai.Generativelanguage.V1beta.Schema,
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
    type: Google.Ai.Generativelanguage.V1beta.GenerationConfig.Modality,
    json_name: "responseModalities",
    enum: true,
    deprecated: false

  field :speech_config, 21,
    proto3_optional: true,
    type: Google.Ai.Generativelanguage.V1beta.SpeechConfig,
    json_name: "speechConfig",
    deprecated: false

  field :thinking_config, 22,
    proto3_optional: true,
    type: Google.Ai.Generativelanguage.V1beta.ThinkingConfig,
    json_name: "thinkingConfig",
    deprecated: false

  field :media_resolution, 23,
    proto3_optional: true,
    type: Google.Ai.Generativelanguage.V1beta.GenerationConfig.MediaResolution,
    json_name: "mediaResolution",
    enum: true,
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.SemanticRetrieverConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :source, 1, type: :string, deprecated: false
  field :query, 2, type: Google.Ai.Generativelanguage.V1beta.Content, deprecated: false

  field :metadata_filters, 3,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.MetadataFilter,
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

defmodule Google.Ai.Generativelanguage.V1beta.GenerateContentResponse.PromptFeedback do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :block_reason, 1,
    type: Google.Ai.Generativelanguage.V1beta.GenerateContentResponse.PromptFeedback.BlockReason,
    json_name: "blockReason",
    enum: true,
    deprecated: false

  field :safety_ratings, 2,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.SafetyRating,
    json_name: "safetyRatings"
end

defmodule Google.Ai.Generativelanguage.V1beta.GenerateContentResponse.UsageMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :prompt_token_count, 1, type: :int32, json_name: "promptTokenCount"
  field :cached_content_token_count, 4, type: :int32, json_name: "cachedContentTokenCount"
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
    type: Google.Ai.Generativelanguage.V1beta.ModalityTokenCount,
    json_name: "promptTokensDetails",
    deprecated: false

  field :cache_tokens_details, 6,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.ModalityTokenCount,
    json_name: "cacheTokensDetails",
    deprecated: false

  field :candidates_tokens_details, 7,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.ModalityTokenCount,
    json_name: "candidatesTokensDetails",
    deprecated: false

  field :tool_use_prompt_tokens_details, 9,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.ModalityTokenCount,
    json_name: "toolUsePromptTokensDetails",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.GenerateContentResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :candidates, 1, repeated: true, type: Google.Ai.Generativelanguage.V1beta.Candidate

  field :prompt_feedback, 2,
    type: Google.Ai.Generativelanguage.V1beta.GenerateContentResponse.PromptFeedback,
    json_name: "promptFeedback"

  field :usage_metadata, 3,
    type: Google.Ai.Generativelanguage.V1beta.GenerateContentResponse.UsageMetadata,
    json_name: "usageMetadata",
    deprecated: false

  field :model_version, 4, type: :string, json_name: "modelVersion", deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.Candidate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :index, 3, proto3_optional: true, type: :int32, deprecated: false
  field :content, 1, type: Google.Ai.Generativelanguage.V1beta.Content, deprecated: false

  field :finish_reason, 2,
    type: Google.Ai.Generativelanguage.V1beta.Candidate.FinishReason,
    json_name: "finishReason",
    enum: true,
    deprecated: false

  field :safety_ratings, 5,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.SafetyRating,
    json_name: "safetyRatings"

  field :citation_metadata, 6,
    type: Google.Ai.Generativelanguage.V1beta.CitationMetadata,
    json_name: "citationMetadata",
    deprecated: false

  field :token_count, 7, type: :int32, json_name: "tokenCount", deprecated: false

  field :grounding_attributions, 8,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.GroundingAttribution,
    json_name: "groundingAttributions",
    deprecated: false

  field :grounding_metadata, 9,
    type: Google.Ai.Generativelanguage.V1beta.GroundingMetadata,
    json_name: "groundingMetadata",
    deprecated: false

  field :avg_logprobs, 10, type: :double, json_name: "avgLogprobs", deprecated: false

  field :logprobs_result, 11,
    type: Google.Ai.Generativelanguage.V1beta.LogprobsResult,
    json_name: "logprobsResult",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.LogprobsResult.Candidate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :token, 1, proto3_optional: true, type: :string
  field :token_id, 3, proto3_optional: true, type: :int32, json_name: "tokenId"
  field :log_probability, 2, proto3_optional: true, type: :float, json_name: "logProbability"
end

defmodule Google.Ai.Generativelanguage.V1beta.LogprobsResult.TopCandidates do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :candidates, 1,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.LogprobsResult.Candidate
end

defmodule Google.Ai.Generativelanguage.V1beta.LogprobsResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :top_candidates, 1,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.LogprobsResult.TopCandidates,
    json_name: "topCandidates"

  field :chosen_candidates, 2,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.LogprobsResult.Candidate,
    json_name: "chosenCandidates"
end

defmodule Google.Ai.Generativelanguage.V1beta.AttributionSourceId.GroundingPassageId do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :passage_id, 1, type: :string, json_name: "passageId", deprecated: false
  field :part_index, 2, type: :int32, json_name: "partIndex", deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.AttributionSourceId.SemanticRetrieverChunk do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :source, 1, type: :string, deprecated: false
  field :chunk, 2, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.AttributionSourceId do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :source, 0

  field :grounding_passage, 1,
    type: Google.Ai.Generativelanguage.V1beta.AttributionSourceId.GroundingPassageId,
    json_name: "groundingPassage",
    oneof: 0

  field :semantic_retriever_chunk, 2,
    type: Google.Ai.Generativelanguage.V1beta.AttributionSourceId.SemanticRetrieverChunk,
    json_name: "semanticRetrieverChunk",
    oneof: 0
end

defmodule Google.Ai.Generativelanguage.V1beta.GroundingAttribution do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :source_id, 3,
    type: Google.Ai.Generativelanguage.V1beta.AttributionSourceId,
    json_name: "sourceId",
    deprecated: false

  field :content, 2, type: Google.Ai.Generativelanguage.V1beta.Content
end

defmodule Google.Ai.Generativelanguage.V1beta.RetrievalMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :google_search_dynamic_retrieval_score, 2,
    type: :float,
    json_name: "googleSearchDynamicRetrievalScore",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.GroundingMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :search_entry_point, 1,
    proto3_optional: true,
    type: Google.Ai.Generativelanguage.V1beta.SearchEntryPoint,
    json_name: "searchEntryPoint",
    deprecated: false

  field :grounding_chunks, 2,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.GroundingChunk,
    json_name: "groundingChunks"

  field :grounding_supports, 3,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.GroundingSupport,
    json_name: "groundingSupports"

  field :retrieval_metadata, 4,
    proto3_optional: true,
    type: Google.Ai.Generativelanguage.V1beta.RetrievalMetadata,
    json_name: "retrievalMetadata"

  field :web_search_queries, 5, repeated: true, type: :string, json_name: "webSearchQueries"
end

defmodule Google.Ai.Generativelanguage.V1beta.SearchEntryPoint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :rendered_content, 1, type: :string, json_name: "renderedContent", deprecated: false
  field :sdk_blob, 2, type: :bytes, json_name: "sdkBlob", deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.GroundingChunk.Web do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :uri, 1, proto3_optional: true, type: :string
  field :title, 2, proto3_optional: true, type: :string
end

defmodule Google.Ai.Generativelanguage.V1beta.GroundingChunk do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :chunk_type, 0

  field :web, 1, type: Google.Ai.Generativelanguage.V1beta.GroundingChunk.Web, oneof: 0
end

defmodule Google.Ai.Generativelanguage.V1beta.Segment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :part_index, 1, type: :int32, json_name: "partIndex", deprecated: false
  field :start_index, 2, type: :int32, json_name: "startIndex", deprecated: false
  field :end_index, 3, type: :int32, json_name: "endIndex", deprecated: false
  field :text, 4, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.GroundingSupport do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :segment, 1, proto3_optional: true, type: Google.Ai.Generativelanguage.V1beta.Segment

  field :grounding_chunk_indices, 2,
    repeated: true,
    type: :int32,
    json_name: "groundingChunkIndices"

  field :confidence_scores, 3, repeated: true, type: :float, json_name: "confidenceScores"
end

defmodule Google.Ai.Generativelanguage.V1beta.GenerateAnswerRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :grounding_source, 0

  field :inline_passages, 6,
    type: Google.Ai.Generativelanguage.V1beta.GroundingPassages,
    json_name: "inlinePassages",
    oneof: 0

  field :semantic_retriever, 7,
    type: Google.Ai.Generativelanguage.V1beta.SemanticRetrieverConfig,
    json_name: "semanticRetriever",
    oneof: 0

  field :model, 1, type: :string, deprecated: false

  field :contents, 2,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.Content,
    deprecated: false

  field :answer_style, 5,
    type: Google.Ai.Generativelanguage.V1beta.GenerateAnswerRequest.AnswerStyle,
    json_name: "answerStyle",
    enum: true,
    deprecated: false

  field :safety_settings, 3,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.SafetySetting,
    json_name: "safetySettings",
    deprecated: false

  field :temperature, 4, proto3_optional: true, type: :float, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.GenerateAnswerResponse.InputFeedback do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :block_reason, 1,
    proto3_optional: true,
    type: Google.Ai.Generativelanguage.V1beta.GenerateAnswerResponse.InputFeedback.BlockReason,
    json_name: "blockReason",
    enum: true,
    deprecated: false

  field :safety_ratings, 2,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.SafetyRating,
    json_name: "safetyRatings"
end

defmodule Google.Ai.Generativelanguage.V1beta.GenerateAnswerResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :answer, 1, type: Google.Ai.Generativelanguage.V1beta.Candidate

  field :answerable_probability, 2,
    proto3_optional: true,
    type: :float,
    json_name: "answerableProbability",
    deprecated: false

  field :input_feedback, 3,
    proto3_optional: true,
    type: Google.Ai.Generativelanguage.V1beta.GenerateAnswerResponse.InputFeedback,
    json_name: "inputFeedback",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.EmbedContentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :model, 1, type: :string, deprecated: false
  field :content, 2, type: Google.Ai.Generativelanguage.V1beta.Content, deprecated: false

  field :task_type, 3,
    proto3_optional: true,
    type: Google.Ai.Generativelanguage.V1beta.TaskType,
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

defmodule Google.Ai.Generativelanguage.V1beta.ContentEmbedding do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :values, 1, repeated: true, type: :float
end

defmodule Google.Ai.Generativelanguage.V1beta.EmbedContentResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :embedding, 1,
    type: Google.Ai.Generativelanguage.V1beta.ContentEmbedding,
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.BatchEmbedContentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :model, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.EmbedContentRequest,
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.BatchEmbedContentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :embeddings, 1,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.ContentEmbedding,
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.CountTokensRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :model, 1, type: :string, deprecated: false

  field :contents, 2,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.Content,
    deprecated: false

  field :generate_content_request, 3,
    type: Google.Ai.Generativelanguage.V1beta.GenerateContentRequest,
    json_name: "generateContentRequest",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.CountTokensResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :total_tokens, 1, type: :int32, json_name: "totalTokens"
  field :cached_content_token_count, 5, type: :int32, json_name: "cachedContentTokenCount"

  field :prompt_tokens_details, 6,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.ModalityTokenCount,
    json_name: "promptTokensDetails",
    deprecated: false

  field :cache_tokens_details, 7,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.ModalityTokenCount,
    json_name: "cacheTokensDetails",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.RealtimeInputConfig.AutomaticActivityDetection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :disabled, 2, proto3_optional: true, type: :bool, deprecated: false

  field :start_of_speech_sensitivity, 3,
    proto3_optional: true,
    type:
      Google.Ai.Generativelanguage.V1beta.RealtimeInputConfig.AutomaticActivityDetection.StartSensitivity,
    json_name: "startOfSpeechSensitivity",
    enum: true,
    deprecated: false

  field :prefix_padding_ms, 4,
    proto3_optional: true,
    type: :int32,
    json_name: "prefixPaddingMs",
    deprecated: false

  field :end_of_speech_sensitivity, 5,
    proto3_optional: true,
    type:
      Google.Ai.Generativelanguage.V1beta.RealtimeInputConfig.AutomaticActivityDetection.EndSensitivity,
    json_name: "endOfSpeechSensitivity",
    enum: true,
    deprecated: false

  field :silence_duration_ms, 6,
    proto3_optional: true,
    type: :int32,
    json_name: "silenceDurationMs",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.RealtimeInputConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :automatic_activity_detection, 1,
    type: Google.Ai.Generativelanguage.V1beta.RealtimeInputConfig.AutomaticActivityDetection,
    json_name: "automaticActivityDetection",
    deprecated: false

  field :activity_handling, 3,
    proto3_optional: true,
    type: Google.Ai.Generativelanguage.V1beta.RealtimeInputConfig.ActivityHandling,
    json_name: "activityHandling",
    enum: true,
    deprecated: false

  field :turn_coverage, 4,
    proto3_optional: true,
    type: Google.Ai.Generativelanguage.V1beta.RealtimeInputConfig.TurnCoverage,
    json_name: "turnCoverage",
    enum: true,
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.SessionResumptionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :handle, 1, proto3_optional: true, type: :string
end

defmodule Google.Ai.Generativelanguage.V1beta.ContextWindowCompressionConfig.SlidingWindow do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :target_tokens, 1, proto3_optional: true, type: :int64, json_name: "targetTokens"
end

defmodule Google.Ai.Generativelanguage.V1beta.ContextWindowCompressionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :compression_mechanism, 0

  field :sliding_window, 2,
    type: Google.Ai.Generativelanguage.V1beta.ContextWindowCompressionConfig.SlidingWindow,
    json_name: "slidingWindow",
    oneof: 0

  field :trigger_tokens, 1, proto3_optional: true, type: :int64, json_name: "triggerTokens"
end

defmodule Google.Ai.Generativelanguage.V1beta.AudioTranscriptionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Ai.Generativelanguage.V1beta.BidiGenerateContentSetup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :model, 1, type: :string, deprecated: false

  field :generation_config, 2,
    type: Google.Ai.Generativelanguage.V1beta.GenerationConfig,
    json_name: "generationConfig",
    deprecated: false

  field :system_instruction, 3,
    type: Google.Ai.Generativelanguage.V1beta.Content,
    json_name: "systemInstruction",
    deprecated: false

  field :tools, 4,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.Tool,
    deprecated: false

  field :realtime_input_config, 6,
    type: Google.Ai.Generativelanguage.V1beta.RealtimeInputConfig,
    json_name: "realtimeInputConfig",
    deprecated: false

  field :session_resumption, 7,
    type: Google.Ai.Generativelanguage.V1beta.SessionResumptionConfig,
    json_name: "sessionResumption",
    deprecated: false

  field :context_window_compression, 8,
    type: Google.Ai.Generativelanguage.V1beta.ContextWindowCompressionConfig,
    json_name: "contextWindowCompression",
    deprecated: false

  field :output_audio_transcription, 11,
    type: Google.Ai.Generativelanguage.V1beta.AudioTranscriptionConfig,
    json_name: "outputAudioTranscription",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.BidiGenerateContentClientContent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :turns, 1,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.Content,
    deprecated: false

  field :turn_complete, 2, type: :bool, json_name: "turnComplete", deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.BidiGenerateContentRealtimeInput.ActivityStart do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Ai.Generativelanguage.V1beta.BidiGenerateContentRealtimeInput.ActivityEnd do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Ai.Generativelanguage.V1beta.BidiGenerateContentRealtimeInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :media_chunks, 1,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.Blob,
    json_name: "mediaChunks",
    deprecated: false

  field :audio, 2, type: Google.Ai.Generativelanguage.V1beta.Blob, deprecated: false

  field :audio_stream_end, 3,
    proto3_optional: true,
    type: :bool,
    json_name: "audioStreamEnd",
    deprecated: false

  field :video, 4, type: Google.Ai.Generativelanguage.V1beta.Blob, deprecated: false
  field :text, 5, proto3_optional: true, type: :string, deprecated: false

  field :activity_start, 6,
    type: Google.Ai.Generativelanguage.V1beta.BidiGenerateContentRealtimeInput.ActivityStart,
    json_name: "activityStart",
    deprecated: false

  field :activity_end, 7,
    type: Google.Ai.Generativelanguage.V1beta.BidiGenerateContentRealtimeInput.ActivityEnd,
    json_name: "activityEnd",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.BidiGenerateContentToolResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :function_responses, 1,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.FunctionResponse,
    json_name: "functionResponses",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.BidiGenerateContentClientMessage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :message_type, 0

  field :setup, 1,
    type: Google.Ai.Generativelanguage.V1beta.BidiGenerateContentSetup,
    oneof: 0,
    deprecated: false

  field :client_content, 2,
    type: Google.Ai.Generativelanguage.V1beta.BidiGenerateContentClientContent,
    json_name: "clientContent",
    oneof: 0,
    deprecated: false

  field :realtime_input, 3,
    type: Google.Ai.Generativelanguage.V1beta.BidiGenerateContentRealtimeInput,
    json_name: "realtimeInput",
    oneof: 0,
    deprecated: false

  field :tool_response, 4,
    type: Google.Ai.Generativelanguage.V1beta.BidiGenerateContentToolResponse,
    json_name: "toolResponse",
    oneof: 0,
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.BidiGenerateContentSetupComplete do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Ai.Generativelanguage.V1beta.BidiGenerateContentServerContent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :model_turn, 1,
    proto3_optional: true,
    type: Google.Ai.Generativelanguage.V1beta.Content,
    json_name: "modelTurn",
    deprecated: false

  field :generation_complete, 5, type: :bool, json_name: "generationComplete", deprecated: false
  field :turn_complete, 2, type: :bool, json_name: "turnComplete", deprecated: false
  field :interrupted, 3, type: :bool, deprecated: false

  field :grounding_metadata, 4,
    type: Google.Ai.Generativelanguage.V1beta.GroundingMetadata,
    json_name: "groundingMetadata",
    deprecated: false

  field :output_transcription, 7,
    type: Google.Ai.Generativelanguage.V1beta.BidiGenerateContentTranscription,
    json_name: "outputTranscription",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.BidiGenerateContentToolCall do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :function_calls, 2,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.FunctionCall,
    json_name: "functionCalls",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.BidiGenerateContentToolCallCancellation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ids, 1, repeated: true, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.GoAway do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :time_left, 1, type: Google.Protobuf.Duration, json_name: "timeLeft"
end

defmodule Google.Ai.Generativelanguage.V1beta.SessionResumptionUpdate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :new_handle, 1, type: :string, json_name: "newHandle"
  field :resumable, 2, type: :bool
end

defmodule Google.Ai.Generativelanguage.V1beta.BidiGenerateContentTranscription do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :text, 1, type: :string
end

defmodule Google.Ai.Generativelanguage.V1beta.BidiGenerateContentServerMessage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :message_type, 0

  field :setup_complete, 2,
    type: Google.Ai.Generativelanguage.V1beta.BidiGenerateContentSetupComplete,
    json_name: "setupComplete",
    oneof: 0,
    deprecated: false

  field :server_content, 3,
    type: Google.Ai.Generativelanguage.V1beta.BidiGenerateContentServerContent,
    json_name: "serverContent",
    oneof: 0,
    deprecated: false

  field :tool_call, 4,
    type: Google.Ai.Generativelanguage.V1beta.BidiGenerateContentToolCall,
    json_name: "toolCall",
    oneof: 0,
    deprecated: false

  field :tool_call_cancellation, 5,
    type: Google.Ai.Generativelanguage.V1beta.BidiGenerateContentToolCallCancellation,
    json_name: "toolCallCancellation",
    oneof: 0,
    deprecated: false

  field :go_away, 6,
    type: Google.Ai.Generativelanguage.V1beta.GoAway,
    json_name: "goAway",
    oneof: 0,
    deprecated: false

  field :session_resumption_update, 7,
    type: Google.Ai.Generativelanguage.V1beta.SessionResumptionUpdate,
    json_name: "sessionResumptionUpdate",
    oneof: 0,
    deprecated: false

  field :usage_metadata, 10,
    type: Google.Ai.Generativelanguage.V1beta.UsageMetadata,
    json_name: "usageMetadata",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.UsageMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :prompt_token_count, 1, type: :int32, json_name: "promptTokenCount", deprecated: false
  field :cached_content_token_count, 4, type: :int32, json_name: "cachedContentTokenCount"
  field :response_token_count, 2, type: :int32, json_name: "responseTokenCount", deprecated: false

  field :tool_use_prompt_token_count, 8,
    type: :int32,
    json_name: "toolUsePromptTokenCount",
    deprecated: false

  field :thoughts_token_count, 10,
    type: :int32,
    json_name: "thoughtsTokenCount",
    deprecated: false

  field :total_token_count, 3, type: :int32, json_name: "totalTokenCount", deprecated: false

  field :prompt_tokens_details, 5,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.ModalityTokenCount,
    json_name: "promptTokensDetails",
    deprecated: false

  field :cache_tokens_details, 6,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.ModalityTokenCount,
    json_name: "cacheTokensDetails",
    deprecated: false

  field :response_tokens_details, 7,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.ModalityTokenCount,
    json_name: "responseTokensDetails",
    deprecated: false

  field :tool_use_prompt_tokens_details, 9,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.ModalityTokenCount,
    json_name: "toolUsePromptTokensDetails",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.GenerativeService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ai.generativelanguage.v1beta.GenerativeService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :GenerateContent,
      Google.Ai.Generativelanguage.V1beta.GenerateContentRequest,
      Google.Ai.Generativelanguage.V1beta.GenerateContentResponse

  rpc :GenerateAnswer,
      Google.Ai.Generativelanguage.V1beta.GenerateAnswerRequest,
      Google.Ai.Generativelanguage.V1beta.GenerateAnswerResponse

  rpc :StreamGenerateContent,
      Google.Ai.Generativelanguage.V1beta.GenerateContentRequest,
      stream(Google.Ai.Generativelanguage.V1beta.GenerateContentResponse)

  rpc :EmbedContent,
      Google.Ai.Generativelanguage.V1beta.EmbedContentRequest,
      Google.Ai.Generativelanguage.V1beta.EmbedContentResponse

  rpc :BatchEmbedContents,
      Google.Ai.Generativelanguage.V1beta.BatchEmbedContentsRequest,
      Google.Ai.Generativelanguage.V1beta.BatchEmbedContentsResponse

  rpc :CountTokens,
      Google.Ai.Generativelanguage.V1beta.CountTokensRequest,
      Google.Ai.Generativelanguage.V1beta.CountTokensResponse

  rpc :BidiGenerateContent,
      stream(Google.Ai.Generativelanguage.V1beta.BidiGenerateContentClientMessage),
      stream(Google.Ai.Generativelanguage.V1beta.BidiGenerateContentServerMessage)
end

defmodule Google.Ai.Generativelanguage.V1beta.GenerativeService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ai.Generativelanguage.V1beta.GenerativeService.Service
end
