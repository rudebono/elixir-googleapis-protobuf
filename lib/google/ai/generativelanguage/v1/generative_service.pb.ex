defmodule Google.Ai.Generativelanguage.V1.TaskType do
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

defmodule Google.Ai.Generativelanguage.V1.GenerateContentResponse.PromptFeedback.BlockReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :BLOCK_REASON_UNSPECIFIED, 0
  field :SAFETY, 1
  field :OTHER, 2
  field :BLOCKLIST, 3
  field :PROHIBITED_CONTENT, 4
end

defmodule Google.Ai.Generativelanguage.V1.Candidate.FinishReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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
end

defmodule Google.Ai.Generativelanguage.V1.GenerateContentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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
end

defmodule Google.Ai.Generativelanguage.V1.GenerateContentResponse.PromptFeedback do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :prompt_token_count, 1, type: :int32, json_name: "promptTokenCount"
  field :candidates_token_count, 2, type: :int32, json_name: "candidatesTokenCount"
  field :total_token_count, 3, type: :int32, json_name: "totalTokenCount"
end

defmodule Google.Ai.Generativelanguage.V1.GenerateContentResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :candidates, 1, repeated: true, type: Google.Ai.Generativelanguage.V1.Candidate

  field :prompt_feedback, 2,
    type: Google.Ai.Generativelanguage.V1.GenerateContentResponse.PromptFeedback,
    json_name: "promptFeedback"

  field :usage_metadata, 3,
    type: Google.Ai.Generativelanguage.V1.GenerateContentResponse.UsageMetadata,
    json_name: "usageMetadata",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1.Candidate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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
end

defmodule Google.Ai.Generativelanguage.V1.EmbedContentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :values, 1, repeated: true, type: :float
end

defmodule Google.Ai.Generativelanguage.V1.EmbedContentResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :embedding, 1, type: Google.Ai.Generativelanguage.V1.ContentEmbedding, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1.BatchEmbedContentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :model, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1.EmbedContentRequest,
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1.BatchEmbedContentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :embeddings, 1,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1.ContentEmbedding,
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1.CountTokensRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :total_tokens, 1, type: :int32, json_name: "totalTokens"
end

defmodule Google.Ai.Generativelanguage.V1.GenerativeService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ai.generativelanguage.v1.GenerativeService",
    protoc_gen_elixir_version: "0.12.0"

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