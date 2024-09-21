defmodule Google.Ai.Generativelanguage.V1beta3.GenerateTextRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :model, 1, type: :string, deprecated: false
  field :prompt, 2, type: Google.Ai.Generativelanguage.V1beta3.TextPrompt, deprecated: false
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
    type: Google.Ai.Generativelanguage.V1beta3.SafetySetting,
    json_name: "safetySettings"

  field :stop_sequences, 9, repeated: true, type: :string, json_name: "stopSequences"
end

defmodule Google.Ai.Generativelanguage.V1beta3.GenerateTextResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :candidates, 1, repeated: true, type: Google.Ai.Generativelanguage.V1beta3.TextCompletion
  field :filters, 3, repeated: true, type: Google.Ai.Generativelanguage.V1beta3.ContentFilter

  field :safety_feedback, 4,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta3.SafetyFeedback,
    json_name: "safetyFeedback"
end

defmodule Google.Ai.Generativelanguage.V1beta3.TextPrompt do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :text, 1, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta3.TextCompletion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :output, 1, type: :string, deprecated: false

  field :safety_ratings, 2,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta3.SafetyRating,
    json_name: "safetyRatings"

  field :citation_metadata, 3,
    proto3_optional: true,
    type: Google.Ai.Generativelanguage.V1beta3.CitationMetadata,
    json_name: "citationMetadata",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta3.EmbedTextRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :model, 1, type: :string, deprecated: false
  field :text, 2, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta3.EmbedTextResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :embedding, 1,
    proto3_optional: true,
    type: Google.Ai.Generativelanguage.V1beta3.Embedding,
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta3.BatchEmbedTextRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :model, 1, type: :string, deprecated: false
  field :texts, 2, repeated: true, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta3.BatchEmbedTextResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :embeddings, 1,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta3.Embedding,
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta3.Embedding do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :value, 1, repeated: true, type: :float
end

defmodule Google.Ai.Generativelanguage.V1beta3.CountTextTokensRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :model, 1, type: :string, deprecated: false
  field :prompt, 2, type: Google.Ai.Generativelanguage.V1beta3.TextPrompt, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta3.CountTextTokensResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :token_count, 1, type: :int32, json_name: "tokenCount"
end

defmodule Google.Ai.Generativelanguage.V1beta3.TextService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ai.generativelanguage.v1beta3.TextService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :GenerateText,
      Google.Ai.Generativelanguage.V1beta3.GenerateTextRequest,
      Google.Ai.Generativelanguage.V1beta3.GenerateTextResponse

  rpc :EmbedText,
      Google.Ai.Generativelanguage.V1beta3.EmbedTextRequest,
      Google.Ai.Generativelanguage.V1beta3.EmbedTextResponse

  rpc :BatchEmbedText,
      Google.Ai.Generativelanguage.V1beta3.BatchEmbedTextRequest,
      Google.Ai.Generativelanguage.V1beta3.BatchEmbedTextResponse

  rpc :CountTextTokens,
      Google.Ai.Generativelanguage.V1beta3.CountTextTokensRequest,
      Google.Ai.Generativelanguage.V1beta3.CountTextTokensResponse
end

defmodule Google.Ai.Generativelanguage.V1beta3.TextService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ai.Generativelanguage.V1beta3.TextService.Service
end