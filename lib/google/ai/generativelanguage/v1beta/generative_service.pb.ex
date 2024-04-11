defmodule Google.Ai.Generativelanguage.V1beta.TaskType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TASK_TYPE_UNSPECIFIED, 0
  field :RETRIEVAL_QUERY, 1
  field :RETRIEVAL_DOCUMENT, 2
  field :SEMANTIC_SIMILARITY, 3
  field :CLASSIFICATION, 4
  field :CLUSTERING, 5
  field :QUESTION_ANSWERING, 6
  field :FACT_VERIFICATION, 7
end

defmodule Google.Ai.Generativelanguage.V1beta.GenerateContentResponse.PromptFeedback.BlockReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :BLOCK_REASON_UNSPECIFIED, 0
  field :SAFETY, 1
  field :OTHER, 2
end

defmodule Google.Ai.Generativelanguage.V1beta.Candidate.FinishReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :FINISH_REASON_UNSPECIFIED, 0
  field :STOP, 1
  field :MAX_TOKENS, 2
  field :SAFETY, 3
  field :RECITATION, 4
  field :OTHER, 5
end

defmodule Google.Ai.Generativelanguage.V1beta.GenerateAnswerRequest.AnswerStyle do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ANSWER_STYLE_UNSPECIFIED, 0
  field :ABSTRACTIVE, 1
  field :EXTRACTIVE, 2
  field :VERBOSE, 3
end

defmodule Google.Ai.Generativelanguage.V1beta.GenerateAnswerResponse.InputFeedback.BlockReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :BLOCK_REASON_UNSPECIFIED, 0
  field :SAFETY, 1
  field :OTHER, 2
end

defmodule Google.Ai.Generativelanguage.V1beta.GenerateContentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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
end

defmodule Google.Ai.Generativelanguage.V1beta.GenerationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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
end

defmodule Google.Ai.Generativelanguage.V1beta.SemanticRetrieverConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

defmodule Google.Ai.Generativelanguage.V1beta.GenerateContentResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :candidates, 1, repeated: true, type: Google.Ai.Generativelanguage.V1beta.Candidate

  field :prompt_feedback, 2,
    type: Google.Ai.Generativelanguage.V1beta.GenerateContentResponse.PromptFeedback,
    json_name: "promptFeedback"
end

defmodule Google.Ai.Generativelanguage.V1beta.Candidate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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
end

defmodule Google.Ai.Generativelanguage.V1beta.AttributionSourceId.GroundingPassageId do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :passage_id, 1, type: :string, json_name: "passageId", deprecated: false
  field :part_index, 2, type: :int32, json_name: "partIndex", deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.AttributionSourceId.SemanticRetrieverChunk do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :source, 1, type: :string, deprecated: false
  field :chunk, 2, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.AttributionSourceId do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :source_id, 3,
    type: Google.Ai.Generativelanguage.V1beta.AttributionSourceId,
    json_name: "sourceId",
    deprecated: false

  field :content, 2, type: Google.Ai.Generativelanguage.V1beta.Content
end

defmodule Google.Ai.Generativelanguage.V1beta.GenerateAnswerRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :values, 1, repeated: true, type: :float
end

defmodule Google.Ai.Generativelanguage.V1beta.EmbedContentResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :embedding, 1,
    type: Google.Ai.Generativelanguage.V1beta.ContentEmbedding,
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.BatchEmbedContentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :model, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.EmbedContentRequest,
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.BatchEmbedContentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :embeddings, 1,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.ContentEmbedding,
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.CountTokensRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :model, 1, type: :string, deprecated: false

  field :contents, 2,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.Content,
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.CountTokensResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :total_tokens, 1, type: :int32, json_name: "totalTokens"
end

defmodule Google.Ai.Generativelanguage.V1beta.GenerativeService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ai.generativelanguage.v1beta.GenerativeService",
    protoc_gen_elixir_version: "0.12.0"

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
end

defmodule Google.Ai.Generativelanguage.V1beta.GenerativeService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ai.Generativelanguage.V1beta.GenerativeService.Service
end