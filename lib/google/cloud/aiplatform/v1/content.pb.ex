defmodule Google.Cloud.Aiplatform.V1.HarmCategory do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :HARM_CATEGORY_UNSPECIFIED, 0
  field :HARM_CATEGORY_HATE_SPEECH, 1
  field :HARM_CATEGORY_DANGEROUS_CONTENT, 2
  field :HARM_CATEGORY_HARASSMENT, 3
  field :HARM_CATEGORY_SEXUALLY_EXPLICIT, 4
  field :HARM_CATEGORY_CIVIC_INTEGRITY, 5
end

defmodule Google.Cloud.Aiplatform.V1.Modality do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :MODALITY_UNSPECIFIED, 0
  field :TEXT, 1
  field :IMAGE, 2
  field :VIDEO, 3
  field :AUDIO, 4
  field :DOCUMENT, 5
end

defmodule Google.Cloud.Aiplatform.V1.GenerationConfig.RoutingConfig.AutoRoutingMode.ModelRoutingPreference do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNKNOWN, 0
  field :PRIORITIZE_QUALITY, 1
  field :BALANCED, 2
  field :PRIORITIZE_COST, 3
end

defmodule Google.Cloud.Aiplatform.V1.SafetySetting.HarmBlockThreshold do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :HARM_BLOCK_THRESHOLD_UNSPECIFIED, 0
  field :BLOCK_LOW_AND_ABOVE, 1
  field :BLOCK_MEDIUM_AND_ABOVE, 2
  field :BLOCK_ONLY_HIGH, 3
  field :BLOCK_NONE, 4
  field :OFF, 5
end

defmodule Google.Cloud.Aiplatform.V1.SafetySetting.HarmBlockMethod do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :HARM_BLOCK_METHOD_UNSPECIFIED, 0
  field :SEVERITY, 1
  field :PROBABILITY, 2
end

defmodule Google.Cloud.Aiplatform.V1.SafetyRating.HarmProbability do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :HARM_PROBABILITY_UNSPECIFIED, 0
  field :NEGLIGIBLE, 1
  field :LOW, 2
  field :MEDIUM, 3
  field :HIGH, 4
end

defmodule Google.Cloud.Aiplatform.V1.SafetyRating.HarmSeverity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :HARM_SEVERITY_UNSPECIFIED, 0
  field :HARM_SEVERITY_NEGLIGIBLE, 1
  field :HARM_SEVERITY_LOW, 2
  field :HARM_SEVERITY_MEDIUM, 3
  field :HARM_SEVERITY_HIGH, 4
end

defmodule Google.Cloud.Aiplatform.V1.Candidate.FinishReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :FINISH_REASON_UNSPECIFIED, 0
  field :STOP, 1
  field :MAX_TOKENS, 2
  field :SAFETY, 3
  field :RECITATION, 4
  field :OTHER, 5
  field :BLOCKLIST, 6
  field :PROHIBITED_CONTENT, 7
  field :SPII, 8
  field :MALFORMED_FUNCTION_CALL, 9
end

defmodule Google.Cloud.Aiplatform.V1.UrlMetadata.UrlRetrievalStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :URL_RETRIEVAL_STATUS_UNSPECIFIED, 0
  field :URL_RETRIEVAL_STATUS_SUCCESS, 1
  field :URL_RETRIEVAL_STATUS_ERROR, 2
end

