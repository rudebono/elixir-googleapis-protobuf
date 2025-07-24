defmodule Google.Ai.Generativelanguage.V1alpha.GenerateTextRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :model, 1, type: :string, deprecated: false
  field :prompt, 2, type: Google.Ai.Generativelanguage.V1alpha.TextPrompt, deprecated: false
  field :temperature, 3, proto3_optional: true, type: :float, deprecated: false

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

  field :top_p, 6, proto3_optional: true, type: :float, json_name: "topP", deprecated: false
  field :top_k, 7, proto3_optional: true, type: :int32, json_name: "topK", deprecated: false

  field :safety_settings, 8,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1alpha.SafetySetting,
    json_name: "safetySettings",
    deprecated: false

  field :stop_sequences, 9, repeated: true, type: :string, json_name: "stopSequences"
end

defmodule Google.Ai.Generativelanguage.V1alpha.GenerateTextResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :candidates, 1, repeated: true, type: Google.Ai.Generativelanguage.V1alpha.TextCompletion
  field :filters, 3, repeated: true, type: Google.Ai.Generativelanguage.V1alpha.ContentFilter

  field :safety_feedback, 4,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1alpha.SafetyFeedback,
    json_name: "safetyFeedback"
end

defmodule Google.Ai.Generativelanguage.V1alpha.TextPrompt do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :text, 1, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.TextCompletion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :output, 1, type: :string, deprecated: false

  field :safety_ratings, 2,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1alpha.SafetyRating,
    json_name: "safetyRatings"

  field :citation_metadata, 3,
    proto3_optional: true,
    type: Google.Ai.Generativelanguage.V1alpha.CitationMetadata,
    json_name: "citationMetadata",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.EmbedTextRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :model, 1, type: :string, deprecated: false
  field :text, 2, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.EmbedTextResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :embedding, 1,
    proto3_optional: true,
    type: Google.Ai.Generativelanguage.V1alpha.Embedding,
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.BatchEmbedTextRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :model, 1, type: :string, deprecated: false
  field :texts, 2, repeated: true, type: :string, deprecated: false

  field :requests, 3,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1alpha.EmbedTextRequest,
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.BatchEmbedTextResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :embeddings, 1,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1alpha.Embedding,
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.Embedding do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :value, 1, repeated: true, type: :float
end

defmodule Google.Ai.Generativelanguage.V1alpha.CountTextTokensRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :model, 1, type: :string, deprecated: false
  field :prompt, 2, type: Google.Ai.Generativelanguage.V1alpha.TextPrompt, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.CountTextTokensResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :token_count, 1, type: :int32, json_name: "tokenCount"
end

defmodule Google.Ai.Generativelanguage.V1alpha.TextService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ai.generativelanguage.v1alpha.TextService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GenerateText,
      Google.Ai.Generativelanguage.V1alpha.GenerateTextRequest,
      Google.Ai.Generativelanguage.V1alpha.GenerateTextResponse

  rpc :EmbedText,
      Google.Ai.Generativelanguage.V1alpha.EmbedTextRequest,
      Google.Ai.Generativelanguage.V1alpha.EmbedTextResponse

  rpc :BatchEmbedText,
      Google.Ai.Generativelanguage.V1alpha.BatchEmbedTextRequest,
      Google.Ai.Generativelanguage.V1alpha.BatchEmbedTextResponse

  rpc :CountTextTokens,
      Google.Ai.Generativelanguage.V1alpha.CountTextTokensRequest,
      Google.Ai.Generativelanguage.V1alpha.CountTextTokensResponse
end

defmodule Google.Ai.Generativelanguage.V1alpha.TextService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ai.Generativelanguage.V1alpha.TextService.Service
end
