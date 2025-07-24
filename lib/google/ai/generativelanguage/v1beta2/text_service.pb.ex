defmodule Google.Ai.Generativelanguage.V1beta2.GenerateTextRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :model, 1, type: :string, deprecated: false
  field :prompt, 2, type: Google.Ai.Generativelanguage.V1beta2.TextPrompt, deprecated: false
  field :temperature, 3, proto3_optional: true, type: :float
  field :candidate_count, 4, proto3_optional: true, type: :int32, json_name: "candidateCount"
  field :max_output_tokens, 5, proto3_optional: true, type: :int32, json_name: "maxOutputTokens"
  field :top_p, 6, proto3_optional: true, type: :float, json_name: "topP"
  field :top_k, 7, proto3_optional: true, type: :int32, json_name: "topK"

  field :safety_settings, 8,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta2.SafetySetting,
    json_name: "safetySettings"

  field :stop_sequences, 9, repeated: true, type: :string, json_name: "stopSequences"
end

defmodule Google.Ai.Generativelanguage.V1beta2.GenerateTextResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :candidates, 1, repeated: true, type: Google.Ai.Generativelanguage.V1beta2.TextCompletion
  field :filters, 3, repeated: true, type: Google.Ai.Generativelanguage.V1beta2.ContentFilter

  field :safety_feedback, 4,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta2.SafetyFeedback,
    json_name: "safetyFeedback"
end

defmodule Google.Ai.Generativelanguage.V1beta2.TextPrompt do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :text, 1, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta2.TextCompletion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :output, 1, type: :string, deprecated: false

  field :safety_ratings, 2,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta2.SafetyRating,
    json_name: "safetyRatings"

  field :citation_metadata, 3,
    proto3_optional: true,
    type: Google.Ai.Generativelanguage.V1beta2.CitationMetadata,
    json_name: "citationMetadata",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta2.EmbedTextRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :model, 1, type: :string, deprecated: false
  field :text, 2, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta2.EmbedTextResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :embedding, 1,
    proto3_optional: true,
    type: Google.Ai.Generativelanguage.V1beta2.Embedding,
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta2.Embedding do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :value, 1, repeated: true, type: :float
end

defmodule Google.Ai.Generativelanguage.V1beta2.TextService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ai.generativelanguage.v1beta2.TextService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GenerateText,
      Google.Ai.Generativelanguage.V1beta2.GenerateTextRequest,
      Google.Ai.Generativelanguage.V1beta2.GenerateTextResponse

  rpc :EmbedText,
      Google.Ai.Generativelanguage.V1beta2.EmbedTextRequest,
      Google.Ai.Generativelanguage.V1beta2.EmbedTextResponse
end

defmodule Google.Ai.Generativelanguage.V1beta2.TextService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ai.Generativelanguage.V1beta2.TextService.Service
end