defmodule Google.Cloud.Aiplatform.V1.Content do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :role, 1, type: :string, deprecated: false
  field :parts, 2, repeated: true, type: Google.Cloud.Aiplatform.V1.Part, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.Part do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :data, 0

  oneof :metadata, 1

  field :text, 1, type: :string, oneof: 0, deprecated: false

  field :inline_data, 2,
    type: Google.Cloud.Aiplatform.V1.Blob,
    json_name: "inlineData",
    oneof: 0,
    deprecated: false

  field :file_data, 3,
    type: Google.Cloud.Aiplatform.V1.FileData,
    json_name: "fileData",
    oneof: 0,
    deprecated: false

  field :function_call, 5,
    type: Google.Cloud.Aiplatform.V1.FunctionCall,
    json_name: "functionCall",
    oneof: 0,
    deprecated: false

  field :function_response, 6,
    type: Google.Cloud.Aiplatform.V1.FunctionResponse,
    json_name: "functionResponse",
    oneof: 0,
    deprecated: false

  field :executable_code, 8,
    type: Google.Cloud.Aiplatform.V1.ExecutableCode,
    json_name: "executableCode",
    oneof: 0,
    deprecated: false

  field :code_execution_result, 9,
    type: Google.Cloud.Aiplatform.V1.CodeExecutionResult,
    json_name: "codeExecutionResult",
    oneof: 0,
    deprecated: false

  field :thought, 10, type: :bool, oneof: 0, deprecated: false

  field :thought_signature, 11,
    type: :bytes,
    json_name: "thoughtSignature",
    oneof: 0,
    deprecated: false

  field :video_metadata, 4,
    type: Google.Cloud.Aiplatform.V1.VideoMetadata,
    json_name: "videoMetadata",
    oneof: 1,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.Blob do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :mime_type, 1, type: :string, json_name: "mimeType", deprecated: false
  field :data, 2, type: :bytes, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.FileData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :mime_type, 1, type: :string, json_name: "mimeType", deprecated: false
  field :file_uri, 2, type: :string, json_name: "fileUri", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.VideoMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :start_offset, 1,
    type: Google.Protobuf.Duration,
    json_name: "startOffset",
    deprecated: false

  field :end_offset, 2, type: Google.Protobuf.Duration, json_name: "endOffset", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.GenerationConfig.RoutingConfig.AutoRoutingMode do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :model_routing_preference, 1,
    proto3_optional: true,
    type:
      Google.Cloud.Aiplatform.V1.GenerationConfig.RoutingConfig.AutoRoutingMode.ModelRoutingPreference,
    json_name: "modelRoutingPreference",
    enum: true
end

defmodule Google.Cloud.Aiplatform.V1.GenerationConfig.RoutingConfig.ManualRoutingMode do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :model_name, 1, proto3_optional: true, type: :string, json_name: "modelName"
end

defmodule Google.Cloud.Aiplatform.V1.GenerationConfig.RoutingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :routing_config, 0

  field :auto_mode, 1,
    type: Google.Cloud.Aiplatform.V1.GenerationConfig.RoutingConfig.AutoRoutingMode,
    json_name: "autoMode",
    oneof: 0

  field :manual_mode, 2,
    type: Google.Cloud.Aiplatform.V1.GenerationConfig.RoutingConfig.ManualRoutingMode,
    json_name: "manualMode",
    oneof: 0
end

defmodule Google.Cloud.Aiplatform.V1.GenerationConfig.ThinkingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :include_thoughts, 1,
    proto3_optional: true,
    type: :bool,
    json_name: "includeThoughts",
    deprecated: false

  field :thinking_budget, 3,
    proto3_optional: true,
    type: :int32,
    json_name: "thinkingBudget",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.GenerationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :temperature, 1, proto3_optional: true, type: :float, deprecated: false
  field :top_p, 2, proto3_optional: true, type: :float, json_name: "topP", deprecated: false
  field :top_k, 3, proto3_optional: true, type: :float, json_name: "topK", deprecated: false

  field :candidate_count, 4,
    proto3_optional: true,
    type: :int32,
    json_name: "candidateCount",
    deprecated: false

  field :max_output_tokens, 5,
    proto3_optional: true,
    type: :int32,
    json_name: "maxOutputTokens",
    deprecated: false

  field :stop_sequences, 6,
    repeated: true,
    type: :string,
    json_name: "stopSequences",
    deprecated: false

  field :response_logprobs, 18,
    proto3_optional: true,
    type: :bool,
    json_name: "responseLogprobs",
    deprecated: false

  field :logprobs, 7, proto3_optional: true, type: :int32, deprecated: false

  field :presence_penalty, 8,
    proto3_optional: true,
    type: :float,
    json_name: "presencePenalty",
    deprecated: false

  field :frequency_penalty, 9,
    proto3_optional: true,
    type: :float,
    json_name: "frequencyPenalty",
    deprecated: false

  field :seed, 12, proto3_optional: true, type: :int32, deprecated: false
  field :response_mime_type, 13, type: :string, json_name: "responseMimeType", deprecated: false

  field :response_schema, 16,
    proto3_optional: true,
    type: Google.Cloud.Aiplatform.V1.Schema,
    json_name: "responseSchema",
    deprecated: false

  field :response_json_schema, 28,
    proto3_optional: true,
    type: Google.Protobuf.Value,
    json_name: "responseJsonSchema",
    deprecated: false

  field :routing_config, 17,
    proto3_optional: true,
    type: Google.Cloud.Aiplatform.V1.GenerationConfig.RoutingConfig,
    json_name: "routingConfig",
    deprecated: false

  field :thinking_config, 25,
    type: Google.Cloud.Aiplatform.V1.GenerationConfig.ThinkingConfig,
    json_name: "thinkingConfig",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.SafetySetting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :category, 1, type: Google.Cloud.Aiplatform.V1.HarmCategory, enum: true, deprecated: false

  field :threshold, 2,
    type: Google.Cloud.Aiplatform.V1.SafetySetting.HarmBlockThreshold,
    enum: true,
    deprecated: false

  field :method, 4,
    type: Google.Cloud.Aiplatform.V1.SafetySetting.HarmBlockMethod,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.SafetyRating do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :category, 1, type: Google.Cloud.Aiplatform.V1.HarmCategory, enum: true, deprecated: false

  field :probability, 2,
    type: Google.Cloud.Aiplatform.V1.SafetyRating.HarmProbability,
    enum: true,
    deprecated: false

  field :probability_score, 5, type: :float, json_name: "probabilityScore", deprecated: false

  field :severity, 6,
    type: Google.Cloud.Aiplatform.V1.SafetyRating.HarmSeverity,
    enum: true,
    deprecated: false

  field :severity_score, 7, type: :float, json_name: "severityScore", deprecated: false
  field :blocked, 3, type: :bool, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.CitationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :citations, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.Citation,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.Citation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :start_index, 1, type: :int32, json_name: "startIndex", deprecated: false
  field :end_index, 2, type: :int32, json_name: "endIndex", deprecated: false
  field :uri, 3, type: :string, deprecated: false
  field :title, 4, type: :string, deprecated: false
  field :license, 5, type: :string, deprecated: false

  field :publication_date, 6,
    type: Google.Type.Date,
    json_name: "publicationDate",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.Candidate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :index, 1, type: :int32, deprecated: false
  field :content, 2, type: Google.Cloud.Aiplatform.V1.Content, deprecated: false
  field :score, 8, type: :double, deprecated: false
  field :avg_logprobs, 9, type: :double, json_name: "avgLogprobs", deprecated: false

  field :logprobs_result, 10,
    type: Google.Cloud.Aiplatform.V1.LogprobsResult,
    json_name: "logprobsResult",
    deprecated: false

  field :finish_reason, 3,
    type: Google.Cloud.Aiplatform.V1.Candidate.FinishReason,
    json_name: "finishReason",
    enum: true,
    deprecated: false

  field :safety_ratings, 4,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.SafetyRating,
    json_name: "safetyRatings",
    deprecated: false

  field :finish_message, 5,
    proto3_optional: true,
    type: :string,
    json_name: "finishMessage",
    deprecated: false

  field :citation_metadata, 6,
    type: Google.Cloud.Aiplatform.V1.CitationMetadata,
    json_name: "citationMetadata",
    deprecated: false

  field :grounding_metadata, 7,
    type: Google.Cloud.Aiplatform.V1.GroundingMetadata,
    json_name: "groundingMetadata",
    deprecated: false

  field :url_context_metadata, 11,
    type: Google.Cloud.Aiplatform.V1.UrlContextMetadata,
    json_name: "urlContextMetadata",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.UrlContextMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :url_metadata, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.UrlMetadata,
    json_name: "urlMetadata",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.UrlMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :retrieved_url, 1, type: :string, json_name: "retrievedUrl"

  field :url_retrieval_status, 2,
    type: Google.Cloud.Aiplatform.V1.UrlMetadata.UrlRetrievalStatus,
    json_name: "urlRetrievalStatus",
    enum: true
end

defmodule Google.Cloud.Aiplatform.V1.LogprobsResult.Candidate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :token, 1, proto3_optional: true, type: :string
  field :token_id, 3, proto3_optional: true, type: :int32, json_name: "tokenId"
  field :log_probability, 2, proto3_optional: true, type: :float, json_name: "logProbability"
end

defmodule Google.Cloud.Aiplatform.V1.LogprobsResult.TopCandidates do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :candidates, 1, repeated: true, type: Google.Cloud.Aiplatform.V1.LogprobsResult.Candidate
end

defmodule Google.Cloud.Aiplatform.V1.LogprobsResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :top_candidates, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.LogprobsResult.TopCandidates,
    json_name: "topCandidates"

  field :chosen_candidates, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.LogprobsResult.Candidate,
    json_name: "chosenCandidates"
end

defmodule Google.Cloud.Aiplatform.V1.Segment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :part_index, 1, type: :int32, json_name: "partIndex", deprecated: false
  field :start_index, 2, type: :int32, json_name: "startIndex", deprecated: false
  field :end_index, 3, type: :int32, json_name: "endIndex", deprecated: false
  field :text, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.GroundingChunk.Web do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :uri, 1, proto3_optional: true, type: :string
  field :title, 2, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.GroundingChunk.RetrievedContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :context_details, 0

  field :rag_chunk, 4, type: Google.Cloud.Aiplatform.V1.RagChunk, json_name: "ragChunk", oneof: 0
  field :uri, 1, proto3_optional: true, type: :string
  field :title, 2, proto3_optional: true, type: :string
  field :text, 3, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.GroundingChunk do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :chunk_type, 0

  field :web, 1, type: Google.Cloud.Aiplatform.V1.GroundingChunk.Web, oneof: 0

  field :retrieved_context, 2,
    type: Google.Cloud.Aiplatform.V1.GroundingChunk.RetrievedContext,
    json_name: "retrievedContext",
    oneof: 0
end

defmodule Google.Cloud.Aiplatform.V1.GroundingSupport do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :segment, 1, proto3_optional: true, type: Google.Cloud.Aiplatform.V1.Segment

  field :grounding_chunk_indices, 2,
    repeated: true,
    type: :int32,
    json_name: "groundingChunkIndices"

  field :confidence_scores, 3, repeated: true, type: :float, json_name: "confidenceScores"
end

defmodule Google.Cloud.Aiplatform.V1.GroundingMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :web_search_queries, 1,
    repeated: true,
    type: :string,
    json_name: "webSearchQueries",
    deprecated: false

  field :search_entry_point, 4,
    proto3_optional: true,
    type: Google.Cloud.Aiplatform.V1.SearchEntryPoint,
    json_name: "searchEntryPoint",
    deprecated: false

  field :grounding_chunks, 5,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.GroundingChunk,
    json_name: "groundingChunks"

  field :grounding_supports, 6,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.GroundingSupport,
    json_name: "groundingSupports",
    deprecated: false

  field :retrieval_metadata, 7,
    proto3_optional: true,
    type: Google.Cloud.Aiplatform.V1.RetrievalMetadata,
    json_name: "retrievalMetadata",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.SearchEntryPoint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :rendered_content, 1, type: :string, json_name: "renderedContent", deprecated: false
  field :sdk_blob, 2, type: :bytes, json_name: "sdkBlob", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.RetrievalMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :google_search_dynamic_retrieval_score, 2,
    type: :float,
    json_name: "googleSearchDynamicRetrievalScore",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ModalityTokenCount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :modality, 1, type: Google.Cloud.Aiplatform.V1.Modality, enum: true
  field :token_count, 2, type: :int32, json_name: "tokenCount"
end
